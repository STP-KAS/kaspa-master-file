#!/usr/bin/env python3
"""Pin DISCLAIMER.md and the standard GitHub README footer on every STP-KAS repo."""

from __future__ import annotations

import base64
import json
import subprocess
import sys
import time
import urllib.parse

OWNER = "STP-KAS"
COMMIT_MSG = (
    "disclaimer: standard GitHub disclaimer, not the repo topic. "
    "Experimental only. Not a product. Do not use wallet integrations on this GitHub."
)

DISCLAIMER = """# Disclaimer

**Experimental only. Not a product.**

Someone posts a Kaspa GitHub link and says it shipped. Open the link.

Does it show a proposal, a development branch, a release, or an activation announcement?

Then check the software you use. If the feature needs wallet support, a node release alone will not put it in your wallet.

Do not use wallet integrations on this GitHub. STP remains a clown. This is a delusional desk, not a wallet kit. Kasware, Kastle, and any in-page inject here are withdrawn. Do not clone them. Do not install them. Pay with a QR code, a `kaspa:` URI, or paste a txid. Never a seed.

## Standard GitHub disclaimer

Standard disclaimer. This GitHub, not the topic above.

Intentions are good; thought process is questionable. STP remains delusional. Si vis pacem, para bellum.

Intern at https://sixpack.wtf/  
X: https://x.com/StppStp · GitHub: https://github.com/STP-KAS
"""

BANNER = (
    "> **Experimental only. Not a product.**\n"
    ">\n"
    "> Do not use wallet integrations on this GitHub. STP remains a clown. "
    "[DISCLAIMER.md](DISCLAIMER.md)\n\n"
)

FOOTER = """\
---

> **Standard disclaimer.** This GitHub, not the topic above.
>
> Intentions are good; thought process is questionable. STP remains delusional. Si vis pacem, para bellum.
>
> Intern at https://sixpack.wtf/  
> X: https://x.com/StppStp · GitHub: https://github.com/STP-KAS
"""

README_CANDIDATES = ("README.md", "README", "readme.md", "Readme.md")


def gh_api(path: str, method: str = "GET", body: dict | None = None) -> tuple[int, object]:
    cmd = ["gh", "api", "-X", method, path]
    if body is not None:
        cmd.extend(["--input", "-"])
    proc = subprocess.run(
        cmd,
        input=json.dumps(body) if body is not None else None,
        capture_output=True,
        text=True,
        encoding="utf-8",
    )
    if proc.returncode != 0:
        err = (proc.stderr or proc.stdout or "").strip()
        try:
            parsed = json.loads(proc.stdout or proc.stderr or "")
            status = int(parsed.get("status", 1))
            return status, parsed
        except Exception:
            return proc.returncode, {"message": err or "gh api failed"}
    if not proc.stdout.strip():
        return 200, {}
    try:
        return 200, json.loads(proc.stdout)
    except json.JSONDecodeError:
        return 200, proc.stdout


def gh_paginate(path: str) -> list:
    proc = subprocess.run(
        ["gh", "api", "--paginate", path],
        capture_output=True,
        text=True,
        encoding="utf-8",
        check=False,
    )
    if proc.returncode != 0:
        raise RuntimeError(proc.stderr or proc.stdout)
    text = proc.stdout.strip()
    if not text:
        return []
    try:
        data = json.loads(text)
        return data if isinstance(data, list) else [data]
    except json.JSONDecodeError:
        chunks = []
        decoder = json.JSONDecoder()
        idx = 0
        while idx < len(text):
            while idx < len(text) and text[idx].isspace():
                idx += 1
            if idx >= len(text):
                break
            obj, end = decoder.raw_decode(text, idx)
            chunks.extend(obj if isinstance(obj, list) else [obj])
            idx = end
        return chunks


def b64_text(text: str) -> str:
    return base64.b64encode(text.encode("utf-8")).decode("ascii")


def decode_content(data: dict) -> str:
    raw = (data.get("content") or "").replace("\n", "")
    return base64.b64decode(raw).decode("utf-8")


def put_file(repo: str, path: str, content: str, branch: str, sha: str | None) -> bool:
    body = {
        "message": COMMIT_MSG,
        "content": b64_text(content if content.endswith("\n") else content + "\n"),
        "branch": branch,
    }
    if sha:
        body["sha"] = sha
    encoded_path = urllib.parse.quote(path)
    status, data = gh_api(f"repos/{OWNER}/{repo}/contents/{encoded_path}", "PUT", body)
    if status in (200, 201):
        return True
    if status == 409 and sha:
        status2, data2 = gh_api(f"repos/{OWNER}/{repo}/contents/{encoded_path}?ref={urllib.parse.quote(branch)}")
        if status2 == 200 and isinstance(data2, dict) and data2.get("sha"):
            body["sha"] = data2["sha"]
            status3, _ = gh_api(f"repos/{OWNER}/{repo}/contents/{encoded_path}", "PUT", body)
            return status3 in (200, 201)
    print(f"  FAIL put {path}: {status} {data}", file=sys.stderr)
    return False


def get_file(repo: str, path: str, branch: str) -> dict | None:
    encoded_path = urllib.parse.quote(path)
    status, data = gh_api(
        f"repos/{OWNER}/{repo}/contents/{encoded_path}?ref={urllib.parse.quote(branch)}"
    )
    if status == 200 and isinstance(data, dict) and data.get("type") == "file":
        return data
    return None


def find_readme(repo: str, branch: str) -> tuple[str, dict] | tuple[None, None]:
    for name in README_CANDIDATES:
        data = get_file(repo, name, branch)
        if data:
            return name, data
    return None, None


def normalize(text: str) -> str:
    return text.replace("\r\n", "\n").rstrip() + "\n"


def ensure_banner(text: str) -> str:
    if "Experimental only. Not a product" in text:
        return text
    return BANNER + text.lstrip()


def strip_old_intern_tail(text: str) -> str:
    markers = (
        "\n## Standard GitHub disclaimer",
        "\n> **Standard disclaimer.**",
        "\n**Standard disclaimer.**",
        "\nStandard disclaimer. This GitHub",
        "\nIntentions are good; thought process is questionable.",
        "\n> Intentions are good; thought process is questionable.",
    )
    cut = None
    for marker in markers:
        idx = text.find(marker)
        if idx != -1:
            cut = idx if cut is None else min(cut, idx)
    if cut is None:
        return text.rstrip()
    head = text[:cut].rstrip()
    if head.endswith("---"):
        head = head[:-3].rstrip()
    return head


def ensure_footer(text: str) -> str:
    if "This GitHub, not the topic above" in text:
        return text
    head = strip_old_intern_tail(text)
    if head.endswith("---"):
        head = head[:-3].rstrip()
    return head + "\n\n" + FOOTER


def pin_repo(name: str, default_branch: str | None) -> dict:
    branch = default_branch or "main"
    result = {"repo": name, "branch": branch, "disclaimer": "skip", "readme": "skip"}

    disc = get_file(name, "DISCLAIMER.md", branch)
    want = normalize(DISCLAIMER)
    if disc is None:
        ok = put_file(name, "DISCLAIMER.md", want, branch, None)
        result["disclaimer"] = "created" if ok else "fail"
        if not ok:
            return result
        time.sleep(0.2)
        disc = get_file(name, "DISCLAIMER.md", branch)
    else:
        current = normalize(decode_content(disc))
        if current != want:
            ok = put_file(name, "DISCLAIMER.md", want, branch, disc.get("sha"))
            result["disclaimer"] = "updated" if ok else "fail"
        else:
            result["disclaimer"] = "ok"

    readme_name, readme = find_readme(name, branch)
    if readme is None:
        content = ensure_footer(ensure_banner(""))
        ok = put_file(name, "README.md", normalize(content), branch, None)
        result["readme"] = "created" if ok else "fail"
        return result

    original = decode_content(readme)
    updated = ensure_footer(ensure_banner(original))
    if normalize(updated) != normalize(original):
        ok = put_file(name, readme_name, normalize(updated), branch, readme.get("sha"))
        result["readme"] = "updated" if ok else "fail"
    else:
        result["readme"] = "ok"
    return result


def main() -> int:
    repos = gh_paginate("user/repos?per_page=100&affiliation=owner")
    owned = [
        r
        for r in repos
        if r.get("owner", {}).get("login") == OWNER and not r.get("archived")
    ]
    print(f"Pinning {len(owned)} STP-KAS repos")
    failed = 0
    for repo in owned:
        name = repo["name"]
        print(f"Pin {OWNER}/{name}")
        try:
            info = pin_repo(name, repo.get("default_branch"))
        except Exception as exc:
            print(f"  FAIL {exc}", file=sys.stderr)
            failed += 1
            continue
        print(f"  DISCLAIMER.md={info['disclaimer']} README={info['readme']}")
        if info["disclaimer"] == "fail" or info["readme"] == "fail":
            failed += 1
        time.sleep(0.15)
    print(f"Done. failures={failed}")
    return 1 if failed else 0


if __name__ == "__main__":
    sys.exit(main())

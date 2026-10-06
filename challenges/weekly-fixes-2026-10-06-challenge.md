# Challenge: master/weekly-fixes-2026-10-06 (kaspa-master-file)

- Reviewed tip: `8deb9311c02be121221e918bd2ea0161c7d97c7d` (live after `git fetch`, 6 Oct ~08:04 CEST). Parent: `2522068e3981…` (master/sweep-2026-10-06 tip), confirmed with `git log --format=%P`. Scope: `2522068..8deb931` only (one commit).
- Files: README.md, master.json, SNAPSHOT-HISTORY.md, scripts/probe-nodes.ps1 (+8/−7).
- Weekly reference: `ff2330a` on `challenge/weekly-main-2026-10-05`.
- **Totals: 8 HELD, 0 FAILED, 0 UNVERIFIABLE.** W-F3 and W-F4 still OPEN (out of scope).

## Process

1. HELD: single commit `8deb931`, parent `2522068`; author + committer `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`.
2. HELD: master.json parses, canonical (indent 2, `ensure_ascii=False`, trailing newline), 0 `\u`, `updated` `2026-10-06`.
3. HELD: leak / private-name scan of the diff against the live private list (15 names from `gh repo list STP-KAS --limit 300 --json name,visibility`): only the six approved names appear, and only in rewritten lines (+2/−2 each, unchanged text). No new private name. New STP-KAS link only to public kaspa-builders. No email, home path, key, or private-repo name beyond the approved six.

## Weekly items

4. HELD (W-F2 closed): README L67 "STP-KAS owns **110** repos (6 Oct 08:01 CEST live count, `gh repo list STP-KAS`): **95 public + 15 private**. Older counts (2 Oct: 95, 85 public + 10 private)… nine more stay off this board. `kns-kasware-tn10-test` is public." master.json L219 "21 Sep evening receipt: 52 public repos and 2 private (…); kns-kasware-tn10-test has since gone public (gh api, 6 Oct)" and "6 Oct 2026 live count (08:01 CEST): 110 repos, 95 public and 15 private". Recheck 08:04 CEST: `gh repo list STP-KAS --limit 300 --json name,visibility` → 110 total, PUBLIC 95, PRIVATE 15; `gh api users/STP-KAS --jq .public_repos` → 95; `gh api repos/STP-KAS/kns-kasware-tn10-test --jq .visibility` → `public`. 15 − 6 = 9 holds. Matches the W-F2 fix wording.
5. HELD (W-F6 closed): master.json L2089 `"url": ""`, L2091 "Dead: https://docs.agenc.tech returns 410 Gone as of 6 Oct 2026 (also 410 on 5 Oct); agenc.tech itself still answers 200." Three cache-busted `curl https://docs.agenc.tech/?cb=…` at ~08:05 CEST → 410, 410, 410; `https://agenc.tech` → 200.
6. HELD (W-F8 closed): README L66 now "The author's repo is tracked in kaspa-builders: `entries/olafweller-kpi.md` at [STP-KAS/kaspa-builders]"; the repo description ("Public GitHub …; compares …") is gone from README L66, and master.json L213 drops the repo URL (0 hits for "compares" / `olafweller/kaspa-privacy-initiative`). Target checked: `entries/olafweller-kpi.md` exists on kaspa-builders main `7f12329` ("# Privacy initiative (KPI): olafweller/kaspa-privacy-initiative"; "GitHub user `olafweller`"; "Opened on Kas-Smiths topic 156"). `https://kas-smiths.org/t/156.json` → title "Kaspa Privacy Initiative: exploring optional privacy for native KAS", `created_by` `olafweller`, 2026-10-02T14:43:33Z. Right target. Topic 156 stat kept.
7. HELD (W-F10 closed): scripts/probe-nodes.ps1 L46 now `authority = 'When kaspa-master-file is named, use tn10 bot (TN10). kaspa bot (mainnet) retired 25 Sep 2026. Read-only node status: TN10 watch. Do not ask. No seeds.'`. kaspa bot is no longer named as an authority; still a valid single-quoted PowerShell string (no embedded `'`). Consistent with L35 and AGENTS.md (retired 25 Sep).
8. HELD: SNAPSHOT-HISTORY L11 row `2026-10-06 08:02` sits above `07:55`; newest first; text matches the diff (W-F2 count, W-F6 410, W-F8 pointer, W-F10, W-F3/W-F4 left).

## Still open (not scored)

- **W-F3** (17 SNAPSHOT links to a now-private repo): stp's call. OPEN.
- **W-F4** (DESK-BOT.md TN10 status): TN10 ops. OPEN.

## Advisories (do not block)

- WF-A1: SNAPSHOT L11 commit cell is "(this commit)"; it is common on main, but add a link commit to `8deb931` the way `3a9903d` linked `0aef9a2`.
- WF-A2: W-F10's suggested wording also said "public REST for mainnet"; the new line drops mainnet guidance. Fine since mainnet node work is retired; add it only if wanted.

## Overlap

- Stacked on master/sweep-2026-10-06 (`2522068`); shares README L66 (W-F7 + W-F8 on the same Kas-Smiths row) and L67 with it, with no conflict because it is a child commit.
- With build/2026-10-05 (live tip `adb4934`, main merged): a trial merge onto `8deb931` conflicts textually only at README L81–L82 (adjacent rows) and SNAPSHOT L11 (top inserts); master.json auto-merges. Build does not touch L66/L67, master.json L213/L219/L2089–L2091 or probe-nodes.ps1. No contradicting facts.

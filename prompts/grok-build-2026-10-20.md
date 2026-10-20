# Prompt for Grok Build — independent analysis of the 20 Oct 2026 Kaspa daily sweep

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (sweep 20 Oct ~07:45–08:20 CEST, window from 19 Oct 05:44Z). It pushed branch `master/sweep-2026-10-20` on https://github.com/STP-KAS/kaspa-master-file and `master/builders-sweep-2026-10-20` on https://github.com/STP-KAS/kaspa-builders. Do **not** trust the report. Analyse it your own way.

## Branch for your work
Use a new `build/2026-10-20` from current `origin/main` (`f4c4db2` at sweep time; it already contains `build/2026-10-19` and `master/sweep-2026-10-19`), in a fresh clone (for example `/workspace/repos/kaspa-master-file-b20`; the shared checkout `/workspace/repos/kaspa-master-file` is in a restored, unborn-branch state). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`. Do not touch or merge the parked `build/2026-10-15`.

Branches: `master/sweep-2026-10-20`. Commits in order: `7d31835` (content), `76af3f8` (SNAPSHOT row), `d3b4e17` (first prompt commit); this prompt fix (X credit line) is the next and last commit on the branch.

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-20.md` on `master/sweep-2026-10-20`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, research.kas.pa, X, Facebook). No reactions, issues, PRs, tags or releases, on any repo, including STP-KAS ones. A new sourced fact goes into the master file and stops there.
- **No cargo or builds of any kind** (stp's ban stands). Do not touch TN10 processes (TN10 ops owns them). Delete nothing.
- **Master is core-only (stp, 4 Oct 2026).** Third-party projects (x402, KPI, KasperoLabs, KaChat, kascov, Kastle, KasPass, KaspaHub, kob, …) live in STP-KAS/kaspa-builders; cite it only with its caveat (third-party, not audited, demo, not desk-tested).
- Cite a URL for every claim. Times with zone (CEST in chat; Z fine in the master), from saved server `Date` headers or API timestamps.
- No fabrication. If you cannot verify, say "not verified". Never claim an HTTP status without saved headers. Quotes character for character from saved raw. Every review/comment fact from a fully paginated read.
- Do not weld objects: kips #48 and kips #37 both use the number 22 (a number in a pull is not an assignment); kccs #37 says "Assign to KCC-3" but its head changes 0 files, and kccs #29 also asks for 3; a KIP or KCC Draft is not Active; aspectron/rusty-kaspa#186 is a closed fork draft, not a merge into kaspanet; one TN10 backend in a sample is not a pool size.
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (old cell copied verbatim to SNAPSHOT-HISTORY "Moved from README on <date>"); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; `master.json` notes plain text, absolute links, validated. Count cells per README row WITHOUT stripping code spans (escape `|` in code as `\|`); confirm with the GitHub markdown API render. Stage files by name; no global sed; never edit old SNAPSHOT rows. Do not make a moved section for sweep text that is not on main; links to sweep anchors resolve only after the sweep merges, so say so.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain merges and plain pushes of your `build/` branch only; no rebase, no `git pull --rebase`. Never force main. Push with `-c credential.helper= -c 'credential.helper=!/usr/local/bin/gh auth git-credential'` (`/usr/bin/gh` is gone).
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** (including `master/sweep-2026-10-20`).
- X: no X calls; the sweep covered X. X items only from the watch raws (`/workspace/artifacts/kaspa-master-watch/raw/2026-10-20/x/`).
- Never share seeds/keys.
- Main merges: build/ branches merge only after master bot prompt for build confirms them settled at the exact tip it names; the challenger reviews them privately.
- Do not name private STP-KAS repos in either repo (check `gh api repos/STP-KAS/<name> --jq .visibility` before linking any STP-KAS repo, plus redirect checks); run the private-name guard (`bash /home/box/.kmf-guard/run.sh <repo-dir> <rev>...`, exit 0 only) before pushing.

## Tasks
1. **KIP-22 (kips #48) vs kips #37:** read #48 at `b031344f` (`kip-0022.md`, README index line) and every page of its reviews/comments. Check the text's own claims: redeem script `<P> OP_CHECKSIG`, 32-byte x-only key, derivation `m / 22' / 111111' / …`, "No consensus changes are required", and that an ordinary spend still reveals the key. Check whether kips README on master already lists a KIP-22 and whether #37 (`cdafc967`) still claims 22. Keep "Draft, number not assigned".
2. **kccs #37:** confirm from the API and the commit list that the head `8088f5c5` changes 0 files and that no `kcc-0003.md` exists at the head; compare `kcc-xxxx.md` at `3f1740b5` with KIP-22 at `b031344f` (what differs: purpose field `XXXX'`, TODOs). Note any new commit after the 20 Oct read. Keep kccs #29's claim on 3 separate.
3. **rusty-kaspa master `4edcbbcc`:** confirm #1154, #1153, #1065 merge commits and times; from the #1153 diff, confirm the `include` change and the stated Windows MSVC `kaspa-hashes` 2.1.0 issue (no build; say "not verified" for the build failure itself). Confirm there is still no tag after v2.1.0.
4. **#1141:** a new head after `1d77a486`? Is `wallet/core/src/tx/mass.rs` handled? Read CI logs if a run exists (read only).
5. **#1152 and aspectron#186:** replies to D-Stacks on #1152, draft state; read aspectron#186's diff summary (files only) and say which D-Stacks points it claims to address. Keep "closed unmerged fork draft".
6. **#1156 (supertypo pruning):** read the diff (2 files) and say in one sentence what it changes. No build.
7. **Argent #71 / #64:** confirm the merge `5b544364` and the dependency lines (crates.io 2.1.0, silverscript 1.0.1).
8. **TN10 public API:** two rounds, recording each backend; today the watch saw only `41d9296c` (21/21). No pool size or ratio.
9. **Close watch #1147/#1146/#1150/#863:** every page; confirm nothing after `2026-10-19T05:44:00Z`.
10. **KGI after `a2660876`** and **kaspa.org/build** with saved headers (today CloudFront Hit, `Date` 19 Oct).
11. **Builders (optional):** third-party items from this window are on kaspa-builders `master/builders-sweep-2026-10-20`. Work them only on a kaspa-builders branch, with the caveat.
12. **What to test next** (TN10 only, read-only, no builds, no public posting): short ordered list.
13. Write sourced facts only to your `build/` branch. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch report — 2026-10-20

All times CEST unless marked Z. Window: GitHub since `2026-10-19T05:44:00Z`; X since the 19 Oct since_ids (core `2112050585004306646`, community `2111917511004557764`, deshe `2109964501059608710`); forum since post 416. core_replies paused.

## Added (master `master/sweep-2026-10-20`)
- **KIP-22 P2PKH via P2SH:** kips [#48](https://github.com/kaspanet/kips/pull/48) "KIP 22: Pay-to-Public-Key-Hash via P2SH" (someone235, header author Ori Newman, opened 19 Oct 11:51:56Z, head `b031344f`, 2 files +49/−0, `Status: Draft`, `Layer: Applications`). A wallet convention: P2SH address with redeem script `<P> OP_CHECKSIG`, keys at `m / 22' / 111111' / …`; "No consensus changes are required. Existing wallets can send to these addresses." 0 reviews, 0 comments. Open kips [#37](https://github.com/kaspanet/kips/pull/37) (ezrasisk, P2MR, since 6 Mar) also uses 22: a number in a pull is not an assignment. (KIPs cell)
- **Same proposal as a KCC:** kccs [#37](https://github.com/kaspanet/kccs/pull/37) (someone235, 19 Oct 15:16:38Z): first commit `3f1740b5` adds `kcc-xxxx.md` (`KCC: ?`, Draft, authors Ori Newman and Gaurav Rana); head `8088f5c5` "Assign to KCC-3" deletes it and adds nothing, so the pull changes **0 files** at its head. kccs #29 also asks for 3. Ori Newman X [2112159453373980836](https://x.com/OriNewman/status/2112159453373980836) ("Published KIP 22 …") and [2112206371630276885](https://x.com/OriNewman/status/2112206371630276885) ("Following @IzioDev's advice, I changed it to a KCC"); Hans Moog [2112208967141069303](https://x.com/hus_qy/status/2112208967141069303) ("KIP-22 isn't a "complete" post-quantum solution, but …"); IzioDev [2112173461506273584](https://x.com/IzioDev/status/2112173461506273584). Discussion: research.kas.pa [topic 545](https://research.kas.pa/t/kip-22-pay-to-public-key-hash-via-p2sh/545), Kas-Smiths [topic 163](https://kas-smiths.org/t/pay-to-public-key-hash-via-p2sh/163) (post 417, 19 Oct 15:27:18Z). (KCC-3/4/5, research.kas.pa, Kas-Smiths cells)
- **rusty-kaspa master `f7d78773` → `4edcbbcc`:** [#1154](https://github.com/kaspanet/rusty-kaspa/pull/1154) (michaelsutton, crates.io packaging; merged by IzioDev 13:08:00Z, `91888a4a`), [#1153](https://github.com/kaspanet/rusty-kaspa/pull/1153) (0xlegacydag, `.asm` include so `kaspa-hashes` builds on Windows MSVC; merged by michaelsutton 14:08:23Z, `24854ef8`; "takes effect with the next crates.io release"), [#1065](https://github.com/kaspanet/rusty-kaspa/pull/1065) (aspect, workflow-rs v0.19.0 + wRPC TLS; approved by IzioDev and biryukovmaxim; merged 15:05:13Z, 28 files +931/−696). No new tag (v2.1.0). New open [#1156](https://github.com/kaspanet/rusty-kaspa/pull/1156) (supertypo, pruning without range deletions, `cbcbc94c`); #1155 closed unmerged. (Not live cell)
- **Covenant-id index:** #1152 unchanged (draft `b58e51e4`, 10 D-Stacks review comments). biryukovmaxim opened [aspectron/rusty-kaspa#186](https://github.com/aspectron/rusty-kaspa/pull/186) (draft, base `sigma`; #1152 with D-Stacks' points addressed, `--covenantindex`) at 11:37:26Z and closed it unmerged at 12:44:43Z. A closed fork draft; the endpoint is not live. (Covenant-id lookup cell)
- **Argent:** [#71](https://github.com/argent-lang/argent/pull/71) merged by michaelsutton 13:04:09Z as `5b544364` (crates.io rusty-kaspa 2.1.0, silverscript 1.0.1); issue [#64](https://github.com/argent-lang/argent/issues/64) closed 13:04:11Z. #70 (IzioDev) open. (Argent cell)
- **TN10 public API:** 21 reads in two rounds (05:51:37Z–05:51:50Z, 06:02:42Z–06:02:50Z), all HTTP 200, Cloudflare MISS, 2.1.0, isSynced true, blueScoreDiff 0–46; **one** backend p2pId `41d9296c` (new to the file); 19 Oct's `821a1e6c` and `af0bc9c5` not seen. DAA **601404265** at 05:51:51Z. (TN10 public API cell)
- Commits: content [`7d31835`](https://github.com/STP-KAS/kaspa-master-file/commit/7d3183576ffafdeb3a59aa5b8c4f641f34abb6ad), SNAPSHOT row [`76af3f8`](https://github.com/STP-KAS/kaspa-master-file/commit/76af3f86f6f890df4548abd68811574a1b25bd35), prompt commit next.

## Added (builders `master/builders-sweep-2026-10-20`)
- Third-party items from this window: see kaspa-builders `master/builders-sweep-2026-10-20`, with its caveat.
- Commits: content [`9235c1d`](https://github.com/STP-KAS/kaspa-builders/commit/9235c1d6c452f260382b09e52b09489e652e2c89), row `a6242a4`.

## Held / unchanged
- #1141 head `1d77a486` (CHANGES_REQUESTED stands, not merged). Close watch: #1147 `239556a6` dirty, 7 comments, last 15 Oct; #1146 4 comments, last 13 Oct; #1150 `3f7d591a`; #863 `41a9f4e6`. Nothing after the marker.
- kccs main `1516a6c4`; kips master `e4ae233`; vprogs #172 open at `cc0d54bc`.
- Core tag lists (rusty-kaspa v2.1.0, kaspa-python-sdk v2.1.0, silverscript v1.0.0; vprogs, kccs, kips none) unchanged; kips added to the scan. Third-party tags: see kaspa-builders.
- Kas-Smiths 50 / 391 / 114; highest post 417.

## Skipped
- X: Sutton's DEXTools reply ("What do you need and how can I help?"), Hans Moog's front-running reply, IzioDev's "draft state = final state" reply (opinion on process), ReconProtocol Toccata thread, BankQuote essay, Kaspa_Commons, KASPAglobal relays.
- GitHub: tetsuo-ai/agenc-core and agenc-protocol (Solana), getumbrel/umbrel-apps, Magma-Devs/lava-specs, bitcoin/bips, danieliyahu1/daniel-personal-website.

## Per source
- GitHub A-Z: 98 repos (repos.txt built before the run: watchlist 81 + org/event/linked/19-Oct repos), 98 GraphQL + 725 REST page calls, **0 gaps**. Linked repos answering HTTP 404 (noted, not gaps): kaspass/kaspass, tetsuo-ai/agenc-marketplace-agent-kit, one gist path. Raw `raw/2026-10-20/az/`, cited reads `raw/2026-10-20/gh/`.
- X: free `x` namespace only, no paid X call, so $0 spent by this sweep; the start-of-run credit reading was not saved (GAP). core 12 (page 2 empty), community 8 (page 2 empty), deshe 0, 7 full texts + 4 parents; reads-left 29/30 per minute, 999/1000 per day after the first call. The 18 Oct Sutton post 2111906108600467489 now saved in `raw/2026-10-20/x/threads-fulltext.txt`.
- Kas-Smiths: about/posts/latest HTTP 200 at 05:51:21–23Z; headers saved.
- Sites: all 200 except kns-2.gitbook.io, api.kaspa.org, api-tn10 root (307). kaspa.org and /build CloudFront Hit, `Date` 19 Oct. Bodies + headers in `raw/2026-10-20/sites/`.
- Bot mail: no hand-off file found on the box since 19 Oct 07:40 (note, not a gap).

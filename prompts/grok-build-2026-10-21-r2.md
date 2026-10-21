# Prompt for Grok Build — independent analysis of the 21 Oct 2026 Kaspa extra sweep (r2)

You are Grok Build working for stp (STP-KAS). Below is the report from the kaspa master bot's extra sweep (21 Oct ~15:45–16:05 CEST, window from 21 Oct 05:36:55Z). It pushed branch `master/sweep-2026-10-21-r2` on https://github.com/STP-KAS/kaspa-master-file and `master/builders-sweep-2026-10-21-r2` on https://github.com/STP-KAS/kaspa-builders. Do **not** trust the report. Analyse it your own way.

## Branch for your work
Use a new `build/2026-10-21-r3` from current `origin/main` (`a77c6a3` at sweep time), in a fresh clone (for example `/workspace/repos/kaspa-master-file-b21r3`; do not use the shared checkout). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`.

Branches: `master/sweep-2026-10-21-r2`. Commits in order: `de0c309` (content), `a8e029f` (SNAPSHOT row), then this prompt commit (the tip). Builders: `84033b7` (content), `296ecf2` (row, tip).

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-21-r2.md` on `master/sweep-2026-10-21-r2`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, research.kas.pa, X, Facebook). No reactions, issues, PRs, tags or releases, on any repo, including STP-KAS ones. A new sourced fact goes into the master file and stops there.
- **No cargo or builds of any kind** (stp's ban stands). Do not touch TN10 processes (TN10 ops owns them). Delete nothing.
- **Master is core-only (stp, 4 Oct 2026).** Third-party projects (x402, KPI, KasperoLabs, KaChat, Kaspire, kascov, Kastle, KaspaHub, kob, …) live in STP-KAS/kaspa-builders; cite it only with its caveat (third-party, not audited, demo, not desk-tested).
- Cite a URL for every claim. Times with zone (CEST in chat; Z fine in the master), from saved server `Date` headers or API timestamps.
- No fabrication. If you cannot verify, say "not verified". Never claim an HTTP status without saved headers. Quotes character for character from saved raw. Every review/comment fact from a fully paginated read.
- Do not weld objects: three open kccs pulls ask for KCC-3 (#29, #37, #38) and none is merged; kips #48 and #37 both use 22; a KIP or KCC Draft is not Active; a post saying "KCC-20 is final on October 21" is not a status change while `kcc-0020.md` on main says Last Call; a wallet shipping a Draft derivation does not make it assigned; one TN10 backend in a sample is not a pool size.
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (old cell copied verbatim to SNAPSHOT-HISTORY "Moved from README on <date>"); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; `master.json` notes plain text, absolute links, validated. Count cells per README row WITHOUT stripping code spans (escape `|` in code as `\|`); confirm with the GitHub markdown API render. Stage files by name; no global sed; never edit old SNAPSHOT rows. Links to sweep anchors resolve only after the sweep merges, so say so.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain merges and plain pushes of your `build/` branch only; no rebase, no `git pull --rebase`. Never force main. Push with `-c credential.helper= -c 'credential.helper=!/usr/local/bin/gh auth git-credential'`.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** (including `master/sweep-2026-10-21-r2`).
- X: no X calls; the sweep covered X. X items only from the watch raws (`/workspace/artifacts/kaspa-master-watch/raw/2026-10-21-r2/x/`).
- Never share seeds/keys.
- Main merges: build/ branches merge only after master bot prompt for build confirms them settled at the exact tip it names; the challenger reviews them privately.
- Do not name private STP-KAS repos in either repo (check `gh api repos/STP-KAS/<name> --jq .visibility` before linking any STP-KAS repo, plus redirect checks); run the private-name guard (`bash /home/box/.kmf-guard/run.sh <repo-dir> <rev>...`, exit 0 only) before pushing.

## Tasks
1. **KCC Final status:** re-read `kcc-0001.md`, `kcc-0002.md`, `kcc-0020.md` on kccs main with saved headers. Confirm #40 merged as `6f271b7b` and KCC-2 says Final; confirm #39 and #41 are open with dismissed approvals (every page of reviews and timeline). Does KCC-0 §4 let KCC-20 go Final while KCC-1 is Last Call? Quote the text.
2. **kccs #38:** read every inline comment of someone235's CHANGES_REQUESTED review (06:24:02Z) and say what KCC-3 must change. Any author reply or new commit?
3. **#1152 at `0ef728a2`:** confirm the two 21 Oct force-pushes from the timeline; say what the new CLI command does (read code; "not verified" where unsure). Keep "draft, not merged".
4. **vprogs #149 / #131:** confirm hmoog's reviews; check `zk/backend/risc0/runtime-processor/Cargo.toml` at `51b56aab` for the two `branch = "master"` dev-dependencies.
5. **kcc20-reference #4 (`2f7cc78f`) and Kas-Smiths topic 164:** what does the KAS-backed example claim (one base unit = one sompi in the token UTXO)? Text read only; no builds.
6. **TN10 public API:** two rounds, recording each backend. No pool size or ratio.
7. **Builders (optional):** third-party items are on kaspa-builders `master/builders-sweep-2026-10-21-r2`; work them only on a kaspa-builders branch, with the caveat.
8. **What to test next** (TN10 only, read-only, no builds, no public posting): short ordered list.
9. Write sourced facts only to your `build/` branch. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch report — 2026-10-21 (r2, extra sweep)

All times CEST unless marked Z. Window: GitHub since `2026-10-21T05:36:55Z`; X since the morning since_ids (core `2112758765787517124`, community `2112729608432898268`, deshe `2109964501059608710`); forum since post 417; bot mail hand-offs 21 Oct 08:28 to 15:27 (8 sections). core_replies paused.

## Added (master `master/sweep-2026-10-21-r2`, from main `a77c6a3`)
- **KCC-2 is Final:** kccs [#40](https://github.com/kaspanet/kccs/pull/40) approved by saefstroem 11:31:40Z, merged 11:32:06Z as [`6f271b7b`](https://github.com/kaspanet/kccs/commit/6f271b7b378e704e5d9fca18f310b18ca7c5a05e) (kccs main). Raw `kcc-0002.md` (13:53:44Z): `Status: Final`. (KCC-0, KCC still open, KCC-3/4/5 cells; the "KCC-2 is Last Call" phrases are rewritten.)
- **KCC-1 and KCC-20 are not Final:** [#39](https://github.com/kaspanet/kccs/pull/39) and [#41](https://github.com/kaspanet/kccs/pull/41) were approved at 11:31:30Z/11:31:34Z. Manyfestation then merged main into both (12:46Z; heads `463267e7`, `51e707a8`), and the approvals were dismissed at 12:46:59Z. #39 asks for review again (13:37:15Z). Both are open; `kcc-0001.md` and `kcc-0020.md` still say `Status: Last Call`. The bot mail's "approved" for these two is out of date.
- **KCC-3:** someone235 CHANGES_REQUESTED on [#38](https://github.com/kaspanet/kccs/pull/38) at 06:24:02Z (5 inline): only show `m/3'`, not purpose 44/45; move the multisig parts to KCC-4; "avoid rejection". No author reply.
- **kcc20-reference:** #3 merged 09:31:51Z (`b7824660`), #5 .gitattributes merged 09:51:49Z (`27f8403f`, tip). #4 is now "Add KAS-backed KAS20 example" (`2f7cc78f`, +18153/−4), open, not reviewed. Kas-Smiths [topic 164](https://kas-smiths.org/t/a-kas-backed-kcc-20-token/164) (post 418, Manyfest, 11:01:10Z) proposes it as the canonical KAS-backed token. On X Michael Sutton (2112884389042332079): KCC-20 conceptually allows one transfer per tx per covenant, with a leader-delegator design; manyfest_ (2112836103086788933): a KCC20↔KRC bridge would be a third-party app with trust assumptions.
- **Covenant id:** rusty-kaspa #1152 force-pushed at 11:18:40Z (`21330df4`) and 13:18:41Z, head [`0ef728a2`](https://github.com/kaspanet/rusty-kaspa/pull/1152/commits/0ef728a2eb14020737e03d2cc7989e09b885feb1) ("feat(cli): get-utxos-by-covenant-ids command"). 45 files, +2735/−72, draft, no review. The bot mail's `21330df` is already replaced. #1157 unchanged.
- **vprogs:** [#149](https://github.com/kaspanet/vprogs/pull/149) CHANGES_REQUESTED by hmoog at 11:21:10Z: two dev-dependencies in runtime-processor still on `branch = "master"`. [#131](https://github.com/kaspanet/vprogs/pull/131) APPROVED at 12:05:23Z. Neither is merged. The vProgs row and its json note now link the public new names of the two renamed STP-KAS repos (API: public; guard passed).
- **TN10 public API:** 7 reads 13:47:13Z–13:47:19Z, all HTTP 200, synced, 2.1.0, backends `884e1eaf` (3) and `41d9296c` (4); DAA 602553612.
- **Kas-Smiths:** 51 / 392 / 114.
- Commits: content [`de0c309`](https://github.com/STP-KAS/kaspa-master-file/commit/de0c309eb684f219b041da35898fb555c61ff925), SNAPSHOT row `a8e029f`; the prompt commit is next and last.

## Added (builders `master/builders-sweep-2026-10-21-r2`, from main `bad7625`)
- Kastle v2.61.2 (#397 validation hardening) and v2.61.3 (#401 Chrome Web Store upload fix); KPI: KASPAglobal X 2112820036695974389 retells the 20 Oct operator-off test, plus elldeeone fork commit `7d63e5b6`; RossKU/kob 5 commits to `a02345f8`. Third-party, not desk-checked.
- Commits: content [`84033b7`](https://github.com/STP-KAS/kaspa-builders/commit/84033b7), row `296ecf2` (tip).

## Held / unchanged
- rusty-kaspa master `4edcbbcc`; kips #49 `7a383b9c`; kips master `e4ae233`; vprogs master `f9b84a86`, #127–#130 unchanged; research.kas.pa newest topic 545; all 11 tag lists unchanged.
- KGI: tiram88 branch `codex/api-database-binding` has 3 new commits (`38516fd9`); branch only, no pull; not added.

## Per source
- GitHub A-Z: 130 repos, 130 GraphQL + 418 REST page calls, 0 gaps. X: free `x` namespace only, $0; page 2 empty; deshe 0; no credit reading this run. Forum and TN10: headers saved. Bot mail: 8 sections, two stale claims corrected (above).
- Private-name guard: exit 0 on both tips. Pre-existing STP-KAS links in master.json that return 404: 5 lines (count only; unchanged).

## Open questions for stp
- None new. Still waiting: core_replies pause; item 13.

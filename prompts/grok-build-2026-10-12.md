# Prompt for Grok Build — independent analysis of the 12 Oct 2026 Kaspa watch findings

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (watch sweep, 12 Oct ~07:44–08:05 CEST). It updated branch `master/sweep-2026-10-12` on https://github.com/STP-KAS/kaspa-master-file and `master/builders-sweep-2026-10-12` on https://github.com/STP-KAS/kaspa-builders. Do **not** trust the report. Analyse it your own way.

## Branch for your work
Use branch **`build/2026-10-12`** (create from current `origin/main`). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`.

All 11 Oct branches (sweep, Build, pr1147, sutton-solana, kcc20-vs-krc20, silverscript-abi desk) are already on main `8f1d0d5`. The only open build branches are stale ones from 1–4 Oct; do not repeat what they hold.

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-12.md` on `master/sweep-2026-10-12`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, X, Facebook). No reactions, issues, PRs, tags or releases, on any repo, including STP-KAS ones. A new sourced fact goes into the master file and stops there.
- **Master is core-only (stp, 4 Oct 2026).** Third-party projects (KasperoLabs, kaskama/onlykas, B1TCOIN S1LVER, KaChat, DOTK, Kastle, x402, …) live in STP-KAS/kaspa-builders; cite it only with its caveat. Send third-party finds to kaspa master bot; do not add them to the master.
- Cite a URL for every claim. Record times with zone (CEST in chat; Z fine in the master). Times come from saved server `Date` headers or API timestamps, never the desk clock.
- No fabrication. If you cannot verify, say "not verified". Never claim an HTTP status without saved headers. Quotes character for character from saved raw.
- Merged Active KIP is law. An open PR, a branch, a demo, or a tweet is not. Do not weld objects (KCC-20 Last Call ≠ Final; #1147 open ≠ merged; a contributor's diagnosis ≠ maintainer-confirmed; oskrcl's node numbers ≠ desk-checked; one api-tn10 sample on 2.0.1 ≠ the 2.1.0 backends are gone; api-tn10 200 ≠ proof a payment landed; KasperoLabs mainnet ZK claim ≠ desk-verified; KGI status page ≠ a finished KGI v2).
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (short; old cell copied verbatim to SNAPSHOT-HISTORY "Moved from README on <date>"); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; `master.json` notes plain text, validated.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain push of your `build/` branches only. Never force main.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** (including `master/sweep-2026-10-12`).
- X: do not make X calls unless stp asks; the sweep covers X (credits ~$6.75 at sweep end, measured delta $0, estimate ~$0.22).
- Never share seeds/keys. TN10 never goes to a mainnet kaspa bot. Do not touch TN10 processes (TN10 ops owns them); any TN10 test is read-only or on your own wallet, never the mining address.
- Main merges: kaspa master bot merges on a challenger pass with 0 FAILED at the exact tip (stp OK not required since 8 Oct).
- Do not name private STP-KAS repos in either repo (check `gh api repos/STP-KAS/<name> --jq .visibility` before linking any STP-KAS repo).

## Standing role
Keep the master current with the kaspa master bot. Checkout for Build: `/workspace/repos/kaspa-master-file` (not the watch clone). Public posts are forbidden. Challenge before merge: any open FAILED item blocks merge until fixed or stp overrides.

## Tasks
1. **Verify** every master item in the report against live sources: TN10 health headers and backend p2pIds (today 14/14 `965d43fe`); #1147 head `b4df2d8f`, commits, files, reviews, `mergeable_state`; oskrcl 6111076516 / 6111091787 and atharaldsen 6111314427 texts; #1146 comment count; #850 D-Stacks 6111080124 and #814 (`bec82b13`, dirty); Sutton 2109247664554418250 / 2109253446788317528; Kas-Smiths about.json and topic 161 / post 412; KGI `82dcc0e6` and its status.md.
2. **api-tn10:** recheck `/info/health` (cache-busted, save headers) at least twice, an hour or more apart if you can; record **all** backend versions and p2pIds. Do not write "2.0.1-only" or "2.1.0 gone" from one sample.
3. **#1147:** read the `b4df2d8f` diff (test only?) and say whether behaviour changed vs `6c34186f`. Do not claim it fixes #1146 until a maintainer reviews or it merges. Optional, TN10 read-only: compare `getFeeEstimate` priority bucket on a synced non-mining node vs the public endpoint (n0 is TN10 ops' node — ask TN10 ops, do not touch it yourself).
4. **Sutton KCC-20 scope:** if you can read the parent posts (frank_r2d2 2109237618928230720, TrueKaspaBeliev 2109249028953157635) through the master's existing raws or a public mirror without X spend, add what "that" refers to; otherwise leave the "not read" hedge.
5. **Kas-Smiths topic 161:** if a KCC author answers, record the answer in the master's Kas-Smiths cell (core reasoning only); the game stays in builders.
6. **Builders (optional verify):** KasperoLabs posts, kaskama rename/tip `dce58809`, topic 161 — on a kaspa-builders `build/` branch if you touch builders at all.
7. **What to build or test next** (TN10 only, no public posting): short ordered list.
8. Write sourced facts only to `build/2026-10-12`. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch report — 2026-10-12

All times are CEST (Europe/Brussels, UTC+2) unless marked Z. Routine sweep ~07:44–08:05 CEST.
Window: GitHub since `2026-10-11T05:45:00Z`; X since the 11 Oct markers; forum since post 410.

## Branches (never main, never force, zero public actions)

- **kaspa-master-file `master/sweep-2026-10-12`** from `origin/main` [`8f1d0d5`](https://github.com/STP-KAS/kaspa-master-file/commit/8f1d0d5).
  Commits: content [`5036163`](https://github.com/STP-KAS/kaspa-master-file/commit/50361636467e46c9b8145e8f5d7abdb21a37672b), snapshot link [`e93bae2`](https://github.com/STP-KAS/kaspa-master-file/commit/e93bae2061e9e5e290dd6e4e7a4386b441ca5f39), then the Build prompt commit (`prompts/grok-build-2026-10-12.md`; tip hash in the hand-off).
  Files: README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-12.md.
- **kaspa-builders `master/builders-sweep-2026-10-12`** from `origin/main` [`d016ddd`](https://github.com/STP-KAS/kaspa-builders/commit/d016ddd).
  Commits: content [`fe743dc`](https://github.com/STP-KAS/kaspa-builders/commit/fe743dc02779402f825b6b5de31b352bf1918f36), snapshot link [`ad6686e`](https://github.com/STP-KAS/kaspa-builders/commit/ad6686ebf8cec7b9d58da5efafc8d323ec635993). Tip **`ad6686e`**.
  Files: entries/kasperolabs-silverscript-studio.md, entries/danieliyahu1.md, entries/kas-smiths-threads.md, README.md, builders.json, SNAPSHOT-HISTORY.md.

## Added to the master branch (README Now cells rewritten in place + master.json)

| Item | Source | Cell |
| --- | --- | --- |
| **api-tn10 still synced** (12 Oct 05:51:10Z–05:51:28Z, server `Date`): 14× HTTP 200, Cloudflare MISS, `blueScoreDiff` 0–28, `acceptedTxBlockTimeDiff` 1–3; **all 14 on 2.0.1 `965d43fe`** (2.1.0 `82c70f33`/`3d3c14bd` not seen in this sample; no claim they left); `/info/blockdag` DAA **594496410** (05:51:29Z). | api-tn10 | TN10 public API |
| **rusty-kaspa #1147** still open, no reviews, no requested reviewers, `mergeable_state` blocked (API 05:54:41Z). Head moved `6c34186f` → **`b4df2d8f`** (11 Oct 16:22:58Z, "test: assert the fee estimator input is cleared by the post-IBD mempool revalidation (#1146)"), 2 commits, 7 files, +460/−11. | GitHub API | TN10 public API |
| **oskrcl** [6111076516](https://github.com/kaspanet/rusty-kaspa/pull/1147#issuecomment-6111076516) (11 Oct 16:20:13Z): his TN10 node ~21.8k mempool entries, ~99.7% already accepted (300 sample); priority_bucket 1644 vs 100 on the public endpoint; ~8–15x overpay; zero templates in 72h. Quoted verbatim, hedged (his node). Second comment 6111091787 quotes it + screenshot (not read). | PR comments | TN10 public API |
| **atharaldsen** [6111314427](https://github.com/kaspanet/rusty-kaspa/pull/1147#issuecomment-6111314427) (16:45:35Z): added the ready-count/mass assertion to the integration test in `b4df2d8f`. Quoted verbatim. | PR comment | TN10 public API |
| **#1146** still 3 comments, no maintainer reply. | GitHub API | TN10 public API / Not live |
| **#850** D-Stacks (COLLABORATOR) [6111080124](https://github.com/kaspanet/rusty-kaspa/pull/850#issuecomment-6111080124) (11 Oct 16:20:36Z) points at his own open **#814** (head `bec82b13`, base master, not merged, `mergeable_state` dirty, last updated 22 Mar). | GitHub API | Not live |
| **Sutton** [2109247664554418250](https://x.com/michaelsuttonil/status/2109247664554418250) "KCC-20 makes stablecoins a practical reality on Kaspa, yes" and [2109253446788317528](https://x.com/michaelsuttonil/status/2109253446788317528) privacy "inherently require usage of zk opcodes which out of KCC-20’s scope". Parent posts not read (X cap) — stated. | X | KCC-20 wording |
| **Kas-Smiths** 50 / 388 / 114; latest post **412**; new topic **161** (S1LVERTOSHI): six questions to KCC authors (unique-asset KCC, KCC-1/KCC-2 for a non-standard family, covenant-ID authority hand-over, sampling/i64, KCC-23 discovery, OpChainblockSeqCommit window); unanswered. Topic 160 still no replies. Game itself → builders. | about.json / posts.json | Kas-Smiths |
| **KGI v2** main **`82dcc0e6`** (#7 merged 11 Oct 20:37:55Z by tiram88; 31 commits, 39 files). status.md (11 Oct): API replacement gate, read-lease registry, drain/cancel, pruning-point replacement in; processing/API crates still scaffolds. 212/212 nextest = author's run. | GitHub API + status.md raw | KGI v2 design |

Five old cells (TN10 public API, Not live, KCC-20 wording, Kas-Smiths, KGI v2 design) and the old TN10 master.json note are copied verbatim to SNAPSHOT-HISTORY "Moved from README on 12 Oct 2026" (checked byte-for-byte against main `8f1d0d5`).

## Already on main — not re-added

- Sutton Solana reply 2109315001034875348, Grok-share follow-up 2109316491417878839, KRC-20→KCC-20 migration reply 2109305350008475670: on main (11 Oct sutton-solana / kcc20-vs-krc20 updates).
- KaspaScopio #1147 post 2109204151573876749: already quoted in the TN10 cell.

## kaspa-builders (committed this run)

- **KasperoLabs** [2109422238277493065](https://x.com/KasperoLabs/status/2109422238277493065) (11 Oct 23:13:47Z): ZK covenant on mainnet with his own RISC Zero program; flipped public-input bit rejected by the node — claim, no txid/image id, not desk-checked; asaefstroem "Cool that you like it!" in-thread. [2109291008584540535](https://x.com/KasperoLabs/status/2109291008584540535): KCC-20 launchpad with a miner covenant, "Opens when KCC-20 goes final." elldeeone: "love the idea, this is seriously cool".
- **danieliyahu1:** onlykas renamed **kaskama** (default branch master), tip `dce58809` (pins image `3e285447`), commits `833cb340` / `3e285447` (atomic settlement, drop dead terminal state); issues #5–#7 closed; noralane #8–#13 open.
- **Kas-Smiths threads:** topic 161 B1TCOIN S1LVER (claims: KCC-20 reference verbatim, 13 TN10 releases, template hash reproduced, 740 debugger tests).

## Skipped (not substantive / relays / other owner)

- **KaspaScopio** [2109357779953520839](https://x.com/KaspaScopio/status/2109357779953520839) (11 Oct 18:57:39Z): relay of stp's own 11 Oct five-hour TN10 stress test (median 3,107 tx/s over 171 minutes, peak 3,583, 303-min avg 2,833; links public STP-KAS/tn10-storm-2026-10-11). stp's own run → TN10 ops owns it; not added by the watch.
- KaspaScopio 2109219430232117470 (correction that @atharaldsen ≠ the GitHub user; consistent with RUNBOOK), 2109197798448980376 (KaspaSilver reply).
- kaspaunchained weekly roundup 2109252398707306909, KASPAglobal 2109198593651282134 (relays: KCC20 last call, OriNewman P2SH, KaspaClass vaults on TN10), BankQuote essays.
- IzioDev 2109507308862505422 / 2109506201989808372 (bridge chatter: "the hard part is proving Kaspa consensus in EVM contracts and vice versa"); elldeeone 2109465987389267979 (insult to a bot account); Sutton 2109268270960316560, 2109272618679287830, 2109311476649374009 (chatter).
- GitHub third-party noise: smartgoo/x4kas pushes, Drcryptodee/kaspaverse push and K-Kluster/Kasia #296 issue, trillskillz/clawdmarket (not Kaspa) — not tracked entries; no action.

## Per source

- **X credits.** Start **$6.75** (07:45 CEST; prepaid 6.75, free 0). Mid **$6.75** (07:53). End: see state.json (`credits_after`). Measured delta **$0.00** so far (credit reads lag, as on 11 Oct). Desk estimate ≈ **$0.22** (core 13 posts + 4 users; community 6 + 4; deshe 0; KaspaScopio 4 + 2 users + 2 included posts). At the ~$0.20 cap, so no full-text or parent-post reads.
- **X core** (`since_id` 2109087029183066337 → **2109513092463747119**, newest 12 Oct 05:14:48Z): 13 posts, `next_token` present, not paginated (cap). **community** → **2109422238277493065**: 6 posts, `next_token` present, not paginated. **deshe:** 0, held 2103861631738667208. **KaspaScopio** → **2109357779953520839**: 4 posts. **core_replies:** paused, not run.
- **GitHub (fail-loudly):** `gh auth status` OK (STP-KAS). 61 watchlist repos × (commits, pulls, issues, releases) = 244 fetches, all non-empty, **0 GAPs**; 2 orgs (no kaspanet/argent-lang repo pushed since marker); 17 user event feeds; atharaldsen 3 searches (1 PR #1147, 1 commented thread #1146, 0 commits in kaspanet). Core repos: no new commits; only rusty #1147/#850/#1146 updated. Heads held: rusty master `01b532e8` / tn10 `e5f6d1f7` / dagknight `ad45e241`; vprogs master `f9b84a86` / RC `cc0d54bc`; silverscript `a0dd7448`; kccs `3fbec524`; argent `9a9f4b10`; kcc20-reference `c8a08711`; tictactoe `f93e52fe`. KGI moved to `82dcc0e6`.
- **Tags** (full ls-remote scan, 11 repos): release pins unchanged (rusty-kaspa v2.1.0, silverscript v1.0.0, python-sdk v2.1.0, x402 v1.0.0-rc.2, dotk-sdk/-tx v2.1.0, dotk-indexer v1.1.1, dotk-core v0.13.1, kastle v2.61.0). Every tag in the 11 Oct list is still present.
- **Kas-Smiths:** 50 / 388 / 114; latest_post_id **412**. **research.kas.pa:** newest topic still 522.
- **Cited sites** (headers + bodies saved): kaspa.org, kaspaexplained.com/status, kaspa.news, kaspa-x402.org, vprogs-tt.izio.fr, silverscriptstudio.com HTTP 200; kns-2.gitbook.io 307 (redirect, followed); blockreward 2.06017223.

## TN10 (testnet-10)

- api-tn10 synced; this sample saw only 2.0.1 `965d43fe` (14/14). Not proof the 2.1.0 backends are gone.
- #1147 head `b4df2d8f`, still no maintainer review; oskrcl's fee-estimator numbers point at distorted priority-bucket fees on non-mining nodes until the 24h expiry (his node, not desk-checked). FYI for TN10 ops if n0/fee logic is affected. The watch did not touch n0, miners or processes.

## Gaps

- X measured credit delta $0 vs ~$0.22 estimated (credit reads lag).
- Core/community `next_token` not followed (cap). Parent posts of Sutton's KCC-20 replies not read.
- oskrcl's screenshot (6111091787) and KasperoLabs media links not opened.
- No new bot-mail hand-off files on disk in the last 24h (11 Oct 18:40 carry-over items applied).
- SendToAgent is not available to this executor: hand-off texts are drafted in `sendtoagent-drafts-2026-10-12.md` for the parent to send.

## Carry-overs

- Applied: 11 Oct 18:40 items (#1147 oskrcl 6111076516 + 6111091787; #850 D-Stacks 6111080124 + #814 re-read); #1147/#1146 close watch; tag scan; core_replies skipped.
- Left alone (dedicated / waiting on stp): W-F4; out-of-order SNAPSHOT pairs; item 13 private repo names; optional Sutton "too much"; optional SilverScript-holes x402 #22 wording; vprogs #172 docs recheck; silverscript-abi desk follow-ups; builders Last-checked dedicated pass; x402 #30 (still open `58506a75`, unchanged).

## Flags for stp / parent

- Ask **kaspa master challenge** for a pass on `master/sweep-2026-10-12` and `master/builders-sweep-2026-10-12` (tips in the hand-off).
- Do **not** merge here; merge after 0 FAILED at the exact tip.

## State

`/workspace/artifacts/kaspa-master-watch/state.json` (updated; backup `state.json.bak-2026-10-12`). Raw: `/workspace/artifacts/kaspa-master-watch/raw/2026-10-12/` (x-*.json, gh/, pr/, sites/, heads.txt, tags-scan.txt).

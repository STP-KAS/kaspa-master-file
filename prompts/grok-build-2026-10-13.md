# Prompt for Grok Build — independent analysis of the 13 Oct 2026 Kaspa watch findings

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (watch sweep, 13 Oct ~07:41–08:00 CEST). It updated branch `master/sweep-2026-10-13` on https://github.com/STP-KAS/kaspa-master-file and `master/builders-sweep-2026-10-13` on https://github.com/STP-KAS/kaspa-builders. Do **not** trust the report. Analyse it your own way.

## Branch for your work
Use branch **`build/2026-10-13`** (create from current `origin/main`). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`.

Main is at `4a23d06` (12 Oct weekly-fixes). The 12 Oct sweep/Build branches may already be merged or superseded; search before re-adding.

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-13.md` on `master/sweep-2026-10-13`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, X, Facebook). No reactions, issues, PRs, tags or releases, on any repo, including STP-KAS ones. A new sourced fact goes into the master file and stops there.
- **Master is core-only (stp, 4 Oct 2026).** Third-party projects (KasperoLabs, kaskama, x402, KaChat, DOTK, Kastle, …) live in STP-KAS/kaspa-builders; cite it only with its caveat. Send third-party finds to kaspa master bot; do not add them to the master.
- Cite a URL for every claim. Record times with zone (CEST in chat; Z fine in the master). Times come from saved server `Date` headers or API timestamps, never the desk clock.
- No fabrication. If you cannot verify, say "not verified". Never claim an HTTP status without saved headers. Quotes character for character from saved raw.
- Merged Active KIP is law. An open PR, a branch, a demo, or a tweet is not. Do not weld objects (KCC-20 Last Call ≠ Final; #1147/#1148/#260 open ≠ merged; a contributor's diagnosis ≠ maintainer-confirmed; author RocksDB timings ≠ desk-run; one api-tn10 sample on 2.1.0 ≠ 2.0.1 gone; api-tn10 200 ≠ proof a payment landed; KasperoLabs Ethereum-bridge claim ≠ desk-verified).
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (short; old cell copied verbatim to SNAPSHOT-HISTORY "Moved from README on <date>"); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; `master.json` notes plain text, validated.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain push of your `build/` branches only. Never force main.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** (including `master/sweep-2026-10-13`).
- X: do not make X calls unless stp asks; the sweep covers X (credits ~$6.75 at sweep start/end, measured delta $0, estimate ~$0.16).
- Never share seeds/keys. TN10 never goes to a mainnet kaspa bot. Do not touch TN10 processes (TN10 ops owns them); any TN10 test is read-only or on your own wallet, never the mining address.
- Main merges: kaspa master bot merges on a challenger pass with 0 FAILED at the exact tip (stp OK not required since 8 Oct).
- Do not name private STP-KAS repos in either repo (check `gh api repos/STP-KAS/<name> --jq .visibility` before linking any STP-KAS repo).

## Standing role
Keep the master current with the kaspa master bot. Checkout for Build: `/workspace/repos/kaspa-master-file` (not the watch clone). Public posts are forbidden. Challenge before merge: any open FAILED item blocks merge until fixed or stp overrides.

## Tasks
1. **Verify** every master item in the report against live sources: TN10 health headers and backend p2pIds (today 14/14 on 2.1.0 `94ee6595`/`af0bc9c5`); #1147 head `b4df2d8f`, reviews, `mergeable_state`; #1148 head `e3773118`, files, author claims; #991 five biryukovmaxim comments by id + review state; #1142 head `fc681149` + biryukovmaxim CHANGES_REQUESTED; silverscript #260 head `a2e2c0f4`; KGI tip `82dcc0e6`; Kas-Smiths about.json / topic 161.
2. **api-tn10:** recheck `/info/health` (cache-busted, save headers) at least twice, an hour or more apart if you can; record **all** backend versions and p2pIds. Do not write "2.1.0-only" or "2.0.1 gone" from one sample.
3. **#1148:** read the diff; say what `--rocksdb-preset=lowio` changes vs default; do not desk-run the author's sync table unless you choose to. Keep "his runs, not desk-run".
4. **#260:** confirm the builtin maps to opcode `0xd6` and the test coverage claim; not desk-built unless you choose to.
5. **#991 / #1142:** confirm review states from the API (not from who commented). biryukovmaxim's only #991 review remains CHANGES_REQUESTED of 21 Jul unless a new review exists.
6. **Kas-Smiths topic 161:** if a KCC author answers, record the answer in the master's Kas-Smiths cell (core reasoning only); the game stays in builders.
7. **Builders (optional verify):** x402 #30 merge `6918defe`; KasperoLabs bridge claim 2109766022790066442 — on a kaspa-builders `build/` branch if you touch builders at all.
8. **What to build or test next** (TN10 only, no public posting): short ordered list.
9. Write sourced facts only to `build/2026-10-13`. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch report — 2026-10-13

All times are CEST (Europe/Brussels, UTC+2) unless marked Z. Routine sweep ~07:41–08:00 CEST.
Window: GitHub since `2026-10-12T05:45:00Z`; X since the 12 Oct markers; forum since post 412.

## Branches (never main, never force, zero public actions)

- **kaspa-master-file `master/sweep-2026-10-13`** from `origin/main` [`4a23d06`](https://github.com/STP-KAS/kaspa-master-file/commit/4a23d06) (12 Oct weekly-fixes already on main).
  Commits: content [`6e7c410`](https://github.com/STP-KAS/kaspa-master-file/commit/6e7c410744b3db2ca6bd3fd273e0dababe3727b5), snapshot link [`79a9ea7`](https://github.com/STP-KAS/kaspa-master-file/commit/79a9ea71872f45771a9574229e11d324d19ce477), then Build prompt (added next). **TIP_PLACEHOLDER**.
  Files: README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-13.md.
- **kaspa-builders `master/builders-sweep-2026-10-13`** from `origin/main` [`069ba14`](https://github.com/STP-KAS/kaspa-builders/commit/069ba14).
  Commits: content [`a445477`](https://github.com/STP-KAS/kaspa-builders/commit/a4454772d3790d02992b6d81ef89ed0a43968182), snapshot link [`887b909`](https://github.com/STP-KAS/kaspa-builders/commit/887b9098ca8df6e869f68285abd3d602942e9e47). Tip **`887b909`**.
  Files: entries/x402.md, entries/kasperolabs-silverscript-studio.md, README.md, builders.json, SNAPSHOT-HISTORY.md.

## Added to the master branch (README Now cells rewritten in place + master.json)

| Item | Source | Cell |
| --- | --- | --- |
| **api-tn10 still synced** (13 Oct 05:49:57Z–05:50:38Z, server `Date`): 14× HTTP 200, Cloudflare MISS, `blueScoreDiff` 1–40, `acceptedTxBlockTimeDiff` 0–3; **all 14 on 2.1.0** (`94ee6595`×9 / `af0bc9c5`×5); 2.0.1 `965d43fe` not seen in this sample (no claim it left); `/info/blockdag` DAA **595359535** (05:50:01Z). | api-tn10 | TN10 public API |
| **#1147/#1146** still open, no reviews (recheck 05:48Z). Head still `b4df2d8f`. supertypo 6124362740 already on main via weekly-fixes `4a23d06` — not re-added. | GitHub API | TN10 public API |
| **KGI** tip still **`82dcc0e6`** (bot-mail "32-commit push" was #7 already recorded 12 Oct). | GitHub API | TN10 public API |
| **#1148** lowio RocksDB preset (supertypo, opened 12 Oct 11:34:36Z, head `e3773118`, +115/−10, no reviews). Author claims ~50% fewer writes / ~99% fewer compactions (his runs). | GitHub API | Not live |
| **#991** biryukovmaxim **five** 12 Oct inline comments on `77d9a2e8` (4247568710…4247720588); no new review — still CHANGES_REQUESTED of 21 Jul on `7372a815`. | GitHub API | Not live |
| **#1142** head `644baafe` → **`fc681149`**; biryukovmaxim CHANGES_REQUESTED 12 Oct 14:40:43Z; atharaldsen pushed Done replies. Still open, no maintainer review on new head. | GitHub API | Not live |
| **silverscript #260** OpOutputAuthorizingInput builtin (aglov413, head `a2e2c0f4`, +58/−6, no reviews). | GitHub API | SilverScript holes |

Three old cells (TN10 public API, Not live, SilverScript holes) and matching master.json notes copied verbatim to SNAPSHOT-HISTORY "Moved from README on 13 Oct 2026". SNAPSHOT row also notes the 12 Oct weekly-fix pass already on main (`4a23d06`).

## Already on main — not re-added

- supertypo #1147 comment 6124362740 (weekly-fixes `4a23d06`).
- KasperoLabs ZK melody / MinerDrip / kaskama (12 Oct builders, now on builders main `069ba14`).

## kaspa-builders (committed this run)

- **x402 #30** merged 13 Oct 04:41:48Z as main **`6918defe`** (bound network I/O / transport authority). Tag still v1.0.0-rc.2. KaspaScopio relay 2109872199569936618.
- **KasperoLabs** [2109766022790066442](https://x.com/KasperoLabs/status/2109766022790066442) (12 Oct 21:59:52Z): L1 bridge to Ethereum claim (no signers; ZK of Ethereum consensus → KCC-20 mint). asaefstroem in-thread on GHOSTDAG/ZK. No txid/image id; not desk-checked.

## Skipped (not substantive / relays / other owner)

- DesheShai 2109548535599223074 (Wikipedia / politics rant).
- BankQuote / kaspaunchained / KASPAglobal KCC-20 essays and relays.
- WellerOlaf Venice AI post (not Kaspa).
- IzioDev merge-set educational thread; coderofstuff wallet opinion; IzioDev git alias chatter.
- core_replies: paused, not run.
- STP-KAS public comment on #1147: already deleted per weekly-fixes; waiting-on-stp item left alone (do not put in master).

## Per source

- **X credits.** Start **$6.75** (07:41 CEST; prepaid 6.75, free 0). End measured at end of run (see state). Desk estimate ≈ **$0.16** (core 9p+3u; community 5p+5u; deshe 1p+1u; KaspaScopio 2p+1u). At the ~$0.20 cap: no full-text/parent reads; next_token not followed on core/community/deshe.
- **X core** (`since_id` 2109513092463747119 → **2109859288718172454**): 9 posts, `next_token` present, not paginated. **community** → **2109766022790066442**: 5 posts, `next_token` present, not paginated. **deshe** → **2109548535599223074**: 1 post (skipped). **KaspaScopio** → **2109872199569936618**: 2 posts. **core_replies:** paused.
- **GitHub (fail-loudly):** `gh auth status` OK (STP-KAS). 63 watchlist repos × 4 endpoints = **252 OK, 0 GAP**; 2 orgs OK; 17 user event feeds OK; atharaldsen 3 searches OK (2 PRs #1147/#1142, 1 commenter hit #1142, 0 commits in kaspanet). Core repo commits since marker: none on rusty/silverscript/vprogs/kccs. Heads held except as noted (#1142→fc681149, #1148 new, #260 new, x402 main→6918defe).
- **Tags:** release pins unchanged (rusty v2.1.0, silverscript v1.0.0, python-sdk v2.1.0, x402 v1.0.0-rc.2, dotk-sdk/-tx v2.1.0, dotk-indexer v1.1.1, dotk-core v0.13.1, kastle v2.61.0).
- **Kas-Smiths:** 50 / 388 / 114; latest_post_id **412** (no new posts). Topic 161 still 1 post, unanswered.
- **Cited sites:** kaspa.org, kaspaexplained.com/status, kaspa.news, kaspa-x402.org, vprogs-tt.izio.fr, silverscriptstudio.com HTTP 200; kns-2.gitbook.io 307; blockreward **2.06017223**.

## TN10 (testnet-10)

- api-tn10 synced; this sample saw only 2.1.0 (`94ee6595` / `af0bc9c5`). Not proof 2.0.1 left the pool.
- #1147 still awaiting maintainer review; FYI for TN10 ops only if n0/fee logic is affected (unchanged advice). Watch did not touch n0, miners or processes.
- **TN10 ops FYI:** SKIP unless they care that the public API sample flipped to all-2.1.0 again (mixed pool continues). No new TN10 issue/API outage.

## Gaps

- X measured credit delta may lag (as on 11–12 Oct).
- Core/community/deshe `next_token` not followed (cap).
- #991 list endpoint paginates at 30; the five 12 Oct comments were fetched by id (saved under raw/pr/rusty_991_biryukov_2026-10-12.json).
- oskrcl screenshot still not read.
- No new bot-mail hand-off files on disk beyond the 12 Oct carry items (all verified live).

## Carry-overs

- Applied (verified live): silverscript #260; KGI tip recheck (still 82dcc0e6); #1148; #991 biryukov five comments; #1147/#1146 close watch; tag scan; Kas-Smiths topic 161 (still unanswered); optional SNAPSHOT note of weekly-fixes `4a23d06`.
- Left alone (dedicated / waiting on stp): W-F4; out-of-order SNAPSHOT pairs; item 13 private repo names; STP-KAS #1147 comment waiting-on-stp; optional Sutton "too much"; optional SilverScript-holes x402 #22 wording; vprogs #172 docs; silverscript-abi desk; builders Last-checked dedicated pass; optional Sutton parent-post reads; optional oskrcl screenshot.

## Flags for stp / parent

- Ask **kaspa master challenge** for a pass on `master/sweep-2026-10-13` and `master/builders-sweep-2026-10-13`.
- Do **not** merge here; merge after 0 FAILED at the exact tip.
- SendToAgent drafts in `sendtoagent-drafts-2026-10-13.md`.

## State

`/workspace/artifacts/kaspa-master-watch/state.json` (updated; backup `state.json.bak-2026-10-13`). Raw: `/workspace/artifacts/kaspa-master-watch/raw/2026-10-13/` (x/, gh/, pr/, sites/, heads.txt, tags-scan.txt).

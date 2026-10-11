# Prompt for Grok Build — independent analysis of the 11 Oct 2026 Kaspa watch findings

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (watch sweep, 11 Oct ~07:42–07:55 CEST). It updated branch `master/sweep-2026-10-11` on https://github.com/STP-KAS/kaspa-master-file and `master/builders-sweep-2026-10-11` on https://github.com/STP-KAS/kaspa-builders. Do **not** trust the report. Analyse it your own way.

## Branch for your work
Use branch **`build/2026-10-11`** (create from current `origin/main`). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`.

Note: `build/vprogs-workshop-2026-10-09` still holds Max's workshop book + tictactoe `f93e52fe` and is not in main — do not repeat that work. Other open build branches are not merged; do not repeat what they already hold. Evening `master/update-2026-10-10-evening` (silverscript `a0dd7448`, #1141/`#1146` atharaldsen) is already on main.

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-11.md` on `master/sweep-2026-10-11`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, X, Facebook). No reactions, issues, PRs, tags or releases. A new sourced fact goes into the master file and stops there.
- **Master is core-only (stp, 4 Oct 2026).** Third-party projects (KPI, KaChat, DOTK, Kastle, OpenMiner, x402, …) live in STP-KAS/kaspa-builders; cite it only with its caveat. Send third-party finds to kaspa master bot; do not add them to the master.
- Cite a URL for every claim. Record times with zone (CEST in chat; Z fine in the master).
- No fabrication. If you cannot verify, say "not verified". Never claim an HTTP status without saved headers.
- Merged Active KIP is law. An open PR, a branch, a demo, or a tweet is not. Do not weld objects (`release-candidate` tip ≠ release; KCC-20 Last Call ≠ Final; a StorageService slice ≠ full KGI; Sutton's KTL vision ≠ a shipped lib; a P2PKH gist ≠ wallet support; api-tn10 200 ≠ proof a payment landed; `/info/halving` time ≠ the consensus step; an APPROVED PR ≠ merged; #1146 author's mempool report ≠ a confirmed consensus bug; OriNewman P2SH-KIP talk ≠ a KIP).
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (short); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; validate `master.json`.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain push of your `build/` branches only. Never force main.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** (including `master/sweep-2026-10-11` and `build/vprogs-workshop-2026-10-09`).
- X credits ~$6.75 at sweep end (measured delta $0; estimate ~$0.18–0.20). Do not make X calls unless stp asks; the sweep covers X.
- Never share seeds/keys. TN10 never goes to a mainnet kaspa bot. Do not touch TN10 processes (TN10 ops owns them); any TN10 test is read-only or on your own wallet, never the mining address.
- Main merges: kaspa master bot merges on a challenger pass with 0 FAILED at the exact tip (stp OK not required since 8 Oct).
- Do not name private STP-KAS repos in the master.

## Standing role
Keep the master current with the kaspa master bot. Checkout for Build: `/workspace/repos/kaspa-master-file` (not the watch clone). Public posts are forbidden. Challenge before merge: any open FAILED item blocks merge until fixed or stp overrides.

## Tasks
1. **Verify** every master item in the report against live sources (TN10 health headers + backend versions/p2pIds including `3d3c14bd` and `965d43fe`; #1146 oskrcl + atharaldsen comments; #850 supertypo comment + head `b53879ab`; OriNewman and Sutton post ids; Kas-Smiths about.json; block reward).
2. **api-tn10:** recheck `/info/health` (cache-busted, save headers) at least twice; record **all** backend versions and p2pIds (expect mixed 2.1.0 and 2.0.1). Do not say 2.1.0-only from one sample.
3. **#1146:** confirm both comments; do not claim a root cause or ship a fix.
4. **#850 / OriNewman / Sutton atomicity:** confirm texts; do not mark #850 merged; do not invent a KIP.
5. **Builders (optional verify):** x402 main `7231e842` (#29), open #30 `58506a75`; KaChat `4155ee8c` — on kaspa-builders branch if you touch builders at all.
6. **What to build or test next** (TN10 only, no public posting): short ordered list.
7. Write sourced facts only to `build/2026-10-11`. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch report — 2026-10-11

All times are CEST (Europe/Brussels, UTC+2) unless marked Z. Routine sweep ~07:42–07:55 CEST.
Window: GitHub since `2026-10-10T05:45:00Z`; X since the 10 Oct markers; forum since post 410.

## Branches (never main, never force, zero public actions)

- **kaspa-master-file `master/sweep-2026-10-11`** from `origin/main` [`e430f2a`](https://github.com/STP-KAS/kaspa-master-file/commit/e430f2a).
  Commits: content [`5180f76`](https://github.com/STP-KAS/kaspa-master-file/commit/5180f76963d894794d873ef6de67797603f7e940), snapshot link [`98637f2`](https://github.com/STP-KAS/kaspa-master-file/commit/98637f2e622856e4c55b05a97dbf5ca31b2cda00), Build prompt [`c6bcefc`](https://github.com/STP-KAS/kaspa-master-file/commit/c6bcefc88170365617373f31f1fa051c9864e8c2) (`prompts/grok-build-2026-10-11.md`).
  Files: README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-11.md.
- **kaspa-builders `master/builders-sweep-2026-10-11`** from `origin/main` [`99883ae`](https://github.com/STP-KAS/kaspa-builders/commit/99883ae).
  Commits: content [`be07b48`](https://github.com/STP-KAS/kaspa-builders/commit/be07b4893e82a6f806e56d1a7bd883284cf06202), snapshot link [`113c432`](https://github.com/STP-KAS/kaspa-builders/commit/113c43201df7a9b9ad37dc0cc7b107e298552593).
  Files: entries/x402.md, entries/name-services.md, README.md, builders.json, SNAPSHOT-HISTORY.md.

## Added to the master branch (README Now cells + master.json)

| Item | Source | Cell |
| --- | --- | --- |
| **api-tn10 still synced, mixed pool** (11 Oct ~05:43–05:46Z): 14× HTTP 200, Cloudflare MISS; backends **2.1.0** `82c70f33`/`3d3c14bd` and **2.0.1** `965d43fe` (yesterday's `82e9e396`/`ba36f18d` not seen); DAA **593632952**. | api-tn10 | TN10 public API |
| **#1146** oskrcl follow-up 10 Oct 21:12:04Z: confirms IBD burst + zero templates; accepts post-IBD full mempool revalidate direction (atharaldsen already on evening update). | GitHub issue comments | TN10 / Not live |
| **#850** open (`b53879ab`): supertypo 10 Oct 20:22Z batch-write timings (1k UTXO 14.1→1.1 ms; TN10 UTXO download 83→20 min). | PR comment | Not live |
| **OriNewman** [2108969274832273564](https://x.com/OriNewman/status/2108969274832273564): propose KIP documenting P2SH + rusty-kaspa wallet reference — talk only. | X | Not live |
| **Sutton** [2108964596820193619](https://x.com/michaelsuttonil/status/2108964596820193619): burn/mint easy; freeze tradeoffs; DEX/lending possible via single-tx atomicity; Argent/KCCs patterns. | X | Launch proof |
| **Kas-Smiths** recheck still 49 / 386 / 113; latest post 410. | about.json | Kas-Smiths |
| **Block reward** still 2.06017223. | api.kaspa.org | (held) |

## Already on main / open branches — not re-added

- silverscript master `a0dd7448` / #259 / #256–#258 closes: on main via evening `master/update-2026-10-10-evening`.
- #1141 head `a7c8ef0c` / CHANGES_REQUESTED: evening.
- Max workshop + tictactoe `f93e52fe`: still on `build/vprogs-workshop-2026-10-09` (not re-added).
- core_replies: paused since 5 Oct verdict.

## kaspa-builders (committed this run)

- **x402 [#29](https://github.com/elldeeone/kaspa-x402/pull/29)** merged 10 Oct 10:29:59Z as main [`7231e842`](https://github.com/elldeeone/kaspa-x402/commit/7231e842); **[#30](https://github.com/elldeeone/kaspa-x402/pull/30)** open head `58506a75` (bound network I/O). Tag still v1.0.0-rc.2.
- **KaChat** tip [`4155ee8c`](https://github.com/vsmirn0v/KaChat/commit/4155ee8c) (build numbers). Prior carry-over tip `d1217159` superseded.
- kastle tip still `4f022739` (no new commits since 10 Oct since-marker).

## Per source

- **X credits.** Start **$6.75** (prepaid 6.75, free 0). End **$6.75** (measured delta **$0.00** — billing may lag). Desk estimate ≈ **$0.18–0.20** (core 9 posts + 5 users; community 2 + 2; KaspaScopio 4 + 1; get_posts_by_ids 6; at $0.005/post, $0.01/user, ~1.3× includes). Under soft $0.25; hard ~$0.20.
- **X core** (`since_id` 2108721648652386702 → **2109087029183066337**, newest 11 Oct 01:01:47Z): 9 posts; `next_token` present, not paginated. Substantive: Sutton atomicity, OriNewman P2SH-KIP talk. coderofstuff CTX=long 70tps skipped (looks like tooling context, not Kaspa TPS). **community** → **2109073934507487487**: 2 posts (KASPAglobal Max-workshop relay; Commons quote) — builders/community only. **deshe:** 0, held 2103861631738667208. **KaspaScopio:** → **2108998955493380455**: 4 posts (SilverScript 2.1.0 relay already on evening; x402 #29 relay; Ledger news). **core_replies:** paused, not run.
- **GitHub:** pulls fail-loudly tested on vprogs (non-empty). Core quiet on new commits except silverscript `a0dd7448` (already main). Updated: rusty #1146/#1141/#850; x402 #29/#30; KaChat tip. Empty `[]` pulls for three supertypo/dotk-* (no open PRs) — logged. Heads held: rusty master `01b532e8` / tn10 `e5f6d1f7` / dagknight `ad45e241`; vprogs master `f9b84a86` / RC `cc0d54bc`; silverscript `a0dd7448`; kccs `3fbec524`; argent `9a9f4b10`; KGI `5b6c6b75`; tictactoe `f93e52fe`.
- **Tags** (ls-remote vs 10 Oct listed set): release pins unchanged (rusty-kaspa v2.1.0, silverscript v1.0.0, x402 v1.0.0-rc.2, dotk-indexer v1.1.1, dotk-core v0.13.1, kastle v2.61.0, …).
- **Kas-Smiths:** 49 / 386 / 113; latest_post_id **410** (no new posts). **research.kas.pa:** newest topic still 522.
- **Cited sites:** kaspa.org / kaspa-x402.org / silverscriptstudio / vprogs-tt HTTP 200; blockreward 2.06017223; kaspaexplained status fetched.

## TN10 (testnet-10)

- **api-tn10 healthy on 11 Oct morning, mixed pool.** 14 cache-busted `/info/health` reads: all **HTTP 200**, MISS, synced. Backends: **2.1.0** `82c70f33`/`3d3c14bd` and **2.0.1** `965d43fe`. DAA **593632952**. Headers in `raw/2026-10-11/hdr-tn10-*`.
- **#1146** still open; oskrcl confirms IBD path. FYI for TN10 ops if n0/miners show sticky accepted txs — watch did not touch n0/miners/processes.
- Carry-over W-F4 DESK-BOT.md "Resyncing" still open (TN10 ops area; dedicated pass).

## Gaps

- X measured credit delta $0 despite ~$0.18–0.20 estimated resources (possible billing lag).
- Core/community `next_token` not followed (soft budget).
- No bot-mail hand-off files found on disk for the last 24h.
- kastle/rusty full ls-remote lists many historical tags; pin comparison used the 10 Oct listed subset + release-pin check (unchanged).

## Carry-overs

- Applied (daily): tag scan (pins unchanged); core_replies skipped; builders x402 #29 / KaChat tip; #1146 oskrcl; TN10 recheck.
- Left alone (dedicated / waiting on stp): W-F4; out-of-order SNAPSHOT pairs; item 13 private repo names; optional Sutton "too much"; optional SilverScript-holes x402 #22 wording; builders README vs builders.json Last-checked dedicated pass; Argent→rossku (already on builders main).

## Flags for stp / parent

- Ask **kaspa master challenge** for a pass on `master/sweep-2026-10-11` and `master/builders-sweep-2026-10-11` (tips after prompt commit).
- Do **not** merge here; parent merges after 0 FAILED.
- Also still unmerged and substantive: `build/vprogs-workshop-2026-10-09`.
- **TN10 FYI:** mixed pool now shows 2.0.1 `965d43fe` and 2.1.0 `3d3c14bd` (plus `82c70f33`); #1146 still open with IBD explanation.

## State

`/workspace/artifacts/kaspa-master-watch/state.json` (updated; backup `state.json.bak-2026-10-11`). Raw: `/workspace/artifacts/kaspa-master-watch/raw/2026-10-11/`.

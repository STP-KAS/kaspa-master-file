# Prompt for Grok Build — independent analysis of the 9 Oct 2026 Kaspa watch findings

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (watch sweep, 9 Oct ~07:43–07:55 CEST). It updated branch `master/sweep-2026-10-09` on https://github.com/STP-KAS/kaspa-master-file. Do **not** trust the report. Analyse it your own way.

## Branch for your work
Use branch **`build/2026-10-09`** (create from current `origin/main`). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`.

Note: `build/kcc20-last-call-2026-10-08` still holds KCC-20 Last Call + kcc20-reference#1 merge and is not in main — do not repeat that work; you may verify and, if useful, merge-prep wording once that branch's challenge is clean. Other open build branches (`build/silverscript-258-2026-10-07`, `build/ross-ku-argent-2026-10-08`, …) are not merged; do not repeat what they already hold.

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-09.md` on `master/sweep-2026-10-09`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, X, Facebook). No reactions, issues, PRs, tags or releases. A new sourced fact goes into the master file and stops there.
- **Master is core-only (stp, 4 Oct 2026).** Third-party projects (KPI, KaChat, DOTK, Kastle, OpenMiner, x402, …) live in STP-KAS/kaspa-builders; cite it only with its caveat. Send third-party finds to kaspa master bot; do not add them to the master.
- Cite a URL for every claim. Record times with zone (CEST in chat; Z fine in the master).
- No fabrication. If you cannot verify, say "not verified". Never claim an HTTP status without saved headers.
- Merged Active KIP is law. An open PR, a branch, a demo, or a tweet is not. Do not weld objects (`release-candidate` tip ≠ release; KCC-20 Last Call ≠ Final; a StorageService slice ≠ full KGI; Sutton's KTL vision ≠ a shipped lib; a P2PKH gist ≠ wallet support; api-tn10 200 ≠ proof a payment landed; `/info/halving` time ≠ the consensus step).
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (short); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; validate `master.json`.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain push of your `build/` branches only. Never force main.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** (including `master/sweep-2026-10-09` and `build/kcc20-last-call-2026-10-08`).
- X credits ~$6.75 at sweep end (measured delta $0; estimate ~$0.21). Do not make X calls unless stp asks; the sweep covers X.
- Never share seeds/keys. TN10 never goes to a mainnet kaspa bot. Do not touch TN10 processes (TN10 ops owns them); any TN10 test is read-only or on your own wallet, never the mining address.
- Main merges: kaspa master bot merges on a challenger pass with 0 FAILED at the exact tip (stp OK not required since 8 Oct).

## Standing role
Keep the master current with the kaspa master bot. Checkout for Build: `/workspace/repos/kaspa-master-file` (not the watch clone). Public posts are forbidden. Challenge before merge: any open FAILED item blocks merge until fixed or stp overrides.

## Tasks
1. **Verify** every master item in the report against live sources (KGI `5b6c6b75` / #5 / #6 / status.md; Sutton KTL post + kccforum quote; L1+ε post; P2PKH gist; TN10 health headers; Kas-Smiths counts; block reward).
2. **KGI `5b6c6b75`:** confirm #5 and #6 merge commits and what status.md claims for StorageService vs scaffolds. If cheap, skim NodeService/StorageService crate trees at the tip.
3. **KTL / seed frontier:** confirm the note_tweet text and that this is not already on `build/kcc20-last-call-2026-10-08`. Do not re-state Last Call if that branch already has it.
4. **api-tn10:** recheck `/info/health` (cache-busted, save headers) at least twice; record backend versions and p2pIds.
5. **P2PKH gist:** confirm the gist options and that nothing shipped in wallets (kaspa-builders territory for wallet support).
6. **What to build or test next** (TN10 only, no public posting): short ordered list.
7. Write sourced facts only to `build/2026-10-09`. After push, list commit links in chat.

## The report (inlined)

All times are CEST (Europe/Brussels, UTC+2) unless marked Z. Routine sweep ~07:43–07:55 CEST.
Window: GitHub since `2026-10-08T15:00:11Z`; X since the 8 Oct markers; forum since post 405.

## Branches (never main, never force, zero public actions)

- **kaspa-master-file `master/sweep-2026-10-09`** from `origin/main` [`8a894cc`](https://github.com/STP-KAS/kaspa-master-file/commit/8a894cc93d551d3b4fffa8b23dac87648fff76a4).
  Commits: content [`428364c`](https://github.com/STP-KAS/kaspa-master-file/commit/428364cebad2f666ef5996c2e7a74a2c79b1fbdb), snapshot link [`135bdbb`](https://github.com/STP-KAS/kaspa-master-file/commit/135bdbbf5bc4c6276336e1b53d1a9764e686aae5), Build prompt `prompts/grok-build-2026-10-09.md` (third commit).
  Files: README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-09.md.
- **kaspa-builders:** not committed this run (task scoped to the watch clone). Third-party finds are listed below for a builders sweep / Build.

## Added to the master branch (README Now cells + master.json)

| Item | Source | Cell |
| --- | --- | --- |
| **KGI main [`5b6c6b75`](https://github.com/kaspa-live/kaspa-graph-inspector-rs/commit/5b6c6b75a7f2)** (9 Oct 02:23:54Z): [#6](https://github.com/kaspa-live/kaspa-graph-inspector-rs/pull/6) NodeService lifecycle harden (head `766502da`); [#5](https://github.com/kaspa-live/kaspa-graph-inspector-rs/pull/5) StorageService lifecycle merged 00:39:36Z as `b7222b4c`. status.md (updated 8 Oct) has the first StorageService slice; processing/API still scaffolds. Prior tip `9573d47e`. | commits, PRs, status.md | KGI v2 design |
| **Sutton KTL / seed frontier** [2108225873195212836](https://x.com/michaelsuttonil/status/2108225873195212836) (8 Oct 15:59Z), quoting @kccforum [2108216730992394500](https://x.com/kccforum/status/2108216730992394500): minter frontier + token seed frontier (zero-balance entry with reclaimable KAS lock); first step toward a Kaspa Token Lib (KTL). X, his reading; not a KIP. | X note_tweet | KCC20 reference |
| **L1+ε ladder** [2108272284469182499](https://x.com/michaelsuttonil/status/2108272284469182499) (19:04Z): bounded-size covenant state as lowest rung; O(UTXO set); candidate for a node-level index. | X | Launch proof and binding |
| **Direct P2PKH gist** [04edba7e112756088c515b2949db267b](https://gist.github.com/michaelsutton/04edba7e112756088c515b2949db267b) ([2108333221070930279](https://x.com/michaelsuttonil/status/2108333221070930279)): 37-byte recognizable script; no consensus change; needs standardness + wallet/SDK. Wallet shipping → builders. | X + gist | SilverScript holes |
| **api-tn10 still synced** (9 Oct 05:44:34Z–05:44:37Z): 3× HTTP 200, backends 2.1.0 `82c70f33`/`ba36f18d`; DAA 591914464. | api-tn10 | TN10 public API |
| **Kas-Smiths** 48 / 383 / 113; latest post 405. | about.json, posts.json | Kas-Smiths |
| **Block reward** still 2.06017223 (9 Oct 05:45:22Z, HTTP 200). | api.kaspa.org | Block reward (JSON) |

## Already on open branches — not re-added

- **KCC-20 Last Call** (kccs#31 → `3fbec524`, file `Status: Last Call`) and **kcc20-reference#1** merge `c8a08711`: on `build/kcc20-last-call-2026-10-08` (not in main). Verified live: kcc-0020.md header Last Call; #1 merged 7 Oct 19:50Z.
- Kas-Smiths post 404 (Ross, KCC-20 slot limits): on that same build branch.
- core_replies: paused since 5 Oct verdict.

## kaspa-builders candidates (third-party; not committed here)

- **x402:** [#28](https://github.com/elldeeone/kaspa-x402/pull/28) merged 9 Oct 00:12:42Z as [`36f5136c`](https://github.com/elldeeone/kaspa-x402/commit/36f5136c) ("Harden payment authorization and exact retries"); main tip that SHA; tag still `v1.0.0-rc.2`.
- **KaChat:** tip [`a632f81f`](https://github.com/vsmirn0v/KaChat/commit/a632f81f) (9 Oct 04:24Z): many IOS-0xx / XP-0xx fixes after `1be4f6e6` (registry v4 docs, fee bounds, name paging, address book, etc.).
- **KPI:** #22 merged 8 Oct 18:22:45Z as `e4a10390`; tip [`ccbdfbc7`](https://github.com/olafweller/kaspa-privacy-initiative/commit/ccbdfbc7) (#29 RFC-0001 comparison). S0 trials doc + WellerOlaf [2108265950642577442](https://x.com/WellerOlaf/status/2108265950642577442) already partly on `build/kpi-s0-trials-2026-10-08` (`poc-a1-s0-trials`, `ccbdfbc7`).
- **OpenMiner / ReconProtocol:** [2108258975208595946](https://x.com/ReconProtocol/status/2108258975208595946) Goldshell KA Box (relay; openminer-reference already has IEN616).
- **P2PKH / hashed-address wallet talk** (Sutton gist + elldeeone pointing at kaspa.org hashed_addresses wallet list): wallet support entry.

## Per source

- **X credits.** Start **$6.75** (prepaid 6.75, free 0, no grants). End **$6.75** (same read after billed calls; measured delta **$0.00** — billing may lag). Desk estimate of resources returned ≈ **$0.21** (core 12 posts + 2 users; community 6 + 4; get_posts_by_ids 8 + includes; at $0.005/post, $0.01/user). Under the $1.00 hard cap. **Flag:** overnight drop from 8 Oct end **$11.82** → **$6.75** (~$5.07 unexplained; not this sweep). Balance **above $3**; free-grant expiry **24 Oct 2026** (~15 days) — warn.
- **X core** (`since_id` 2108170978173821106 → **2108359772303192169**, newest 9 Oct 02:51:55Z): 12 posts; `next_token` present, not paginated (soft budget). **community** → **2108310112712774080** (8 Oct 23:34:36Z): 6 posts; next_token not followed. **deshe:** 0, held 2103861631738667208. **KaspaScopio:** 0, held 2107917085057646746. **core_replies:** paused, not run.
- **GitHub:** core kaspanet quiet (no commits/PR updates since marker on vprogs/kccs/silverscript/rusty-kaspa/argent). Changed: KGI `5b6c6b75`, x402 `36f5136c`, KaChat `a632f81f`, KPI `ccbdfbc7`. Heads held: rusty-kaspa master `01b532e8` / tn10 `e5f6d1f7` / dagknight `ad45e241`; vprogs master `f9b84a86` / RC `cc0d54bc`; silverscript `3ed97333`; kccs `3fbec524`; argent `9a9f4b10`; tictactoe `35defd29`.
- **Tags** (ls-remote, 11 repos): unchanged vs 8 Oct (rusty-kaspa v2.1.0, silverscript v1.0.0, x402 v1.0.0-rc.2, dotk-indexer v1.1.1, …).
- **Kas-Smiths:** 48 / 383 / 113; latest_post_id still 405 (no new post above 405; post_count +1 vs 8 Oct's 382). **research.kas.pa:** newest topic still 522.

## TN10 (testnet-10)

- **api-tn10 healthy on 9 Oct morning.** 3 cache-busted `/info/health` reads 05:44:34Z–05:44:37Z (07:44 CEST): all **HTTP 200**, Cloudflare `MISS`, `database.isSynced` true, `blueScoreDiff` 2–16, `acceptedTxBlockTimeDiff` 1, backends kaspad **2.1.0** (`82c70f33`, `ba36f18d`). `/info/blockdag` 200 at 05:44:39Z, DAA **591914464**. Headers saved (`raw/2026-10-09/hdr-tn10-*`).
- I did not touch n0, the miners or any TN10 process.
- **FYI for TN10 ops:** none urgent (public API synced). Optional: W-F4 DESK-BOT.md "Resyncing" still open.

## Gaps

- X measured credit delta $0 despite ~$0.21 estimated resources (possible billing lag).
- Overnight ~$5.07 credit drop (8 Oct $11.82 → 9 Oct $6.75) unexplained.
- KCC-20 Last Call still only on `build/kcc20-last-call-2026-10-08`, not main — main README KCC cells remain Draft/#31-open wording until that branch merges.
- Community/core `next_token` not followed (soft budget).

## Carry-overs

- Applied: tag scan (unchanged); core_replies skipped; builders finds recorded for builders (not applied in this clone).
- Still open: W-F4 (TN10 ops), old out-of-order SNAPSHOT pairs, item 13 (stp), Sutton "too much" optional, KPI wording advisories optional, master SilverScript-holes x402 #22 merged wording optional.

## Flags for stp / parent

- Ask **kaspa master challenge** for a pass on `master/sweep-2026-10-09` tip (after prompt commit; files README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-09.md).
- Merge on 0 FAILED at exact tip (PROCESS.md 8 Oct rule); no stp OK needed.
- Also still unmerged and substantive: `build/kcc20-last-call-2026-10-08` (KCC-20 Last Call + reference merge) — challenge/merge when ready.
- X credits $6.75; free grant expiry 24 Oct 2026; overnight unexplained ~$5 drop.
- TN10 FYI: none urgent.

## State

`/workspace/artifacts/kaspa-master-watch/state.json` (updated; backup `state.json.bak-2026-10-09`). Raw: `/workspace/artifacts/kaspa-master-watch/raw/2026-10-09/`.

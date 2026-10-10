# Prompt for Grok Build — independent analysis of the 10 Oct 2026 Kaspa watch findings

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (watch sweep, 10 Oct ~07:44–08:00 CEST). It updated branch `master/sweep-2026-10-10` on https://github.com/STP-KAS/kaspa-master-file. Do **not** trust the report. Analyse it your own way.

## Branch for your work
Use branch **`build/2026-10-10`** (create from current `origin/main`). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`.

Note: `build/vprogs-workshop-2026-10-09` still holds Max's workshop book + tictactoe `f93e52fe` and is not in main — do not repeat that work; you may verify and, if useful, merge-prep wording once that branch's challenge is clean. Other open build branches are not merged; do not repeat what they already hold.

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-10.md` on `master/sweep-2026-10-10`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, X, Facebook). No reactions, issues, PRs, tags or releases. A new sourced fact goes into the master file and stops there.
- **Master is core-only (stp, 4 Oct 2026).** Third-party projects (KPI, KaChat, DOTK, Kastle, OpenMiner, x402, …) live in STP-KAS/kaspa-builders; cite it only with its caveat. Send third-party finds to kaspa master bot; do not add them to the master.
- Cite a URL for every claim. Record times with zone (CEST in chat; Z fine in the master).
- No fabrication. If you cannot verify, say "not verified". Never claim an HTTP status without saved headers.
- Merged Active KIP is law. An open PR, a branch, a demo, or a tweet is not. Do not weld objects (`release-candidate` tip ≠ release; KCC-20 Last Call ≠ Final; a StorageService slice ≠ full KGI; Sutton's KTL vision ≠ a shipped lib; a P2PKH gist ≠ wallet support; api-tn10 200 ≠ proof a payment landed; `/info/halving` time ≠ the consensus step; an APPROVED PR ≠ merged; #1146 author's mempool report ≠ a confirmed consensus bug).
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (short); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; validate `master.json`.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain push of your `build/` branches only. Never force main.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** (including `master/sweep-2026-10-10` and `build/vprogs-workshop-2026-10-09`).
- X credits ~$6.75 at sweep end (measured delta $0; estimate ~$0.18). Do not make X calls unless stp asks; the sweep covers X.
- Never share seeds/keys. TN10 never goes to a mainnet kaspa bot. Do not touch TN10 processes (TN10 ops owns them); any TN10 test is read-only or on your own wallet, never the mining address.
- Main merges: kaspa master bot merges on a challenger pass with 0 FAILED at the exact tip (stp OK not required since 8 Oct).
- Do not name private STP-KAS repos in the master.

## Standing role
Keep the master current with the kaspa master bot. Checkout for Build: `/workspace/repos/kaspa-master-file` (not the watch clone). Public posts are forbidden. Challenge before merge: any open FAILED item blocks merge until fixed or stp overrides.

## Tasks
1. **Verify** every master item in the report against live sources (TN10 health headers + backend versions/p2pIds; rusty #1146 body; #1135 approval + head `aaa5f25f`; #1141 CHANGES_REQUESTED; Kas-Smiths about.json + posts 408/409/410; KCC20.ag L192 cite; block reward).
2. **api-tn10:** recheck `/info/health` (cache-busted, save headers) at least twice; record **all** backend versions and p2pIds (expect mixed 2.1.0 and 2.0.1). Do not say 2.1.0-only from one sample.
3. **#1146:** confirm the issue text; if cheap, spot-check whether a public api-tn10 mempool sample still shows already-accepted txs (read-only). Do not claim a root cause.
4. **#1135 / #1141:** confirm review states and heads; do not mark merged.
5. **Kas-Smiths 408:** confirm Sutton's batch-leader wording vs the live post; confirm it is not already only on another branch in a stronger form.
6. **What to build or test next** (TN10 only, no public posting): short ordered list.
7. Write sourced facts only to `build/2026-10-10`. After push, list commit links in chat.

## The report (inlined)


All times are CEST (Europe/Brussels, UTC+2) unless marked Z. Routine sweep ~07:44–08:00 CEST.
Window: GitHub since `2026-10-09T05:45:00Z`; X since the 9 Oct markers; forum since post 405.

## Branches (never main, never force, zero public actions)

- **kaspa-master-file `master/sweep-2026-10-10`** from `origin/main` [`cf44ce5`](https://github.com/STP-KAS/kaspa-master-file/commit/cf44ce5).
  Commits: content [`31c86ac`](https://github.com/STP-KAS/kaspa-master-file/commit/31c86ace9a3766564b1dbcf22b2143a42753ad85), snapshot link [`622d9b7`](https://github.com/STP-KAS/kaspa-master-file/commit/622d9b7) (after a no-op middle link commit `b028b19`), Build prompt (next).
  Files: README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-10.md.
- **kaspa-builders:** not committed this run (task scoped to the watch clone). Third-party finds are listed below for a builders sweep / Build.

## Added to the master branch (README Now cells + master.json)

| Item | Source | Cell |
| --- | --- | --- |
| **api-tn10 still synced, mixed pool** (10 Oct 05:45:49Z–05:45:53Z): 6× HTTP 200, Cloudflare MISS; backends **2.1.0** `82c70f33`/`ba36f18d` and **2.0.1** `82e9e396`; DAA **592766360**. Not 2.1.0-only. | api-tn10 | TN10 public API |
| **rusty-kaspa [#1146](https://github.com/kaspanet/rusty-kaspa/issues/1146)** (opened 9 Oct 19:27:08Z, oskrcl): synced TN10 node mempool stuck ~2432 with zero rotation; sampled txids already `is_accepted: true` on public API. Author's account; not desk-reproduced. | GitHub issue | TN10 public API / Not live |
| **[#1135](https://github.com/kaspanet/rusty-kaspa/pull/1135)** head `aaa5f25f`, IzioDev **APPROVED** 9 Oct 14:36:19Z (not merged). | PR reviews | Not live / rusty#1135 |
| **[#1141](https://github.com/kaspanet/rusty-kaspa/pull/1141)** someone235 **CHANGES_REQUESTED** 10 Oct 05:03:19Z (head still `11aca108`). | PR reviews | Not live |
| **Kas-Smiths** 49 / 386 / 113; latest post [410](https://kas-smiths.org/t/fungible-token-covenant-specification-kcc20/8/76). Sutton [408](https://kas-smiths.org/t/fungible-token-covenant-specification-kcc20/8/75): batch leader not in KCC-20 standard. Topic [160](https://kas-smiths.org/t/high-bps-covenant-state-pressure-utxo-contention-storage-mass-and-settlement-frequency-seeking-corrections/160) unanswered. | about.json, posts.json | Kas-Smiths / KCC20 reference |
| **Block reward** still 2.06017223 (10 Oct 05:45:55Z, HTTP 200). | api.kaspa.org | Block reward (JSON) |

## Already on open branches — not re-added

- **Max workshop book** [vprogs: a based rollup on Kaspa](https://biryukovmaxim.github.io/vprogs-workshop/) + posts [2108538746995892673](https://x.com/Max143672/status/2108538746995892673) / Sutton [2108546165272657952](https://x.com/michaelsuttonil/status/2108546165272657952); tictactoe tip `f93e52fe`: on `build/vprogs-workshop-2026-10-09` (not main). Live tip still `f93e52fe`.
- core_replies: paused since 5 Oct verdict.

## kaspa-builders candidates (third-party; not committed here)

- **x402 [#29](https://github.com/elldeeone/kaspa-x402/pull/29)** still open ("Make durable state atomic and bounded", head `86d72630`) — carry-over from 9 Oct builders.
- **KaChat** tip [`d1217159`](https://github.com/vsmirn0v/KaChat/commit/d1217159) (10 Oct 03:56Z): many IOS-0xx commits after `a632f81f` (names mainnet countdown Fri Oct 16 8:00 AM Eastern, etc.).
- **kastle** tip [`4f022739`](https://github.com/forbole/kastle/commit/4f022739) (9 Oct 10:24Z): #390 Node 24 + drop native canvas merged.
- **KaspaScopio:** Ledger KAS service disruptions [2108641399184712076](https://x.com/KaspaScopio/status/2108641399184712076); KasVault StakePool v2 `drain` question [2108572722825417067](https://x.com/KaspaScopio/status/2108572722825417067); KaChat sender-verify note [2108468454202245488](https://x.com/KaspaScopio/status/2108468454202245488).
- **KASPAglobal** wallet-safety clipboard [2108478982098161853](https://x.com/KASPAglobal/status/2108478982098161853) (P2PKH + TN10 vault demo relay).
- **ReconProtocol** covenant categories / Last Call thread [2108612538157916395](https://x.com/ReconProtocol/status/2108612538157916395) (community narrative).

## Per source

- **X credits.** Start **$6.75** (prepaid 6.75, free 0, no grants). End **$6.75** (same read after billed calls; measured delta **$0.00** — billing may lag). Desk estimate of resources returned ≈ **$0.18** (core 5 posts + 4 users; community 11 + 6; KaspaScopio 5 + 1; get_posts_by_ids 4 + includes; at $0.005/post, $0.01/user). Under the $1.00 hard cap. Balance **above $3**. Free-grant expiry historically noted **24 Oct 2026** (~14 days) — warn (current credits read shows no free_grants listed; prepaid only).
- **X core** (`since_id` 2108359772303192169 → **2108721648652386702**, newest 10 Oct 00:49:53Z): 5 posts; `next_token` present, not paginated (soft budget). Substantive: Max book + Sutton quote (already on workshop branch). **community** → **2108642849583505896** (9 Oct 19:36:46Z): 11 posts; next_token not followed. **deshe:** 0, held 2103861631738667208. **KaspaScopio:** → **2108663808764039588** (9 Oct 21:00:03Z): 5 posts. **core_replies:** paused, not run.
- **GitHub:** pulls fetch tested first on vprogs (non-empty). Core kaspanet quiet on commits. Changed/updated: rusty-kaspa #1135/#1141/#991/#1094 activity + #1146; KaChat 28 commits; kastle #390 merged; x402 #29 open. Empty `[]` pulls for three supertypo/dotk-* repos (no open PRs) — logged, not silent. Heads held: rusty-kaspa master `01b532e8` / tn10 `e5f6d1f7` / dagknight `ad45e241`; vprogs master `f9b84a86` / RC `cc0d54bc`; silverscript `3ed97333`; kccs `3fbec524`; argent `9a9f4b10`; KGI `5b6c6b75`; tictactoe live `f93e52fe` (main cell still `35defd29` until workshop branch merges).
- **Tags** (ls-remote, 11 repos): unchanged (rusty-kaspa v2.1.0, silverscript v1.0.0, x402 v1.0.0-rc.2, dotk-indexer v1.1.1, dotk-core v0.13.1, …).
- **Kas-Smiths:** 49 / 386 / 113; latest_post_id **410**. **research.kas.pa:** newest topic still 522.

## TN10 (testnet-10)

- **api-tn10 healthy on 10 Oct morning, mixed pool.** 6 cache-busted `/info/health` reads 05:45:49Z–05:45:53Z (07:45 CEST): all **HTTP 200**, Cloudflare `MISS`, `database.isSynced` true, `blueScoreDiff` 6–41, `acceptedTxBlockTimeDiff` 0–2. Backends: kaspad **2.1.0** (`82c70f33`, `ba36f18d`) and **2.0.1** (`82e9e396`). `/info/blockdag` 200 at 05:45:54Z, DAA **592766360**. Headers saved (`raw/2026-10-10/hdr-tn10-*`).
- **#1146** is a public TN10 node report (sticky mempool with already-accepted txs). FYI for TN10 ops: worth a look if n0/miners show the same; I did not touch n0, the miners or any TN10 process.
- Carry-over W-F4 DESK-BOT.md "Resyncing" still open (TN10 ops area).

## Gaps

- X measured credit delta $0 despite ~$0.18 estimated resources (possible billing lag).
- Overnight unexplained credit drop from 8 Oct still noted historically ($11.82 → $6.75); no new overnight drop today.
- Max workshop / tictactoe `f93e52fe` still only on `build/vprogs-workshop-2026-10-09`, not main.
- Community/core `next_token` not followed (soft budget).
- 9 Oct challenge: raw gh-pulls empty-body bug — fixed today (test fetch + fail-loudly; three genuine empty `[]` for repos with no PRs).

## Carry-overs

- Applied: tag scan (unchanged); core_replies skipped; TN10 mixed-pool wording; gh-pulls non-empty check; blockreward filename correct; #1146/#1135/#408 filed.
- Still open: W-F4 (TN10 ops), old out-of-order SNAPSHOT pairs, item 13 (stp), optional Sutton "too much", optional KPI wording, optional SilverScript-holes x402 #22 merged wording, builders x402 #29, Argent→rossku link after builders merge (builders branch may already be merging).

## Flags for stp / parent

- Ask **kaspa master challenge** for a pass on `master/sweep-2026-10-10` tip (after prompt commit; files README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-10.md).
- Merge on 0 FAILED at exact tip (PROCESS.md 8 Oct rule); no stp OK needed.
- Also still unmerged and substantive: `build/vprogs-workshop-2026-10-09` (Max book + tictactoe `f93e52fe`).
- X credits $6.75; free-grant window historically 24 Oct 2026.
- **TN10 FYI:** mixed pool still includes 2.0.1 `82e9e396`; open issue #1146 (sticky mempool / accepted txs).

## State

`/workspace/artifacts/kaspa-master-watch/state.json` (updated; backup `state.json.bak-2026-10-10`). Raw: `/workspace/artifacts/kaspa-master-watch/raw/2026-10-10/`.

# Prompt for Grok Build — independent analysis of the 7 Oct 2026 Kaspa watch findings

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (watch sweep). It updated branch `master/sweep-2026-10-07` on https://github.com/STP-KAS/kaspa-master-file. Third-party finds are listed for later kaspa-builders handling and were not committed anywhere. Do **not** trust the report. Analyse it your own way.

## Branch for your work
Use branch **`build/2026-10-07`** (create from current `origin/main`, which is `b7c52de`). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`.

All of `build/2026-10-05`, `build/2026-10-06`, `master/sweep-2026-10-06` and `master/weekly-fixes-2026-10-06` are merged into main; nothing from them is pending.

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-07.md` on `master/sweep-2026-10-07`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, X, Facebook). No reactions, issues, PRs, tags or releases. A new sourced fact goes into the master file and stops there.
- **Master is core-only (stp, 4 Oct 2026).** The master is your default source. Third-party projects (KPI, KasperoLabs, KaChat, DOTK, Kastle, OpenMiner, KasNodes, Magma/Lava, x402, Zelcore …) live in STP-KAS/kaspa-builders; cite it only when a task names a third-party project, always with its caveat (third-party, not audited, demo, not desk-tested). Send third-party finds to kaspa master bot for kaspa-builders; do not add them to the master.
- Cite a URL (commit, PR, issue, post, release) for every claim. Record times with zone (CEST in chat; Z fine in the master).
- No fabrication. If you cannot verify, say "not verified".
- Merged Active KIP is law. An open PR, a branch, a demo, or a tweet is not. Do not weld objects (`release-candidate` tip ≠ release; #172 open ≠ merged; an incident doc ≠ something this desk observed; silverscript#257 open ≠ silverscript building from crates.io; Argent #68 open ≠ Argent master; Manyfest/Sutton X replies ≠ a KIP or KCC; api-tn10 503 ≠ a TN10 stall; api-tn10 200 ≠ proof a payment landed).
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (short); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; validate `master.json`.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain push of your `build/` branches only. Never force main.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** (including `master/sweep-2026-10-07`) so you do not duplicate this sweep or other open work.
- Weekly reread W-F4 (TN10 ops' area) stays with its owner; W-F2/W-F6/W-F8/W-F10 are fixed on main.
- **X credits are at $0.00 (prepaid −$1.68).** Do not make any X call.
- Never share seeds/keys. TN10 never goes to a mainnet kaspa bot. Do not touch TN10 processes (TN10 ops owns them); any TN10 test is read-only or on your own wallet, never the mining address.

## Standing role
Keep the master current with the kaspa master bot. Checkout for Build: `/workspace/repos/kaspa-master-file` (not the watch clone). Read the whole master periodically; fix stale lines against live sources. Public posts are forbidden. Challenge before merge: any open FAILED item blocks merge until fixed or stp overrides. Main merges only when challenge is clean **and** stp explicitly OKs (kaspa master bot is the merger).

## Tasks
1. **Verify** every master item in the report against live sources. Flag wrong or stale lines (README vProgs, tictactoe, Argent, Launch proof, SilverScript holes, TN10 public API cells; master.json mirrors and the intel-freeze "Block reward" row).
2. **vprogs `ec0deeef` / #172:** confirm the 8-commit list after `5da27851`, that the last four are not in #172, and the incident-doc quotes. If cheap, run `cargo test -p vprogs-zk-aggregate-prover --test committed_gap_receipt_miss` (and the 4 Oct `vprogs-l1-wallet` suite) at `ec0deeef`; record results with toolchain. Desk note (your words, file+line at `ec0deeef`): why "commit before prove" made the 6 Oct gap uncoverable, and what the new walk floor is.
3. **silverscript#257 (`c70cac93`):** does `cargo check` / `cargo test` pass against crates.io 2.1.0? Compare its API edits with the desk's 28 Sep #256 edits (`max_signature_script_len`, `MAX_OPS_PER_SCRIPT` etc.). Desk test only; no PR, no comment.
4. **Argent #68 (`21880aa5`):** what changes in emitted Sil/script for the current actor; does the `stones` artifact change only in length encoding? Any effect on template hashes?
5. **api-tn10:** recheck `/info/health` (cache-busted, save headers) at least twice during your pass; record when `database.isSynced` is true again and which kaspad versions answer.
6. **Block reward:** confirm 2.06017223 and the 4 Nov 13:56:20 UTC step (1.94454365) against rusty-kaspa's emission schedule or a synced mainnet node (read-only).
7. **What to build or test next** (TN10 only, no public posting): short ordered list.
8. Write sourced facts only to `build/2026-10-07`. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch: daily report, 7 Oct 2026 (Wednesday)

All times are CEST (Europe/Brussels, UTC+2) unless marked Z. Sweep ~07:46–08:10.
Window: GitHub since `2026-10-06T02:12:28Z` (newest `updated_at` of the 6 Oct sweep); X since the 6 Oct markers; forum since post 402.
Branch: kaspa-master-file `master/sweep-2026-10-07` (fresh from main `b7c52de`). Never main. Zero public actions. No kaspa-builders branch today (third-party finds are listed below for later handling).

Commits (kaspa-master-file): content [`2e8fb00`](https://github.com/STP-KAS/kaspa-master-file/commit/2e8fb0036cd23d352eb67ef2f591a94c4d09ba04), snapshot link [`fc6bd88`](https://github.com/STP-KAS/kaspa-master-file/commit/fc6bd88), Build prompt `prompts/grok-build-2026-10-07.md` (third commit; hash in the stp summary).

## Added to the master branch (README Now cells + master.json)

| Item | Source | Cell |
| --- | --- | --- |
| **vprogs `release-candidate` `5da27851` → [`ec0deeef`](https://github.com/kaspanet/vprogs/commit/ec0deeefccb20b0debc03e32aed66a2912c4c6cf)** (6 Oct 15:34Z), 8 commits: first four = [#172](https://github.com/kaspanet/vprogs/pull/172) head `7e7d1b79` (opened 13:36Z; [#171](https://github.com/kaspanet/vprogs/pull/171) same head closed and reopened from a same-repo branch to join the stack; base `fix/unmapped-boundary-tip-drain`; no review); last four (`ead2e5d0`, `e10e6deb`, `cc125b9c`, `ec0deeef`) are on RC only. **6 Oct gpu-prover wedge** per the incident doc [`2026-10-06-cuda-invalid-proof-wedge.md`](https://github.com/kaspanet/vprogs/blob/ec0deeefccb20b0debc03e32aed66a2912c4c6cf/docs/superpowers/issues/2026-10-06-cuda-invalid-proof-wedge.md): 09:08Z the live gpu prover (build `055ae28`) got an invalid risc0 CUDA proof segment (cites [risc0/risc0#3760](https://github.com/risc0/risc0/issues/3760), risc0-zkvm 3.0.5; upstream issue is closed, doc says 3.0.6 does not fix it); `.expect` killed the prove thread after batch 1881878 committed; settlements froze; restart idled (1881878..=1929858 uncovered). Fix: rollback + bridge re-feed + re-prove; up to 3 prove attempts with `Receipt::verify`. Postscripts 14:34Z / 15:26Z: two live recovery runs failed and the walk floor was reworked. Author's account; network not named. Not merged, not a release. | branch API, compare, PR bodies, doc at `ec0deeef` | vProgs |
| tictactoe tip [`94a86c26`](https://github.com/biryukovmaxim/vprog-tictactoe/commit/94a86c267a1eccb2a1d56d28845b4291d305223b) (6 Oct 15:44Z) pins RC `ec0deeef` (locks only; `84988b18` → `7e7d1b79`, `ac0a7574` → `e10e6deb` earlier the same day). README L26 still names `fix/settlement-watch-wedge`. | commits | tictactoe |
| Argent open [#68](https://github.com/argent-lang/argent/pull/68) (Sutton, 6 Oct 15:05Z, `21880aa5`): current-actor template lengths as fixed-width `byte[4]` constants (one fill-in pass) instead of hidden length arguments; foreign witnesses unchanged; 5 files incl. `stones` example. Master `232c6ee6` holds. | PR body/files | Argent |
| SilverScript open [#257](https://github.com/kaspanet/silverscript/pull/257) (someone235, opened 6 Oct 10:38Z, commit `c70cac93` 4 Oct 20:34Z): rusty-kaspa deps from git rev to **crates.io v2.1.0**, with the #256-style API edits (no `covenants_enabled`, script-limit constants, renamed sig-script limit field, numeric deser arg); `spin` 0.9.8 (yanked) → 0.9.9; 20 files. No review. | PR body/files | SilverScript holes |
| Manyfest [2107373867396182019](https://x.com/manyfest_/status/2107373867396182019) (6 Oct 07:34Z, reply in Sutton's two-categories thread): node enforces KAS conservation for vault-type covenants; for state covenants the genesis creates "second-degree matter" the node can't see, so the covenant must enforce its conservation. Sutton [2107536837522678263](https://x.com/michaelsuttonil/status/2107536837522678263) (18:21Z) answered a "hidden `terminate()` backdoor" worry with "no doubt. hence" quoting his 2 Oct genesis-proof post 2106033659698450492. | X | Launch proof and binding |
| **Block reward 2.06017223** ([/info/blockreward](https://api.kaspa.org/info/blockreward), 07:54; virtual DAA 559,321,971 — the DAA 557,505,000 step fired). Next **1.94454365** on 4 Nov 2026 13:56:20 UTC ([/info/halving](https://api.kaspa.org/info/halving)). ReconProtocol's 6 Oct post ([2107509909688389823](https://x.com/ReconProtocol/status/2107509909688389823)) said the same; the pin is the API read. | api.kaspa.org | master.json intel-freeze "Block reward" row |
| **api-tn10 indexer behind** (details under TN10). 6 Oct recheck sentence moved verbatim to SNAPSHOT-HISTORY ("Moved from README on 7 Oct 2026"). | api-tn10 | TN10 public API |

## For kaspa-builders (third-party; NOT added anywhere yet — for later handling)

- **kaspa-x402 #22 merged** 7 Oct 05:47Z → main [`3f7b6df2`](https://github.com/elldeeone/kaspa-x402/commit/3f7b6df2daee96ffd363150b1a080e8ca3c384b8) (PR head `7ada3009`, 4 commits incl. three 7 Oct funded-proof fixes). Signer-chosen sighash (all six types) in covenants; template ids/compiled scripts change; per the PR, funded TN10 validation at `7ada300`: 18/18 normal-flow checks, 6 sighash modes × 12 lifecycle cases, 48 accepted txs, 12 negative checks. No new tag (v1.0.0-rc.2 still latest). → builders entry x402 (the master's SilverScript-holes reasoning line already cites #22; may want "merged 7 Oct").
- **Kastle:** #372/#387/#388 closed unmerged 6 Oct 07:21Z; superseded by [#389](https://github.com/forbole/kastle/pull/389) `fc7b6497` "KCC-20 tokens — display, transfer, and swap" (open). #381 dotK head → `d0d0109d`. #390 Node 24 chore. → wallets-kcc20 / name-services.
- **KaChat:** ~60 commits 6 Oct (tip [`c6bd7161`](https://github.com/vsmirn0v/KaChat/commit/c6bd7161606843181509d514f64b07437fd1847b)): `.kachat` marketplace/Reclaimable/Activity tabs, "bundle the live testnet-10 registry v3 and pin its templates" (`32b7b325`), and a batch of audit-tagged fixes (IOS-0xx/XP-0xx, e.g. "Cold Storage: only SIGHASH_ALL signatures are broadcast", "Push: the extension no longer keeps decrypted messages in plain text"). → name-services / wallets.
- **Zelcore TS library** (via KaspaScopio reply [2107407655820275993](https://x.com/KaspaScopio/status/2107407655820275993) to Zelcore [2107391084615893260](https://x.com/zelcore_io/status/2107391084615893260)): MIT, pure TypeScript, no WASM/Rust toolchain, "verified against rusty-kaspa", on-device signing; Zelcore's own switch not shipped. Likely RunOnFlux/kaspa-core (watchlisted; main still `4cf8f35b`) — not verified. → node-tools/wallets.
- **KASPAglobal roundup** [2107378595286966450](https://x.com/KASPAglobal/status/2107378595286966450): dotK mainnet name marketplace with kaspirewallet listings; @brt2412 vault deposits/withdrawals tested on TN10; Magma "block-number searches still fail". Relay only; unverified.
- **KPI** (olafweller) #22 draft head → `575d0e93`; WellerOlaf asked about a community channel (poll-style post). **onlykas** (danieliyahu1) creator-directory commits. **parker2017code/kaspa-explained** source-audit commits (third-party explainer).
- Not added (chatter/marketing): kaspaunchained "Kaspa." / "permissionless network"; Kaspa_Commons Solana DvP quote; ReconProtocol Bittensor + Commons quote; KasperoLabs slogan; BankQuote KCC explainer [2107608445868491122](https://x.com/BankQuote/status/2107608445868491122) (accurate summary of KCC-1/2 Last Call + KCC-20, nothing new); elldeeone codex complaints.

## Already on main / other branches — not re-added

- KCC-1/KCC-2 Last Call (BankQuote/Recon restate it) — on main.
- Sutton 2106033659698450492 (genesis-proof link) — on main; only the new reply pointing at it was added.
- Searched main + every origin branch for: `ec0deeef`, `e10e6deb`, `7e7d1b79`, #172, 3760, CUDA, 1881878, `94a86c26`, silverscript pull/257, `rk-2.1.0`, argent pull/68, `21880aa5`, `3f7b6df2`, `7ada3009`, 2.06017223, 1.94454365, 2107373867396182019, 2107536837522678263, "second degree", brt2412 — no hits before this sweep (CUDA hits were older unrelated tictactoe/prover notes).

## Per source

- **X credits.** Before **$1.58** (07:50; prepaid $1.58, free $0, no free grants). After **$0.00** total (08:00; **prepaid −$1.68**). This sweep's own calls: 19 posts + 12 users ≈ **$0.22** at live pricing ($0.005/post, $0.01/user) — at/just over the ~$0.20 soft cap, under the $1 hard cap. The balance fell **$3.26** during the sweep window, so ~**$3.04 is not from this sweep** (another consumer or delayed billing). Overnight (6 Oct 08:58 → 7 Oct 07:50) it also fell $6.42 → $1.58 with no sweep running.
- **X core** (`since_id` 2107329950793826444): 4 posts + `next_token`; gap-fill (`until_id` = oldest) returned 0. Substantive: Manyfest's framing, Sutton's backdoor reply. elldeeone: off-topic.
- **X community** (`since_id` 2107238631266034003): 10 posts + `next_token`; gap-fill 0. All relays/marketing/commentary (see builders list).
- **X deshe:** 0; `since_id` held. **KaspaScopio:** 1 (Zelcore reply). **Full-text reads:** 3 posts (BankQuote, KASPAglobal note_tweets; the weirdtualguy question Sutton answered).
- **core_replies:** paused (5 Oct verdict) — not run.
- **GitHub (61 repos):** rusty-kaspa, kccs, kips quiet (no commits, PR or issue updates). silverscript #257 new; #256 unchanged since 29 Sep. vprogs: RC `ec0deeef`, #171→#172, #127 restacked (23 commits, last 14:45Z; no new review). Heads hold: rusty-kaspa master `01b532e8`, `tn10` `e5f6d1f7` (5 Jun), `dagknight` `ad45e241`; vprogs master `f9b84a86`; silverscript `3ed97333`; kccs `411b41bc`; kips `e4ae2332`; argent `232c6ee6`; KGI `95be668f`; dotk-* unchanged. Tags via `git ls-remote` unchanged on all 11 scanned repos. No new kaspanet releases.
- **Kas-Smiths:** 48 / 379 / 113; latest public post 402 (no change). **research.kas.pa:** newest topic still 522 (8 Sep).
- **Mainnet API:** blockreward 2.06017223; halving endpoint next 1.94454365 at 2026-11-04 13:56:20 UTC. Raw saved.

## TN10 (testnet-10)

- **api-tn10 public API degraded at 07:55–07:58:** 12 cache-busted `/info/health` reads (05:55:43Z–05:58:34Z, server Date headers) all **HTTP 503**, Cloudflare MISS, `database.isSynced` **false**, accepted-tx clock 05:29:19Z → 05:37:38Z (`acceptedTxBlockTimeDiff` 1237–1590 s ≈ 20–26 min behind, catching up). kaspad backends all synced + UTXO-indexed: 2.0.0 (`e13cc6c8`), 2.0.1 (`965d43fe`, `82e9e396`); no 2.1.0 seen. One earlier un-busted read (07:54:44) was 200 / isSynced true. `/info/blockdag` 200 and TN10 DAA advancing (590,196,952 → 590,197,190 in 21 s), so the network moves; the API's indexer DB lags. Anyone checking TN10 payments via api-tn10 right now gets stale data — read a synced node (PROCESS rule). **TN10 ops may want to know** (desk node, stress tests, x402 checks).
- **vprogs gpu-prover wedge 6 Oct** (network not named in the doc; earlier vprogs incidents were TN10): risc0 CUDA invalid proof → frozen settlements → restart wedge; fix on RC `ec0deeef` / #172. Anyone running vprogs from RC now gets behaviour changes (rollback on startup, prove retries) vs `5da27851`.
- Third-party TN10: kaspa-x402 #22 merged with funded TN10 validation (author's); KaChat bundles TN10 registry v3; brt2412 vault test on TN10 (relay).
- rusty-kaspa `tn10` branch unchanged since 5 Jun. I did not touch n0, the miners or any TN10 process.

## Carry-overs

- Nothing applied today (none of the open items is a daily-row fix).
- Still open: W-F4 (DESK-BOT TN10 status; TN10 ops), old out-of-order SNAPSHOT pairs (dedicated pass), item 13 (waits on stp), core_replies paused, tag scan (done today; unchanged). kaspa-builders advisories from cbab972 wait for the next builders sweep.
- Note: carry-over W-F2/W-F6/W-F8/W-F10 were fixed on `master/weekly-fixes-2026-10-06`, which is merged into main; carryover.md updated to say so.

## Open questions for Build (`build/2026-10-07`)

1. Verify the vprogs RC `ec0deeef` lines: commit list vs `5da27851`, that #172 head is `7e7d1b79`, and the incident-doc quotes (09:08Z, batch 1881878, 1881878..=1929858, two postscripts). If cheap, run `cargo test -p vprogs-zk-aggregate-prover --test committed_gap_receipt_miss` at `ec0deeef`.
2. silverscript #257: does `cargo check`/`cargo test` pass at `c70cac93` against crates.io 2.1.0? Compare its edits with the desk's 28 Sep #256 edits.
3. Argent #68: confirm the template-length change and whether it alters compiled `stones` artifacts (the PR rewrites `artifact.json`).
4. api-tn10: recheck later in the day; record when `database.isSynced` returns true.
5. Block reward: confirm 2.06017223 and the 4 Nov step from a synced mainnet node if one is available (read-only).

## Flags for stp / parent

- **X credits exhausted: $0.00 total, prepaid −$1.68** after the sweep (was $1.58 at 07:50; $6.42 yesterday 08:58). This sweep used ≈$0.22; ~$3.04 of today's drop and the overnight $4.84 drop are from something else. **Balance is under $3** (flag). The 24 Oct free grant is gone (no free grants listed). Further X reads will fail or overdraw until topped up. **api x top up should investigate who is spending** and stp decides on a top-up. Tomorrow's sweep should skip X unless credits are added.
- api-tn10 indexer behind (HTTP 503) at 07:55–07:58 — FYI for TN10 ops.
- Ask **kaspa master challenge** for a pass on `master/sweep-2026-10-07` (head after the prompt commit; files: README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-07.md).
- No merge to main until the pass has no FAILED item **and** stp OKs.

## State

`/workspace/artifacts/kaspa-master-watch/state.json` (updated; backup `state.json.bak-2026-10-07`). Raw: `/workspace/artifacts/kaspa-master-watch/raw/2026-10-07/`.

# Prompt for Grok Build — independent analysis of the 8 Oct 2026 Kaspa watch findings

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (watch sweep, run by hand on 8 Oct ~17:50–18:20 CEST after the 07:37 routine failed on an unpaid Cursor invoice). It updated branch `master/sweep-2026-10-08` on https://github.com/STP-KAS/kaspa-master-file and branch `master/sweep-2026-10-08` on https://github.com/STP-KAS/kaspa-builders. Do **not** trust the report. Analyse it your own way.

## Branch for your work
Use branch **`build/2026-10-08`** (create from current `origin/main`, which is `b7c52de`). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`.

Note: `master/sweep-2026-10-08` was branched from `master/sweep-2026-10-07` (`679141d`), **not** from main, so it contains the 7 Oct sweep. Your open branches `build/2026-10-07`, `build/tn10-three-nodes-2026-10-07`, `build/kcc20-review-merge-2026-10-07`, `build/kcc20-last-call-2026-10-08` and `build/silverscript-258-2026-10-07` are not merged; do not repeat what they already hold.

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-08.md` on `master/sweep-2026-10-08`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, X, Facebook). No reactions, issues, PRs, tags or releases. A new sourced fact goes into the master file and stops there.
- **Master is core-only (stp, 4 Oct 2026).** Third-party projects (KPI, KaChat, DOTK, Kastle, OpenMiner, x402, Zelcore, onlykas …) live in STP-KAS/kaspa-builders; cite it only with its caveat. Send third-party finds to kaspa master bot; do not add them to the master.
- Cite a URL for every claim. Record times with zone (CEST in chat; Z fine in the master).
- No fabrication. If you cannot verify, say "not verified". Never claim an HTTP status without saved headers.
- Merged Active KIP is law. An open PR, a branch, a demo, or a tweet is not. Do not weld objects (`release-candidate` tip ≠ release; #172 open ≠ merged; a PR body's "docs kept" ≠ docs in the tree; Argent #68 merged ≠ a SilverScript change; P2SH wallet talk ≠ shipped wallet support; api-tn10 200 ≠ proof a payment landed; `/info/halving` time ≠ the consensus step, which is a DAA score).
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (short); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; validate `master.json`.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain push of your `build/` branches only. Never force main.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** (including `master/sweep-2026-10-08`).
- X credits were topped up to $12.32 (8 Oct 17:50); the sweep used $0.50, balance $11.82. Do not make X calls unless stp asks; the sweep covers X.
- Never share seeds/keys. TN10 never goes to a mainnet kaspa bot. Do not touch TN10 processes (TN10 ops owns them); any TN10 test is read-only or on your own wallet, never the mining address.

## Standing role
Keep the master current with the kaspa master bot. Checkout for Build: `/workspace/repos/kaspa-master-file` (not the watch clone). Public posts are forbidden. Challenge before merge: any open FAILED item blocks merge until fixed or stp overrides. Main merges only when challenge is clean **and** stp explicitly OKs (kaspa master bot is the merger).

## Tasks
1. **Verify** every master item in the report against live sources (README vProgs, tictactoe, Argent, SilverScript holes, KGI, new "P2SH wallet support" row, TN10 public API; master.json mirrors and the intel-freeze "Block reward" row).
2. **vprogs RC `cc0d54bc` / #172:** confirm the 8 commits on `5da27851` equal the #172 head, and what the rename means in code (retry loop, per-attempt timeout, removal of the 6 Oct rollback/walk floor), with file+line at `cc0d54bc`. Check the PR body's claim that the incident docs are kept against the tree (the desk found no `docs/superpowers` path). If cheap, run the prover crate tests at `cc0d54bc`; record toolchain.
3. **tictactoe `35defd29`:** root lock pins `e9e2e7e3`, guest lock `04cfb0ae`. Is the split intentional (guest built separately) or stale? Which one does the deployed guest image use, if that is knowable from the repo?
4. **Argent #68 merged (`9a9f4b10`) and open #69:** confirm the `stones` Player template-hash change and whether any other example artifact changes; what #69 changes for pinned artifacts.
5. **api-tn10:** recheck `/info/health` (cache-busted, save headers) at least twice; record backend versions. The desk saw 200/synced at 17:57 CEST with one 2.1.0 backend; on 7 Oct morning several 2.0.x backends answered.
6. **Block reward:** confirm month 53 (2060172230 sompi, coinbase.rs L283 at `01b532e8`) and that the next step is at DAA 583803000 from params.rs; compare with a synced mainnet node's virtual DAA if one is available (read-only).
7. **P2SH wallet support row:** check the quotes and that nothing shipped (kasvault / Ledger `app-kaspa` repos).
8. **What to build or test next** (TN10 only, no public posting): short ordered list.
9. Write sourced facts only to `build/2026-10-08`. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch: daily report, 8 Oct 2026 (Thursday)

All times are CEST (Europe/Brussels, UTC+2) unless marked Z. **Run by hand** ~17:50–18:20: the 07:37 routine failed because the Cursor account has an unpaid invoice. stp topped X credits up to $12.32 at 17:50 and asked for the sweep. No billing failure hit any tool during this run.
Window: GitHub since `2026-10-07T05:47:20Z` (7 Oct sweep marker); X since the 7 Oct markers; forum since post 402.

## Branches (never main, never force, zero public actions)

- **kaspa-master-file `master/sweep-2026-10-08` was branched from `origin/master/sweep-2026-10-07` [`679141d`](https://github.com/STP-KAS/kaspa-master-file/commit/679141dd514414beedaca3a46f6aa15afd9f7484), NOT from main `b7c52de`** (stp's instruction: the 7 Oct sweep plus its challenge fix are not on main yet, so this stacks on them instead of conflicting). Merging it to main brings 7 Oct along.
  Commits: content [`94b41d0`](https://github.com/STP-KAS/kaspa-master-file/commit/94b41d0922196f8d082e1c7e3c5f38701bd5d31e), snapshot link [`d9334ff`](https://github.com/STP-KAS/kaspa-master-file/commit/d9334ff7fec594a8797c3c34661c4bbc14087271), Build prompt `prompts/grok-build-2026-10-08.md` (third commit; hash in the stp summary).
  Files: README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-08.md.
- **kaspa-builders `master/sweep-2026-10-08`** from `origin/main` [`85d0fa6`](https://github.com/STP-KAS/kaspa-builders/commit/85d0fa6). Commits: content [`5f3a41f`](https://github.com/STP-KAS/kaspa-builders/commit/5f3a41f425b686f5b0aa649ba1ca50e6d6093ea5), link [`5487e1f`](https://github.com/STP-KAS/kaspa-builders/commit/5487e1f7bea8bec35917ed3ba41ce022f8290e55).
  Files: README.md, builders.json (valid, indent 2, no `\u` escapes), SNAPSHOT-HISTORY.md, entries/{x402, wallets-kcc20, name-services, olafweller-kpi, openminer-reference, danieliyahu1, kaspa-core-flux, node-tools-third-party}.md. No overlap with `build/dagituser69-2026-10-08` or `build/warda-2026-10-08` (their new entries untouched; both bump `updated` in builders.json, a trivial merge conflict).

## Added to the master branch (README Now cells + master.json)

| Item | Source | Cell |
| --- | --- | --- |
| **vprogs `release-candidate` force-pushed to [`cc0d54bc`](https://github.com/kaspanet/vprogs/commit/cc0d54bc5e79cecf0ca7cd8f8a76d45a8a6502e6)** (8 Oct 14:50Z): 8 commits on `5da27851`, equal to the [#172](https://github.com/kaspanet/vprogs/pull/172) head; #172 renamed "prover: retry invalid proofs and re-form failed bundles" (retry until a receipt verifies, per-attempt timeout, no cap; the 6 Oct rollback/walk-floor removed). `ec0deeef` is off the branch (compare diverged 8/8). The PR body says the incident docs are kept, but there is **no `docs/superpowers` path at `cc0d54bc`**. 0 reviews. [#154](https://github.com/kaspanet/vprogs/pull/154) marked ready 7 Oct 12:40Z, 0 reviews. The 7 Oct vProgs paragraph moved verbatim to SNAPSHOT-HISTORY ("Moved from README on 8 Oct 2026", file end). | branch API, compare, PR, tree | vProgs |
| tictactoe tip [`35defd29`](https://github.com/biryukovmaxim/vprog-tictactoe/commit/35defd293665f6e5da4aa0ee03afd993aa24c476) (8 Oct 12:19Z) pins `e9e2e7e3` in the root lock only (guest lock `04cfb0ae`); neither is the RC tip. Seven 7 Oct pin commits listed. Challenger A1 applied: `c78780f2` (parent `fe6b0e85`, pushed 6 Oct 13:38:46Z with `84988b18`). README L26 link moved to `35defd29`. | commits, locks, activity API | tictactoe |
| Argent [#68](https://github.com/argent-lang/argent/pull/68) **merged** 7 Oct 08:24:45Z as [`9a9f4b10`](https://github.com/argent-lang/argent/commit/9a9f4b107116d0b259fae629f200fa3b663e7e9d) (michaelsutton; head `1aa055c3`, 6 files): the `stones` `Player` `sil_template_hash` and the artifact id change (`7133efc5…` → `e843bab4…`). Open [#69](https://github.com/argent-lang/argent/pull/69) (RossKU, 8 Oct 14:52Z, "Load pinned app artifacts through module imports"). Only the #68 sentence was rewritten (build branches also edit this row). | PR, diff | Argent |
| SilverScript [#257](https://github.com/kaspanet/silverscript/pull/257): opened by someone235 from `michaelsutton/silverscript:rk-2.1.0-crates-io` (verified). [#256](https://github.com/kaspanet/silverscript/issues/256) is an issue, not a PR (pulls/256 → 404; open, no update since 29 Sep); board already links it as an issue, so no change. | PR/issue API | SilverScript holes |
| **New row "P2SH wallet support"**: Sutton and coderofstuff, 7 Oct 17:22Z–18:47Z (kasvault, Ledger `app-kaspa`, KCC-2 hashed addresses). Talk only, chip `talk`. | X | new row |
| KGI v2 main [`9573d47e`](https://github.com/kaspa-live/kaspa-graph-inspector-rs/commit/9573d47e9c1720eecd0f56edf71f6049435210ce) (#4, rusty-kaspa v2.1.0) and a third `docs/rk-issues` record (GetBlock not-found error erased over gRPC). Stale 6 Oct status sentence removed. | commits, file | KGI |
| **api-tn10 synced again** (details under TN10); 7 Oct "catching up" replaced with Build's 06:07Z/06:11Z 503 reads. api-tn10 `/openapi.json` v2.3.0; mainnet API reports `d0ea012` (kaspa-rest-server, kaspa-ng v2.4.2 `e8bb07e0`). | api-tn10, openapi | TN10 public API |
| **Block reward** (master.json intel-freeze row): 2.06017223 (8 Oct 15:58:42Z, HTTP 200, headers saved). Month 53 of `SUBSIDY_BY_MONTH_TABLE` = 2060172230 at [coinbase.rs L283 @ `01b532e8`](https://github.com/kaspanet/rusty-kaspa/blob/01b532e8b553523216471682649693af92f0fd16/consensus/src/processes/coinbase.rs#L283). **Next step at DAA 583803000** (month 54, 1.94454365), from params.rs (15519600, 110165000). `/info/halving` time is only an API estimate (13:56:20Z on 7 Oct, 13:56:56Z on 8 Oct). | api.kaspa.org, rusty-kaspa source | Block reward |

Prompt-build corrections, all verified: #256 issue ✔; DAA 583803000 ✔; #257 opener/head ✔; vprogs #127 `review_requested` hmoog 2026-10-06T16:41:26Z ✔ (already on `build/2026-10-07`, so recorded in the SNAPSHOT row only); api-tn10 503 on 7 Oct morning ✔ (Build's 12 reads copied to `raw/2026-10-08/build-2026-10-07-tn10/`); Argent #68 hash change ✔; A1 `c78780f2` ✔; build/2026-10-07 edits kept small.

## Already on build branches — not re-added

KCC-20 Last Call (kccs#31 merged as `3fbec524`, kccs main); kcc20-reference#1 (`c8a08711`); Sutton lineage thread 2107855480034934851 and 2107936465628066024; silverscript#258 (`build/silverscript-258-2026-10-07`); Kas-Smiths post 404 (Ross, KCC-20 slot limits; `build/kcc20-last-call-2026-10-08`). Dedupe: `git grep -F` on every origin branch of both repos for each new id before adding.

## kaspa-builders (third-party, committed on builders `master/sweep-2026-10-08`)

- **x402:** [#22](https://github.com/elldeeone/kaspa-x402/pull/22) merged 7 Oct 05:47:20Z as [`3f7b6df2`](https://github.com/elldeeone/kaspa-x402/commit/3f7b6df2) (head `7ada3009`); [#23](https://github.com/elldeeone/kaspa-x402/pull/23)–[#27](https://github.com/elldeeone/kaspa-x402/pull/27) merged 7 Oct; main [`d81f58a3`](https://github.com/elldeeone/kaspa-x402/commit/d81f58a3). Latest tag still prerelease `v1.0.0-rc.2` (releases/latest 404). Kas-Smiths [post 405](https://kas-smiths.org/t/kaspa-x402-pay-per-request-kas-payments-for-apis-and-ai-agents/15/33) (Seb287, variable pricing; claim).
- **Kastle:** #372/#387/#388 closed unmerged 6 Oct 07:21:22/25/29Z → open [#389](https://github.com/forbole/kastle/pull/389) `fc7b6497`; dotK [#381](https://github.com/forbole/kastle/pull/381) merged 7 Oct 12:13:21Z as `28abb239` (its own pre-merge list called the live TN10 transfer unproven). Release still v2.61.0.
- **dotK:** new [supertypo/dotk-covenants](https://github.com/supertypo/dotk-covenants) `cf3f54e8` (MIT; gap/deed covenants + mainnet verifier; not run by the desk); supertypo [2107948068301586802](https://x.com/supertypo_kas/status/2107948068301586802); Sutton [2107951077316231396](https://x.com/michaelsuttonil/status/2107951077316231396) "i'll take a deeper look" (not a review). [dotk-indexer v1.1.1](https://github.com/supertypo/dotk-indexer/releases/tag/v1.1.1). ReconProtocol 2108064517347512679 ("4673 deeds") left out: relay, unchecked.
- **KaChat:** 7 Oct tip `c6bd7161` (after `32b7b325`, TN10 registry v3); then TN10 registry v4 ([`d82dfb20`](https://github.com/vsmirn0v/KaChat/commit/d82dfb20), redeployed on a day clock [`08107e13`](https://github.com/vsmirn0v/KaChat/commit/08107e13)), grace/expired names, main [`1be4f6e6`](https://github.com/vsmirn0v/KaChat/commit/1be4f6e6).
- **KPI:** author's [A1 official trial record @ `fb8a5017`](https://github.com/olafweller/kaspa-privacy-initiative/blob/fb8a501782f5a07c6f9c797893e3b8896ddcd414/docs/poc-a1-official-trial-2026-10-08.md): scoped PASS (autonomous S1 recovery on TN10, 8.1 test KAS); not G5/G6; txids not desk-checked. WellerOlaf [2108098976742260999](https://x.com/WellerOlaf/status/2108098976742260999). main `5435113d` (#25 PQ research, #26 agents doc).
- **OpenMiner:** [#1](https://github.com/elldeeone/openminer-reference/pull/1) Goldshell IEN616 merged as `478de854`; elldeeone [2107857740504940754](https://x.com/elldeeone/status/2107857740504940754) (KS0 next; plan).
- **onlykas:** tip [`b8f28657`](https://github.com/danieliyahu1/onlykas/commit/b8f28657), referrer fee share.
- **kaspa-core (Flux):** still `4cf8f35b`; Zelcore [2107391084615893260](https://x.com/zelcore_io/status/2107391084615893260) likely means it (not verified).
- **Carryover advisories applied:** #387/#388 times labelled PR open times; README lava-specs#181 "merged 5 Oct" (merged 2026-10-05T18:15:25Z, verified); builders.json no longer calls `kns-kasware-tn10-test` private (GitHub API: public).
- Left out: KASPAglobal roundup (relay); ReconProtocol on-chain report 2107866281009406295 (relay); WellerOlaf poll; KPI 0xd6/KIP-10/KIP-17 wording and test-count caveat (optional; not applied, kept as advisory).

## Per source

- **X credits.** Start **$12.32** (prepaid 12.32, free 0, no grants; read 17:50:16). End **$11.82** (18:15:05). **Delta $0.50** in 25 min. Desk estimate of its own calls ≈ $0.43 (core 24 posts + 6 users; community 21 + 9; KaspaScopio 3 + 2; full-text 4 posts; at $0.005/post, $0.01/user); the $0.07 gap is within billing granularity (duplicate next_token pages, expansions). **No sign of an outside drain** in this window (7 Oct showed ~$3 unexplained). Under the $1.00 hard cap.
- **X core** (`since_id` 2107329950793826444 → new 2108170978173821106, newest 8 Oct 12:21:43Z): 24 posts; next_token page returned only the duplicate oldest post (no gap). **community** → 2108222114893316213 (15:44:55Z): 21 posts, no gap. **deshe:** 0, held 2103861631738667208. **KaspaScopio** → 2107917085057646746 (7 Oct 19:32:50Z): 3. **Full-text:** 4 (KASPAglobal, WellerOlaf, supertypo ×2). **core_replies:** paused, not run.
- **GitHub (61 repos):** see tables. Heads held: rusty-kaspa master `01b532e8`, `tn10` `e5f6d1f7`, `dagknight` `ad45e241`; vprogs master `f9b84a86`; silverscript `3ed97333`; kips `e4ae2332`. Changed: kccs `3fbec524`, argent `9a9f4b10`, tictactoe `35defd29`, KGI `9573d47e`, vprogs RC `cc0d54bc`. No new kaspanet releases.
- **Tags** (ls-remote, 11 repos): only dotk-indexer changed (v1.1.1).
- **Kas-Smiths:** 48 / 382 / 113; new posts 404, 405; latest_post_id 405. **research.kas.pa:** newest topic still 522.

## TN10 (testnet-10)

- **api-tn10 healthy on 8 Oct.** 6 cache-busted `/info/health` reads 15:57:07Z–15:57:59Z (17:57 CEST): all **HTTP 200**, Cloudflare `MISS`, `database.isSynced` true, `blueScoreDiff` 5–31, `acceptedTxBlockTimeDiff` 0–1 s, one backend kaspad **2.1.0 `b0e304b8`**. `/info/blockdag` 200 at 15:58:10Z/15:58:30Z, DAA 591420135 → 591420348. Headers saved (`raw/2026-10-08/hdr-tn10-health-1..6.txt`, `hdr-tn10-blockdag-*`).
- 7 Oct morning: Build's 12 reads at 06:07Z and 06:11Z (08:07/08:11 CEST) were all 503, diff 1530–1561 s (≈26 min behind); headers copied to `raw/2026-10-08/build-2026-10-07-tn10/`. When exactly it recovered between 7 Oct 08:11 and 8 Oct 17:57 is not known.
- I did not touch n0, the miners or any TN10 process.

## Gaps

- vprogs #172 body says incident docs are kept; the RC tree at `cc0d54bc` has no `docs/superpowers` path. Not resolved.
- Time api-tn10 recovered: unknown (no reads between).
- dotk-covenants verifier, KaChat v4 ids, KPI A1 txids, Kastle #381 TN10 transfer: not desk-checked.
- X: no pagination gaps.

## Carry-overs

- Applied: three builders advisories (above); 7 Oct third-party finds now on builders branch; W-F3 closed (679141d: stp kept links); "skip X" removed (credits added).
- Still open: W-F4 (TN10 ops), old out-of-order SNAPSHOT pairs, item 13 (stp), core_replies paused, Sutton "too much" (optional, master), KPI wording advisories (optional), master SilverScript-holes line could say x402 #22 merged (optional).

## Flags for stp / parent

- 07:37 routine failed on the unpaid Cursor invoice; this run was manual. Tomorrow's routine will fail again unless the invoice is paid.
- Ask **kaspa master challenge** for a pass on both branches: kaspa-master-file `master/sweep-2026-10-08` (base `679141d`; files README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-08.md) and kaspa-builders `master/sweep-2026-10-08` (base `85d0fa6`).
- No merge to main until the pass has no FAILED item **and** stp OKs. Merge order on the master: `master/sweep-2026-10-07` (679141d) is contained in `master/sweep-2026-10-08`.

## State

`/workspace/artifacts/kaspa-master-watch/state.json` (updated; backup `state.json.bak-2026-10-08`). Raw: `/workspace/artifacts/kaspa-master-watch/raw/2026-10-08/` (incl. `builders/`).

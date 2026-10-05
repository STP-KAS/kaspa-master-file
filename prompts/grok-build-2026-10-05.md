# Prompt for Grok Build — independent analysis of the 5 Oct 2026 Kaspa watch findings

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (watch sweep). It updated branch `master/sweep-2026-10-05` on https://github.com/STP-KAS/kaspa-master-file (and `master/builders-sweep-2026-10-05` on https://github.com/STP-KAS/kaspa-builders for third-party finds). Do **not** trust it. Analyse it your own way.

## Branch for your work
Use branch **`build/2026-10-05`** (create from current `origin/main`). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`.

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-05.md` on `master/sweep-2026-10-05`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, X, Facebook). No reactions, issues, PRs, tags or releases. A new sourced fact goes into the master file and stops there.
- **Master is core-only (stp, 4 Oct 2026).** The master is your default source. Third-party projects (KPI, KasperoLabs, KaChat, DOTK, Kastle, OpenMiner, KasNodes, x402 …) live in STP-KAS/kaspa-builders; cite it only when a task names a third-party project, always with its caveat (third-party, not audited, demo, not desk-tested). Send third-party finds to kaspa master bot for kaspa-builders; do not add them to the master.
- Cite a URL (commit, PR, issue, post, release) for every claim. Record times with zone (CEST in chat; Z fine in the master).
- No fabrication. If you cannot verify, say "not verified".
- Merged Active KIP is law. An open PR, a branch, a demo, or a tweet is not. Do not weld objects (open #1141/#1142 ≠ consensus change; #914 closed ≠ desk-verified fix; #1140 comment ≠ a fix; KGI docs merge ≠ KGI code; kccs#36 ≠ a KCC; Last Call ≠ Final; `release-candidate` tip ≠ release; api-tn10 200 ≠ proof a payment landed).
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (short); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; validate `master.json`.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain push of your `build/2026-10-05` only. Never force main.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** so you do not duplicate this sweep or other open `build/*` work.
- Never share seeds/keys. TN10 never goes to a mainnet kaspa bot. Do not touch TN10 processes (TN10 ops owns them); any TN10 test is read-only or on your own wallet, never the mining address.

## Standing role
Keep the master current with the kaspa master bot. Checkout for Build: `/workspace/repos/kaspa-master-file` (not the watch clone). Read the whole master periodically; fix stale lines against live sources. Public posts are forbidden. Challenge before merge: any open FAILED item blocks merge until fixed or stp overrides. Main merges only when challenge is clean **and** stp explicitly OKs (kaspa master bot is the merger).

## Tasks
1. **Verify** every master item in the report against live sources. Flag wrong or stale lines.
2. **rusty-kaspa #1140:** read atharaldsen's comment and IzioDev's #894 (`ad72faf6`); judge whether the cause and fix pointer are right. If you can, reproduce the testnet-10 `Storage mass exceeds maximum` case **without broadcasting** (SDK generator, `priorityFee` 0, no `feeRate`) and record the result as a desk test.
3. **#914 closure:** spot-check at least two of the "resolved on master" claims at `01b532e8` (file and line).
4. **#1141 / #1142:** check the 1,000,000 → 250,000 transient byte cap math and the "byte-identical" `SeqCommit` encoding claim against the PR diffs. Open pulls only; wording must say so.
5. **KGI v2 `247d69a7`:** confirm docs only, no code, rk-issues still unfiled.
6. **api-tn10:** recheck health / backend versions (this sweep sampled 2.0.1 once; pool was mixed 4 Oct).
7. **What to build or test next** (TN10 only, no public posting): short ordered list.
8. Write sourced facts only to `build/2026-10-05`. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch: daily report, 5 Oct 2026 (Monday)

All times are CEST (Europe/Brussels, UTC+2) unless marked Z. Sweep ~07:40–07:56.
Window: GitHub/forum since `2026-10-04T05:49:00Z`; X since the 4 Oct markers.
Branches: kaspa-master-file `master/sweep-2026-10-05` (from main `9fd1009`); kaspa-builders `master/builders-sweep-2026-10-05` (from main `7d013d5`). Never main. Zero public actions.

Commits (kaspa-master-file): content [`e9b88bb`](https://github.com/STP-KAS/kaspa-master-file/commit/e9b88bb8bf20ad51cb4c9d6bf8703d2a3468d94d), snapshot link [`068801c`](https://github.com/STP-KAS/kaspa-master-file/commit/068801c86d6fc5a66d45b3c940169084fc150038), Build prompt `prompts/grok-build-2026-10-05.md` (third commit; hash in the stp summary).
Commits (kaspa-builders): content [`629a0fd`](https://github.com/STP-KAS/kaspa-builders/commit/629a0fd3c8f7b9cb34e190599e4e0b23ae216717), snapshot link [`87b0740`](https://github.com/STP-KAS/kaspa-builders/commit/87b0740b9fa58402061e46fa1943c3a3c0d5863a).

## Added to the master branch (README Now cells + master.json)

| Item | Source | Cell |
| --- | --- | --- |
| rusty-kaspa #1140 (SDK v2.1.0 mainnet findings) gets its first comment: atharaldsen reproduced item 1 on master with **testnet-10 params** (4 Oct 19:30Z): one 100 KAS UTXO, `priorityFee` 0, one output of input − 0.002 → `Storage mass exceeds maximum`; any `feeRate` passes. Cause per him: `Generator::calculate_mass` keeps tiny change because without a fee rate its storage mass never enters the keep-vs-absorb test. Fix pointer: IzioDev's open [#894](https://github.com/kaspanet/rusty-kaspa/pull/894) (`ad72faf6`, in conflict). Not desk-tested. | [comment 5983592399](https://github.com/kaspanet/rusty-kaspa/issues/1140#issuecomment-5983592399) | 26–30 Sep notes |
| rusty-kaspa [#914](https://github.com/kaspanet/rusty-kaspa/issues/914) (RossKU, Covenant/KIP-16 code review, 5 findings at `10a4af3b`, opened 10 Mar) **closed as completed** 4 Oct 21:32Z after atharaldsen wrote every finding is resolved on master. His reading, not desk-checked. | [comment 5984251477](https://github.com/kaspanet/rusty-kaspa/issues/914#issuecomment-5984251477) | 26–30 Sep notes |
| New open master pulls (atharaldsen, 0 reviews): [#1141](https://github.com/kaspanet/rusty-kaspa/pull/1141) `11aca108` drops `TRANSIENT_BYTE_TO_MASS_FACTOR`, transient limit as a byte cap 1,000,000 → 250,000 (author: block byte cap and normalized transient mass unchanged; supersedes #1025 on `toccata`); [#1142](https://github.com/kaspanet/rusty-kaspa/pull/1142) `644baafe` `SeqCommit` replaces pre-KIP-21 `accepted_id_digests` (closes #1099; encoding byte-identical per author). Open pulls only. | PR bodies | Not live |
| KGI v2 main → [`247d69a7`](https://github.com/tiram88/kaspa-graph-inspector-rs/commit/247d69a71f3275417bb049a016127c135699bd9e) (4 Oct 22:25Z, merge of `initial-design`): 45 files in the merge (42 under `docs/`, plus `.gitignore`, `AGENTS.md` and `README.md`); no production Rust; status.md (2 Oct) says no production Rust/tests/migrations yet; the two rk-issues records still "Not yet filed upstream". Links re-pinned to the sha. | GitHub | KGI v2 design |
| kccs draft [#36](https://github.com/kaspanet/kccs/pull/36) `d7809a17` "Covenant v2" (unnumbered, no preamble/status; not a KCC) into the KCC cell and JSON — carry-over 2, now that `build/2026-10-04` is on main. Still open/draft 5 Oct. | GitHub | KCC still open |
| SNAPSHOT rows 2026-10-04 08:55 / 08:53 linked to `353e9ad` / `b8256bc` (challenge 43a3c64 advisory). | git | SNAPSHOT-HISTORY |

## For kaspa-builders (third-party; on `master/builders-sweep-2026-10-05`, not in the master)

- **Privacy initiative (KPI), olafweller:** draft [#22](https://github.com/olafweller/kaspa-privacy-initiative/pull/22) head `2590e392` → [`f4a4ddc5`](https://github.com/olafweller/kaspa-privacy-initiative/commit/f4a4ddc50a41aa5c640e0b43ff0962c9ed49e718) (4 Oct 20:22Z): author's [live attempt 1 record](https://github.com/olafweller/kaspa-privacy-initiative/blob/f4a4ddc50a41aa5c640e0b43ff0962c9ed49e718/docs/poc-a1-live-attempt-1.md) on **TN10**: S0 funding `c0968d62…` (10.7 test KAS) and S0 → S1 `5027a249…` passed; boundary receipt FAILED, recovery machine never armed, independent recovery not run; S1 exited via separate terminal tx `c3e15501…`. Overall G5 FAILED (fail-closed per author). New issue [#23](https://github.com/olafweller/kaspa-privacy-initiative/issues/23) (fixed-fee exit liveness blocker). Txids not desk-checked.
- **OpenMiner (elldeeone):** repo still `ca5cee59`. X: probing a Goldshell KA box ([2106910323668393999](https://x.com/elldeeone/status/2106910323668393999), 5 Oct 00:52Z); "my goal is to reverse engineer our miners" ([2106928517384667439](https://x.com/elldeeone/status/2106928517384667439), 02:04Z, 22 likes).
- **KasNodes:** "https://t.co/XrEyPp2T17 is back" (link resolves to kasnodes.com) ([2106703706003808697](https://x.com/elldeeone/status/2106703706003808697), 4 Oct 11:11Z, 77 likes). [kasnodes.com](https://kasnodes.com/) = public-node crawler/map; homepage 07:50 showed 290 public / 81 private nodes / 40 countries (site's counts, not recounted; operator not stated). → node-tools entry.
- **KaChat:** tip [`7227d69a`](https://github.com/vsmirn0v/KaChat/commit/7227d69a70f67f472a5d3fd2e5f8825d23f1a852) (4 Oct 20:41Z): `.kachat` UI/identity on mainnet builds, registry still TN10 only (`isLaunched`). → name-services entry.
- **Kastle DOTK:** forbole/kastle [#378](https://github.com/forbole/kastle/pull/378) `be88c8c6` (read-only `.k` resolve) and [#379](https://github.com/forbole/kastle/pull/379) `eb581482` (transfer, stacked on #378), both open, 4 Oct. #372 still `ddfaf373`, `blocked`. → name-services / wallets entries.
- Not added (community relays): kaspaunchained dev roundup [2106726343270633551](https://x.com/kaspaunchained/status/2106726343270633551), KASPAglobal builders roundup [2106666198733820256](https://x.com/KASPAglobal/status/2106666198733820256), Kaspa_Commons argent#66 / KPI quotes, KaspaScopio argent#66 explainer [2106745213972578493](https://x.com/KaspaScopio/status/2106745213972578493). CryptoQTK price shilling and BankQuote gaming post: skipped.

## Already on main / other branches — not re-added

- argent#66 merged `03d67021` (4 Oct 12:04Z) — on main (Argent row). argent-template / argent-playground commits are lockfile syncs.
- kcc20-reference#1 `5b2a2312` — on main now (Build's `build/2026-10-04` merged). Carry-over 1 closed.
- rusty-kaspa #1138 / #1029 / #1025 / #904 / #863 / #905 / #925 / #1030 / #1032 / #806 / #672 / #1098: updated only by atharaldsen comments or re-pushes on old pulls (one re-targeting, one closing his own #904); no merges. Not pins.
- WellerOlaf 4 Oct posts 2106773440338247750 / 2106523383844229492: at/below the per-account marker, covered by the 4 Oct backfill.

## Per source

- **X credits.** Before **$3.58**, after **$3.47**. Sweep spent **~$0.11** (under soft ~$0.20, hard $1). Note: balance was $3.75 after the 4 Oct 18:00 backfill, so **$0.17 left the account between then and 07:41 today outside this sweep** (another bot's X use or late billing; unattributed).
- **X core** (`since_id` 2106572967622967606): 8 posts + `next_token` (not paginated). All elldeeone: kasnodes back; Goldshell/OpenMiner; chatter.
- **X community** (`since_id` 2106487002384265446): 9 posts + `next_token` (not paginated). Relays; WellerOlaf ×2 skipped by marker. New community since_id `2106837115157778453` passes the WellerOlaf marker → per-account entry dropped.
- **X deshe:** 0 results; `since_id` held.
- **KaspaScopio:** 1 post (argent#66 explainer). Already covered.
- **core_replies trial (last run):** 4 replies + `next_token`; kept (≥3 likes) 0; added 0.
- **GitHub (61 repos + dotk-indexer):** see above. Heads hold: rusty-kaspa master `01b532e8`, `tn10` `e5f6d1f7` (5 Jun), `dagknight` `ad45e241`; vprogs master `f9b84a86` / RC `055ae28a`; silverscript `3ed97333`; kccs `411b41bc`; tictactoe `533e8a55`; kips `e4ae2332`. Tags via `git ls-remote`: no new tags (rusty-kaspa v2.1.0, silverscript v1.0.0, python-sdk v2.1.0, dotk-core v0.13.1, dotk-indexer v1.1.0, dotk-sdk v2.1.0, x402 v1.0.0-rc.2). No new releases.
- **Kas-Smiths:** 48 topics / 378 posts / 113 users; latest post **402** (unchanged).
- **research.kas.pa:** newest topic still 522 (8 Sep).
- **api-tn10:** one `/info/health` read 07:48: HTTP 200, kaspad **2.0.1** (p2p `965d43fe`), synced, `acceptedTxBlockTimeDiff` 2. One sample of a mixed pool (4 Oct saw 2.1.0 and 2.0.1). Raw saved.

## Reply-reading trial verdict (28 Sep – 5 Oct)

- Runs: 28 Sep backfill (340 fetched, 8 kept, $1.67), 29 Sep (8 / 2, $0.04), 3 Oct (20 / 3, $0.10), 4 Oct (5 / 2, $0.03), 5 Oct (4 / 0, ~$0.02–0.05). **Total ≈ $1.9; items added to the master: 0.** Every kept reply was either a tracked dev already in `core` or chatter/questions.
- **Recommendation: stop.** `core_replies` is now paused until stp says keep (RUNBOOK). If stp wants targeted coverage, a cheaper option is reading one specific thread by `conversation_id` when a core post looks substantive.

## TN10 (testnet-10)

- **#1140 reproduction uses testnet-10 params:** the rusty-kaspa wallet SDK `Generator` (v2.1.0 / master) with `priorityFee` 0 and **no `feeRate`** can reject its own plan (`Storage mass exceeds maximum`) when it leaves tiny change; at ~0.1 KAS leftover it can give `Mass calculation error`. Any `feeRate` avoids the first case. Relevant to any bot sending TN10 payments through the SDK (TN10 ops / tn ops2): set a `feeRate`. Not desk-tested.
- api-tn10 healthy in one read (backend 2.0.1). rusty-kaspa `tn10` branch unchanged since 5 Jun.
- Third-party TN10 activity: KPI A1 live attempt 1 (4 Oct, failed safely per author); KaChat registry TN10-only. No impact on the desk node.
- I did not touch n0, the miners or any TN10 process.

## Carry-overs

- Applied/closed: 1 (kcc20-reference pin on main), 2 (#36 in the KCC cell), 3 (dotk-indexer added to `watchlist.json`; ls-remote tag scan done), advisory "(this commit)" rows 08:55/08:53, builders "The master keeps" labels (already in `7d013d5`).
- Still open: 4 (old out-of-order SNAPSHOT pairs; dedicated pass); item 13 (private desk repo names; waits on stp); KPI wording advisories now belong to kaspa-builders (`olafweller-kpi.md`), still optional.

## Open questions for Build (`build/2026-10-05`)

1. Verify #1140 comment and the #894 fix claim; can the desk reproduce the TN10 `Storage mass exceeds maximum` case read-only (no broadcast) with the SDK?
2. #914 closure: spot-check two of atharaldsen's "resolved" claims on master `01b532e8` (covenant bytes in `transaction_output_estimated_serialized_size`; RPC→consensus covenant conversion).
3. #1141: confirm the 250,000 byte cap math (normalized transient mass unchanged) against `consensus/core` params; #1142 encoding claim.
4. KGI `247d69a7`: confirm no code, and that rk-issues are still unfiled upstream.
5. api-tn10: recheck backend mix (this sweep sampled 2.0.1 once).

## Flags for stp / parent

- **X balance $3.47** — above $3 but close; free grant expires **24 Oct 2026 ~19:32 CEST** (19 days). Unattributed **$0.17** drop overnight (outside this sweep).
- Ask **kaspa master challenge** for passes on `master/sweep-2026-10-05` (kaspa-master-file; files README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-05.md) and `master/builders-sweep-2026-10-05` (kaspa-builders; README.md, builders.json, SNAPSHOT-HISTORY.md, five entries).
- No merge to main until each challenge pass has no FAILED item **and** stp OKs.

## State

`/workspace/artifacts/kaspa-master-watch/state.json` (updated after this run). Raw: `/workspace/artifacts/kaspa-master-watch/raw/2026-10-05/`.

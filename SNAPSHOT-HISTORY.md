# Snapshot history

Append-only log of what this desk **did** to the Kaspa master file (and related STP-KAS doors). Newest first.

Not a KIP. Not Kaspa core. A tweet is not a pin. This file is the agent/operator receipt trail.

**Rule:** every master-file pass writes a row here and pushes it, even when pins hold and `master.json` is unchanged. Then tell stp in chat what landed (commit link + one-line delta).

| When (Europe/Brussels) | Commit | What we did | Pins |
| --- | --- | --- | --- |
| 2026-09-21 | [058a28f](https://github.com/STP-KAS/kaspa-master-file/commit/058a28f) | Grok Build catalog of biryukovmaxim/vprog-tictactoe (93 commits, tip `6079085`). Host pin = vprogs#148 head `da2a7f26`; guest ELF still `bridge-live-lane#128dd05f`. #23 leftover-open. Sourced commit comments. Not a product. | **Hold** |
| 2026-09-20 ~20:52 | [7c68611](https://github.com/STP-KAS/kaspa-master-file/commit/7c68611) | Digest fold after 24h ec73dea: kccs#28 (KCC20 name≠ABI); #1104 desk gate = parent-order invariance → run #1132 first. #24/`7159d48` + #27 APPROVED already pinned. Pins hold. | **Hold** |
| 2026-09-20 | [67bfb7f](https://github.com/STP-KAS/kaspa-master-file/commit/67bfb7f) / [ff29162](https://github.com/STP-KAS/kaspa-master-file/commit/ff29162) | Catalog @kaspaunchained intern roundup 2101676311244915028. KCC-20 field-order split (`kcc20-live` vs spec), x402 RC1 ≠ KCC-20, DK #1104/`#1132` fence, vprogs #148 + hmoog. Keep master file, not an oracle. | **Hold** |
| 2026-09-20 ~20:30 | [ec73dea](https://github.com/STP-KAS/kaspa-master-file/commit/ec73dea) | 24h monitor after e9548b8: kccs#24 head → `7159d48` (amend); #27 saefstroem approval; fixed stale #1136-open note in DK cluster. Tips hold rusty `eb0a856` / DK `ad45e24` / Argent `e76ee07` / SS `3ed9733` / vprogs `f9b84a8`. ALWAYS: kaspaexplained lastmod 2026-09-20; kaspa.stream `9f4088ca…`; X skipped (not enrolled). Updated master.json + README. | **Hold** |
| 2026-09-20 ~15:57 | [e9548b8](https://github.com/STP-KAS/kaspa-master-file/commit/e9548b8) | Digest fold: rusty master → `eb0a856` (#1136/#1137 merged); vprogs #147 `1d449964` + #148 draft; kaspa.stream `9f4088ca…`. Updated master.json + README. DK still not shipped. | **Hold (DK)** / tip moved |
| 2026-09-20 ~10:51 | [cdffae4](https://github.com/STP-KAS/kaspa-master-file/commit/cdffae4) | Digest fold: rusty #1135 `ed09a8a` (PSKB sighash opt-in), #1136 `2c0df83` (IBD 20 MiB headers); #1104 naming review (head still `a5888da`). Updated `master.json` `updated` 2026-09-20. Pins hold. | **Hold** |
| 2026-09-20 ~00:57 | [6d11bb6](https://github.com/STP-KAS/kaspa-master-file/commit/6d11bb6) | Digest fold: rusty #1104 continued review through ~22:04Z (head still `a5888da`); themes ordering/SmallVec/u16::MAX/API/naming. Updated rusty/intel/rnd-log. Pins hold. | **Hold** |
| 2026-09-19 ~20:35 | [6285abe](https://github.com/STP-KAS/kaspa-master-file/commit/6285abe) | 24h master-file monitor: tips/PRs re-scanned after 8449979 fold (cutoff ~17:50Z). rusty master `c338d49`, DK tip `ad45e24`, Argent `e76ee07` (#62 open), SilverScript `3ed9733`, kccs main `54f4f9c` + #24/#26/#27 open, vprogs `f9b84a8` + #138/#144–#147 (`af5f9a0`), DK PRs #1122 `332ec6c` / #1121 `06efd83` / #1104 head still `a5888da` (no post-cutoff review). ALWAYS: kaspaexplained.com reachable (sitemap lastmod 2026-09-15); kaspa.stream app-version still `7ab5ce0`; X skipped (user-not-enrolled/client-forbidden). `master.json` unchanged. | **Hold** |
| 2026-09-19 ~19:52 | [8449979](https://github.com/STP-KAS/kaspa-master-file/commit/8449979) | Digest fold: vprogs#147 head `af5f9a0` (guest ELF / chain_idx); rusty #1104 review through ~17:42Z (head still `a5888da`). Updated vprogs/rusty/intel/rnd-log. Pins hold. | **Hold** |
| 2026-09-19 ~14:53 | [4db908d](https://github.com/STP-KAS/kaspa-master-file/commit/4db908d) | Digest fold: vprogs#147 head `51bb9d4` (adaptive-reorg-filter disable + wire-through); DK #1122 head `332ec6c`, #1121 head `06efd83`. Updated rusty/vprogs/KIP-2/intel/rnd-log. Pins hold — not shipped. | **Hold** |
| 2026-09-19 ~09:49 | [5aaca47](https://github.com/STP-KAS/kaspa-master-file/commit/5aaca47) | Digest fold: vprogs#147 open non-draft head `b6e3d56` (shutdown drain/commit queued storage writes). Updated `master.json` `updated` 2026-09-19 + vprogs / rnd-log / intel-githubs. Pins hold (research only; no DK/Argent/SS/KCC Final). | **Hold** |
| 2026-09-18 ~20:36 | [75ea64d](https://github.com/STP-KAS/kaspa-master-file/commit/75ea64d) | 24h master-file monitor: tips/PRs re-scanned vs pins after a8851ea digest fold. rusty master `c338d49`, DK tip `ad45e24`, Argent `e76ee07` (#62 open), SilverScript `3ed9733`, kccs main `54f4f9c` + #24/`06400c3` #26 #27/`fa845057` open non-draft, vprogs `f9b84a8` + #138/#144–#146 open, kips `e4ae233`. No tip/tag/merge/Final since fold. ALWAYS: kaspaexplained.com reachable (sitemap 500); kaspa.stream timeout; X skipped (no credit burn). `master.json` unchanged. | **Hold** |
| 2026-09-18 ~19:13 | [a8851ea](https://github.com/STP-KAS/kaspa-master-file/commit/a8851ea) | Digest fold: kccs#27 head `fa845057` + review/approval; kccs#24 clarifications 15:27–15:31Z. Updated `master.json` kccs / #24 / #27 notes + rnd-log. Pins still hold (no Final, no DK merge). | **Hold** |
| 2026-09-18 ~17:05 | [3943b7f](https://github.com/STP-KAS/kaspa-master-file/commit/3943b7f) | Created [`SNAPSHOT-HISTORY.md`](SNAPSHOT-HISTORY.md) receipt trail; linked from START-HERE + AGENTS. Standing rule: every pass appends a row, pushes, and tells stp in chat (even when pins hold). Updated Kaspa master 24h routine accordingly. | Hold |
| 2026-09-18 ~17:00 | [abd66dc](https://github.com/STP-KAS/kaspa-master-file/commit/abd66dc) | Catch-up DK / Argent / SilverScript / KCC since 17 Sep freeze. Updated `master.json` (`updated` 2026-09-18), README freeze + pass block, START-HERE pointer. Folded kccs `#24`/`#26`/`#27`, rusty DK ready cluster (`#1104` `#1127` `#1131` `#1132` `#1124`), Argent `#62` / tip `e76ee07`, vprogs `#138`/`#144`–`#146`. Propagated freeze pointers: [kaspa-dapps baed096](https://github.com/STP-KAS/kaspa-dapps/commit/baed096), [project-delusional b52ce88](https://github.com/STP-KAS/project-delusional/commit/b52ce88). Standing 24h monitor prompt set to interesting → relevance → push → related doors. | **Hold** — no DK merge, no Argent tag, SilverScript tip still `3ed9733`, no KCC Final. |
| 2026-09-17 | [8de7ea2](https://github.com/STP-KAS/kaspa-master-file/commit/8de7ea2) | Pin @kaspaunchained 17 Sep covenants / SilverScript / Argent thread (community, not a KIP). | Hold |
| 2026-09-17 | [ff8c989](https://github.com/STP-KAS/kaspa-master-file/commit/ff8c989) / [db1b817](https://github.com/STP-KAS/kaspa-master-file/commit/db1b817) | Disclaimer: experimental only; no Kaspa Global links; wallet integrations withdrawn. | Hold |

## How to append

1. Relevance-check the delta (DAGKnight / Argent / SilverScript / KCC focus).
2. Edit `master.json` / README only when material; always add a newest-first row here.
3. Commit + push `STP-KAS/kaspa-master-file`.
4. If masterfile changed, short pointer on `kaspa-dapps` + `project-delusional` when needed.
5. Tell stp in chat: commit SHA, what changed, pins hold or not.

Local checkout (when present): `/workspace/artifacts/stp-kas/kaspa-master-file/`

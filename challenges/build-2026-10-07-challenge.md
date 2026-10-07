# Challenge: build/2026-10-07

Reviewed tip: `c92a55c37bcae80e535a733dfbdeb2b61c92e15a` (content `4d67fb8`, row link `c92a55c`; base main `b7c52de`, an ancestor). Both commits use the noreply identity. Trial-merge target: `master/sweep-2026-10-07` @ `679141d`.
Raws: owner raw-2026-10-07 (each read has .json plus .headers). Reviewer reads were taken 7 Oct around 08:30 CEST.

## Claims
- HELD | master.json L1634 chip 2.06017223 @ c92a55c | "2.06017223" | mainnet-blockreward.json `{"blockreward":2.06017223}`; headers HTTP/2 200, Date Wed, 07 Oct 2026 06:07:49 GMT.
- HELD | master.json L1635 @ c92a55c | "month 53 in SUBSIDY_BY_MONTH_TABLE (coinbase.rs#L283, 01b532e8)" | rusty-kaspa 01b532e8 consensus/src/processes/coinbase.rs: the table starts at L280, and index 53 = 2060172230 on L283; div_ceil(10) = 206017223 sompi (L76–L78).
- HELD | L1635 | "virtual DAA 559329804" | mainnet-blockdag.json virtualDaaScore 559329804; headers 200, Date 06:07:50 GMT (1 s after the blockreward read; "same read" is fine).
- HELD | L1635 | "Next step at DAA 583803000 (month 54): 1.94454365" | 557505000 + 26298000 (one month = 2629800 s × 10 BPS, the same gap as 531207000→557505000) = 583803000; index 54 = 1944543648, ceil/10 = 194454365 sompi; mainnet-halving.json nextHalvingAmount 1.94454365.
- HELD | L1635 | "estimated it at 2026-11-04 13:56:28 UTC ... an estimate from the block rate, not a fixed time" | mainnet-halving.json nextHalvingDate "2026-11-04 13:56:28 UTC"; headers 200, Date 06:07:49 GMT. Owner #21 marks this stale (13:56:20 → 13:56:28). The board uses the newer value and hedges it, so it did not land unhedged.
- HELD | L1635 | "Before: 2.18267645 after the DAA 531207000 step" | index 52 = 2182676446, ceil/10 = 218267645.
- HELD | SNAPSHOT L11 @ c92a55c | "12 reads 06:07:17Z–06:11:54Z (server Date): all HTTP 503, database.isSynced false" | api-tn10-health-a1..a6, b1..b6 .headers: all "HTTP/2 503"; first Date 06:07:17 GMT (a1), last 06:11:54 GMT (b6); every body has database.isSynced false.
- HELD | SNAPSHOT L11 | "accepted-tx clock about 25 to 26 min behind" (source of "26 min") | acceptedTxBlockTimeDiff 1530 s (a1) → 1546 (a6) and 1544 (b1) → 1561 (b6) = 25.5–26.0 min; accepted-tx clock 05:41:46Z in the a set and 05:45:51Z in the b set. The figure comes from the health bodies, not the desk clock.
- HELD | SNAPSHOT L11 | "kaspad 2.0.1 (965d43fe, 82e9e396) and 2.0.0 (e13cc6c8), mixed pool, no ratio" | 965d43fe 2.0.1 in a1–a5 and b5; 82e9e396 2.0.1 in b1, b3, b4, b6; e13cc6c8 2.0.0 in a6 and b2. No ratio is given (rule kept).
- HELD | SNAPSHOT L11 | MISS not used in the board text | The headers do say cf-cache-status MISS on all 12, but the board makes no claim about it.
- HELD | README L71 / JSON L117 @ c92a55c | "Open #68 (head 21880aa5, not merged)" | gh pulls/68: head 21880aa5, state open, merged false.
- HELD | README L71 / JSON L117 | "changes the stones Player template's script bytes, sil_template_hash and artifact id in artifact.json" | #68 files patch examples/build/stones/artifact.json: id 7133efc5… → e843bab4…; sil_template_hash [128,16,150,…] → [159,31,104,…]; the script byte arrays change (embedded hash and body).
- HELD | README L71 / JSON L117 | "its entries drop two hidden length arguments (Player.sil). Desk read of the PR diff; not compiled." | #68 patch examples/build/stones/sil/Player.sil: `-int gen__player_prefix_len, -int gen__player_suffix_len` removed from the entry params (accept_start becomes `(sig owner_sig, pubkey owner_pk)`) and replaced by byte[4] constants. Hedged as a desk read.
- FAILED | README L68 / JSON L99 @ c92a55c | "review requested from hmoog on 6 Oct 16:41Z (PR timeline); no review yet." | gh issues/127/timeline: review_requested hmoog 2026-10-06T16:41:26Z (holds), but also `reviewed` hmoog 2026-09-01T11:30:57Z; pulls/127/reviews: hmoog COMMENTED 2026-09-01T11:30:57Z on commit 05173ff0. "no review yet" is false. Title "snapshot-core (1/4): …", author biryukovmaxim, open: hold.
  FIX (README L68 and JSON L99, replace "; no review yet." with): "; no review since then (hmoog's only review is a COMMENTED one on 1 Sep 11:30Z, at commit 05173ff0, before the restack)."
- HELD | master.json L4 | "updated 2026-10-07" | matches.

## Owner's stale / not-verified items (did any land on the board unhedged?)
- #21 stale: see above; the board carries the newer 13:56:28, hedged as an estimate. OK.
- #17, #18, #19 (X: Manyfest, Sutton, Recon) and #34, #35 (X credits/counts): none of them are in the build diff. OK. Process note: no X calls were made by the build or by me.
- #22 (sweep 05:55–05:58Z window) and #23 (the 07:54:44 read): not in the build diff; they live in the sweep's lines (see S7-F1 on challenge/sweep-2026-10-07). Owner correction: the analysis says the sweep window "has no headers", but the sweep watch raws do include hdr-*.txt files.

## Checks
- master.json at c92a55c parses and re-serialises byte-identical with indent 2; 0 \u escapes.
- Leak scan of the added lines (emails, home paths, keys, kaspa: addresses): 0 hits. Private-name guard run on this commit; no private repo names beyond those approved on main.
- Links in the added lines: all 200 except prose-punctuation artifacts (a trailing "," or "." captured by the scan), a timeout on argent/pull/62 and a Medium 403 (bot block). All of those are pre-existing text, and none are FAILED.

## Trial merge c92a55c → 679141d (`merge --no-commit --no-ff`, aborted)
Conflicts in 3 files, 5 blocks: README.md L68–80 (the vProgs/#127 and Argent rows), SNAPSHOT-HISTORY.md L11–15 (both add a 7 Oct row on top: keep both, newest first), master.json L99–103 (vProgs note), L121–125 (Argent note) and L1643–1647 (block reward note).

Disagreeing facts:
1. Halving date: the sweep has "4 Nov 2026 13:56:20 UTC" (07:54 CEST read), the build has "13:56:28 UTC" (06:07:49Z read). Both are estimates that drift. Resolve with the build's text, which is newer, has headers and is hedged as an estimate.
2. Virtual DAA: sweep 559321971 (07:54 CEST) vs build 559329804 (06:07:50Z). These are different reads, so there is no conflict, but keep only one with its own timestamp.
3. api-tn10 pool and lag: the sweep has "about 20 to 26 minutes behind" around 07:55 CEST (HTTP 503) and a 2.0.0/2.0.1 pool; the build has 25–26 min and 2.0.1 (965d43fe, 82e9e396) plus 2.0.0 (e13cc6c8) at 06:07–06:11Z. The pools are consistent. The lag is not closing in the build's window (1530→1561 s), while the sweep text implies catching up. Keep each statement tied to its own window, and give no ratio.
4. Argent #68: the sweep has "no review", 5 files; the build adds the artifact and Player.sil detail. Compatible; merge the build's sentence into the sweep's row.

## Totals
14 HELD, 1 FAILED (B7-F1: #127 "no review yet"), 0 UNVERIFIABLE.

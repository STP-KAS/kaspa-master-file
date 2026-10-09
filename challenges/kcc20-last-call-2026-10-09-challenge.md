# Challenge: build/kcc20-last-call-2026-10-08

Reviewed tip: `5d7dcc90878dfe95cfd801c2b416e142e52200b0`. Base: merge-base `b7c52de6723b2b29800949ae3ec1547db92a1cc6` (34 commits behind origin/main `c64c01b`). Files: README.md, master.json, SNAPSHOT-HISTORY.md. Pass: 9 Oct 2026 ~08:30 CEST, kaspa master challenge. Sources: live GitHub (kccs, kcc20-reference, argent, RossKU/kob), kas-smiths about.json and posts/404.json, local blake3 recompute. No compiles. No X tool reads (credits floor); X-only badge image text left UNVERIFIABLE where not backed by GitHub.

**Result: HELD 22, FAILED 1, UNVERIFIABLE 2. Under PROCESS.md L7 this tip must not be merged until F1 is fixed.**

## FAILED

- **F1 | README.md KCC20 reference cell / master.json "KCC20 reference" note / SNAPSHOT-HISTORY.md 2026-10-07 21:25 row | private repo name going public.** The tip links a private STP-KAS note repository (gh `private: true`) five times (README, JSON, SNAPSHOT). Main has zero hits for that name. PROCESS forbids private repo names on the board. Fix: delete the private-note sentence and URL from those three places (keep the public artifact facts).

## UNVERIFIABLE

- **U1 | README.md / SNAPSHOT Sutton [2107936465628066024] | badge image contents.** Merge times for kccs#31 and kcc20-reference#1 are HELD via GitHub. The claim that the post image shows those two merged badges was not re-read through X this pass.
- **U2 | README.md / JSON IzioDev and ReconProtocol catalog posts | X-only text.** Left as catalog; not re-fetched.

## HELD

1. Base: tip is `b7c52de` plus 6 commits. Not a fast-forward onto current main (main has 34 commits the tip lacks); merge needs main merged in after F1.
2. kccs#31: merged by michaelsutton at 2026-10-07T20:38:09Z, merge commit `3fbec524abfbc20e87652eb938db218f8c17db17`, head `2ca37c0e`. Live kccs main is still that SHA. `gh api repos/kaspanet/kccs/pulls/31`.
3. `kcc-0020.md` at `3fbec524`: `Status: Last Call`, Category Application, Created 2026-08-21, Requires KCC-1, KCC-2, KIP-20, Comments-URI topic 8, no `Last-Call-Deadline`, still writes `P2PKHHash` for owner schemes 0x01/0x02. Index row on that tip lists KCC-0 Final and KCC-1/2/20 Last Call.
4. Printed P2PKHHash vectors: unkeyed BLAKE3 of `22^32` and `02||55^32` recompute to `7caa514a…4837bf` and `ed887ad1…abddf9` (local blake3).
5. Dispatch tags: unkeyed BLAKE3 of `transfer({int,byte[32],byte,byte,byte[32],byte[32]}[],byte[])` and `transfer_delegator(byte[])` first four bytes are `79c71c23` and `fd3ef14a`.
6. kcc20-reference#1: merged by michaelsutton at 2026-10-07T19:50:09Z, merge commit `c8a087117735a1f87c5c6d115fcddeaf2562c784`, head was `0175e2de`, 20 commits. Live argent-lang/kcc20-reference master is `c8a08711`. Not KCC-20 Final. Not a spendable token.
7. `fixtures/public-mint/kcc20.json` exists at `0175e2de` (contents API, size 232).
8. Argent master `9a9f4b10` is the #68 merge (2026-10-07T08:24:45Z, michaelsutton). Tags API length 0.
9. KCC-0 / wording / still-open cells: tip correctly states KCC-1, KCC-2, and KCC-20 are Last Call, not Final; main tip `3fbec524`; Do not weld forbids welding Last Call or #31/#1 merges into Final or a spendable token.
10. Kas-Smiths dated **8 Oct** counts 48/380/113: about.json today is 48/383/113; the tip's dated 8 Oct read is consistent with a later post landing. Post id 404 is topic 8 post_number 74, Ross, 2026-10-08T03:44:19Z (`/posts/404.json`).
11. RossKU/kob `d66bc8f` exists (ISC); tip sends the order-book product to kaspa-builders (caveat OK).
12. Archive tip `f26a0735` with `pushed_at` 2026-10-03T08:03:16Z matches the tip's dated 8 Oct morning read (SNAPSHOT 08:13 CEST). Live archive tip has since moved; the dated sentence is not a live pin.
13. Historical SNAPSHOT rows 2026-10-07 15:40–21:25: present-tense "KCC-20 stays Draft" / open #1 describe the state at those desk times (before 19:50Z / 20:38Z merges). The 08:13 row correctly records both merges and Last Call, Not Final.
14. master.json `updated` 2026-10-08; chip "Last Call" on KCC still open and KCC20 reference; URLs point at `3fbec524` and `c8a08711`.
15. Sutton on KCC-20 JSON note: file is Last Call on `3fbec524` since #31, not Final — matches live header.
16. No blank lines inside the pin-board table on this tip (GFM table stays contiguous through Do not weld).
17. Emails / home paths / Users/: zero new hits vs main. The only PROCESS name leak is F1.
18. Third-party: RossKU/kob and Kas-Smiths workshop facts stay catalog; product status pointed at kaspa-builders.
19. "Also open" kccs #26/#24/#4/#29: not re-litigated; tip does not claim they merged.
20. Referee lag: tip updates kccs side to Last Call for KCC-1/2/20 and says this pass did not re-read kaspaexplained — consistent.
21. Launch-proof cell adds Sutton 7 Oct lineage thread IDs; GitHub lineage desk reading is carried with a builders pointer for the recomputed id — scope OK.
22. JSON saefstroem note was amended to record #31 merged at 3fbec524 (README saefstroem cell was not edited on this branch and still carries the pre-merge "Open drafts … #31" sentence from the merge-base; advisory only, not scored FAILED here).

## Advisories (optional)

- **A1 | README.md saefstroem cell |** still says "Open drafts: kccs #24 and #31" while JSON and the KCC cells say #31 merged. Fix on rebase: drop #31 from that open-drafts list.
- **A2 | Merge order |** rebase or merge current main `c64c01b` into this tip after F1; main already carries a "state sentences above are out of date … full rewrite on build/kcc20-last-call-2026-10-08" caveat in the KCC20 reference cell.


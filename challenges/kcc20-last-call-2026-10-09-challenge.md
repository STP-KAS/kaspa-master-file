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


## Pass on the fresh branch build/kcc20-last-call-2026-10-09 @ 58f7d56a1c1f0bdafd4ab5100a3a8bd5942960b8

Reviewed tip `58f7d56a1c1f0bdafd4ab5100a3a8bd5942960b8`: f81fb3f (KCC rewrite plus the 08:42 row), then 58f7d56 (row link).
The branch was cut from main `3e52d8d24a25d16caa1b2e4a36e242f77b1fd796`. Onto main it is a fast-forward of 2 commits.
I checked live GitHub (9 Oct ~08:45–08:55 CEST) and the saved raws. No compiles or tests.

**Result: 3 FAILED. Under PROCESS.md L7 this tip must not be merged.**

### (1) Leak: clean

- I compared per-name counts for all 20 private names (`gh repo list STP-KAS --visibility private`), main vs tip, across every tracked file.
- Every count is equal, both as whole words and as substrings, and in f81fb3f as well as 58f7d56. Only name lengths are recorded here, never names.
- Neither commit in 3e52d8d..58f7d56 carries a name in its message, author or committer. Both are the noreply identity.
- None of the 6 unique commits of build/kcc20-last-call-2026-10-08 is an ancestor of the tip, and none of the 5 of build/kcc20-review-merge-2026-10-07 is either.
- No private repo names beyond those approved on main.

### FAILED (fix text names the file and line on 58f7d56)

- **K1 | README.md L66 (Kas-Smiths) | it still points at the old branch as if that branch carries the fact.**
  - The text is "Post [404](…/8/74) (8 Oct 03:44Z, Ross on KCC-20 slot limits) is on `build/kcc20-last-call-2026-10-08`." That branch is to be deleted and is not an ancestor of this tip.
  - /posts/404.json (HTTP 200) is Ross's "Question on the default 3/3 slot limit and settlement batching".
  - Fix: replace "is on `build/kcc20-last-call-2026-10-08`." with "asks about the default 3/3 slot limit and settlement batching; a forum question, not a status change."
- **K2 | SNAPSHOT-HISTORY.md L15 (07:58) and L16 (07:51) | the bridge wording now contradicts the board.**
  - Both rows still say "kccs `3fbec524` (live; the board's KCC cells still name `411b41bc` until `build/kcc20-last-call-2026-10-08` merges)". L15 also says "kcc20-reference `c8a08711` (live; the board still says open #1 and master `76648f99`)".
  - After f81fb3f the board names 3fbec524 and c8a08711, and the old branch will not merge.
  - Fix: in L15 and L16, replace " (live; the board's KCC cells still name `411b41bc` until `build/kcc20-last-call-2026-10-08` merges)" with " (board updated by `f81fb3f`)". In L15, replace " (live; the board still says open #1 and master `76648f99`)" with " (board updated by `f81fb3f`)".
  - The sweep-09 README/JSON bridge sentence "Since 7 Oct the state sentences above are out of date" is gone; it appears 0 times on the tip.
- **K3 | master.json L1821 (`kccs#24`) | a stale head in present tense contradicts README L62 and live state.**
  - The text is "Open ready head 7159d48 (20 Sep amend: aligned with review comments; was 06400c3)."
  - Live: pulls/24 is open, draft false, head 568884c4 (pushed 3 Oct 15:02:05Z).
  - Fix: replace that sentence with "Open, not a draft, head 568884c4 (3 Oct 15:02Z); 7159d48 was the 20 Sep amend (was 06400c3)."

### (2) KCC cells vs live: HELD

1. kcc20-reference#1 was merged by michaelsutton at 2026-10-07T19:50:09Z as c8a08711, which is argent-lang/kcc20-reference `master`. Head 0175e2de (Manyfestation, committed 19:09:30Z, "Publish KCC20 token artifact with reference documentation"), parent 6dda3631, head label Manyfestation:finalize-kcc20-reference, 20 commits. Five reviews, all COMMENTED (10–11 Sep). The 6dda3631…0175e2de diff is README.md plus the added fixtures/public-mint/kcc20.json.
2. kccs #31 was merged by michaelsutton at 2026-10-07T20:38:09Z as 3fbec524, which is kccs `main`. Head 2ca37c0e (saefstroem:kcc20-kcc0-compliance), 13 commits, 4 files, +695/−90, matching the four files named.
3. At 3fbec524 (contents API):
   - kcc-0020.md: `Status: Last Call`, Category Application, Created 2026-08-21, Requires KCC-1, KCC-2, KIP-20, Comments-URI topic 8. No Last-Call-Deadline.
   - kcc-0001.md and kcc-0002.md: Last Call, no deadline.
   - kcc-0020.md also contains `P2PKHHash` (4 times), the two printed BLAKE3 values, tags 79c71c23 and fd3ef14a, and a "Reference Implementation" section linking argent-lang/kcc20-reference.
4. #24 is open, draft false, head 568884c4, matching README L62. #26 d51721ad, #4 39a42644 and #29 55742861 are open. #36 is an open draft, d7809a17.
5. No check runs and no statuses on 3fbec524 or c8a08711.
6. "Open #1", "Draft" and `76648f99` appear only in past tense ("was then still", "was still … (10 Sep stub)", "then said `Status: Draft`") in README L62–L63 and JSON row 11. The JSON `kccs` row is pinned to 3fbec524 with chip "Last Call", and "KCC still open" is pinned to the 3fbec524 commit URL with chip "Last Call".

### (3) Sutton badge-image sentence: UNVERIFIABLE

- **U1 | README L62 / L63, master.json L75 / L81** | "carries an image of this merged badge and the reference pull's merged badge, per the 7 Oct read" and "shows this merged badge beside kccs #31, per the 7 Oct read".
  - There is no saved 7 Oct raw. The only saved copy is kaspa-master-watch/raw/2026-10-08/x-core.json (written 8 Oct 17:52). It holds id 2107936465628066024, created 2026-10-07T20:49:51Z, text "👀" plus a photo link, and nothing about what the image shows.
  - The time and the "eyes emoji" text are HELD. The badge content is not supported.
  - Suggested hedge: replace "per the 7 Oct read" with "(image content per the desk's 7 Oct read; the saved 8 Oct raw has only the eyes emoji and a photo link)".

### (4) Usual checks: HELD

7. master.json is canonical (byte-identical re-dump), with 0 `\u` escapes and `updated` 2026-10-09.
8. The GitHub markdown API render of the README gives 1 table and 36 `<tr>` on both main and the tip, with 0 pipe-paragraphs. The table and row count are unchanged.
9. The SNAPSHOT 08:42 row is on top, newest first. Its links to f81fb3f, 3e52d8d and 58f7d56 return 200.
10. Master scope: only KCC cells and the saefstroem kccs line were edited, with no new rows.

### Trial merges (merge --no-commit --no-ff, then aborted; local only)

- Onto origin/main 3e52d8d: a fast-forward, no conflicts.
- With build/tn10-three-nodes-2026-10-07 @ 84232f6e482c34a06e8923cf2b9f69a61ebd6463 (also cut from 3e52d8d): 1 conflict, SNAPSHOT-HISTORY.md L11. Both branches add a top row. Resolve by keeping both rows, 08:42 (f81fb3f) above 08:40 (ffecbe7). README and master.json merge cleanly.

### Advisories

- A3 | SNAPSHOT L16 / L23 | Older rows say the KCC facts "stay on `build/kcc20-last-call-2026-10-08` (not re-added)" or "also edit this row". These are true history, not merge promises, so they are left as is.
- A4 | master.json `KCC20 reference` chip "Last Call" | KCC-20 is the Last Call spec; the reference repo itself has no status. A chip such as "merged" would be more precise.

### Totals for this pass
10 HELD, 3 FAILED (K1–K3), 1 UNVERIFIABLE (U1), 2 advisories. Tip 58f7d56a1c1f0bdafd4ab5100a3a8bd5942960b8 is **not** cleared for merge.

## Recheck, 9 Oct 2026 09:10 CEST, tip f0ff185f6dcf38e54cbc618b07cb0476d02cdb88 (build/kcc20-last-call-2026-10-09)

Reviewed: b9e18c1 (merge of main 84232f6), b89c152 (K1-K3, U1), 0d9de20 (link), d0206a1 (#24 and #27 corrections) and f0ff185 (merge of main cb8b0df). Main cb8b0df is an ancestor of the tip, so the merge is a fast-forward.

- HELD leak: per-name private repo counts in README, master.json and SNAPSHOT equal main's, no commit message names one, and no commit from the two old kcc20 branches is in this branch's history. No private repo names beyond those approved on main.
- HELD K1: README L66 now reads "asks about the default 3/3 slot limit and settlement batching; a forum question, not a status change." No text points to the old branch as if it will merge (its only mentions are history in the 07:51 and 8 Oct 18:08 rows).
- HELD K2: the "board's KCC cells still name" and "board still says open #1" wording is gone from all three places.
- HELD K3: JSON reads "Open, not a draft, head 568884c4 (3 Oct 15:02Z)". Live, #24 is open, not a draft, head 568884c4.
- HELD U1: the Sutton badge sentence is hedged as the desk's 7 Oct read.
- HELD d0206a1 #24: kcc-0012.md at 568884c4 says "Status: Draft" on line 6.
- HELD d0206a1 #27: merged 2026-09-28T10:07:35Z by Manyfestation as da834af0, head 536472e9. Reviews show DISMISSED entries and Manyfestation APPROVED at 2026-09-28T09:54:34Z.
- HELD: canonical JSON (indent 2, 0 \u escapes). The README renders 36 table rows, the same as main. SNAPSHOT is newest first (two 08:50 rows, then 08:42), and the 6 older out-of-order pairs are the same as on main.
- Not this branch: "Still Draft" in JSON L93 (#29's KCC header status) and L1413 (an 18 Sep log note) are unchanged from main.

Totals at f0ff185: HELD 10, FAILED 0, UNVERIFIABLE 0. K1-K3 closed. Cleared for merge at exactly f0ff185. Once this is on main, stp's decision applies: delete build/kcc20-last-call-2026-10-08 and build/kcc20-review-merge-2026-10-07.

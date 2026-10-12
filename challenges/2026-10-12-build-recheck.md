# Recheck: build/2026-10-12

Rechecked 2026-10-12 08:15 CEST. Tip fd4320e2a342d86f9a085c9ea5bf4d7d804c3679 (8e14e7d merge of main 628d559, 2b5ba6f fixes, fd4320e row link). Main is 628d559.

**Counts: 12 HELD, 0 FAILED, 1 UNVERIFIABLE.**

## HELD
1. F1 merge: 8e14e7d has parents e64266b and 628d559, so it is a real merge. e64266b is an ancestor of fd4320e. The activity API shows a plain push e64266b→fd4320e at 06:14:52Z, with no force-push. Relative to e64266b, the merge adds only the sweep's 07:56 SNAPSHOT row and the prompt file; README and JSON keep the build side.
2. The F1 row edit is word for word: "..., merged with main 628d559 (the sweep) after it".
3. F2 is word for word: once in README ("The proposed fix (unreviewed) is the first commit `6c34186f`;") and once in JSON (without backticks). "The fix is the first" occurs 0 times.
4. F3 is word for word in README line 56 and in JSON row 7. A regex for "fix PR" in README and JSON finds 0, which also covers the linked form.
5. JSON row 7: the only changes against main are the F3 insert and the Build #814/#850 append. "(atharaldsen IBD/mempool reading + oskrcl confirmation 10 Oct 21:12Z; see TN10 public API)" is unchanged from main.
6. Advisory: "labels; 4 issue comments (06:07:04Z)." appears in README and JSON. The raw rk-pr1147-comments (Date 06:07:04Z) holds 4 comments.
7. SNAPSHOT is newest first: 08:14, 08:10, 07:56, then 11 Oct 19:14. All 41 headings are unique.
8. The 08:10 row rewrite is acceptable (ruling below).
9. Word-diff 8e14e7d..fd4320e (excluding the merge) has only inserts plus the "labels." and "open, fix" replacements. Nothing is dropped.
10. master.json is canonical: indent 2, 0 \u, updated 2026-10-12, no markdown in row 7.
11. Leak guard: 0 hits against the live list of 16, in the tree and in commit messages 628d559..fd4320e.
12. Trial merge onto main 628d559 is clean, and main is an ancestor of fd4320e, so this is a fast-forward.

## Ruling: the 08:10 row rewrite
Acceptable. The byte-identical rule protects history that has been merged: moved cells and rows that are on main. The 08:10 row has never been on main. It was written today on this unmerged branch, and the change is limited to the F1 wording I asked for plus the F2 neutral wording "proposed fix (unreviewed)", with nothing removed. The 08:14 row records the change. After merge it is frozen like any other row.

## UNVERIFIABLE
1. The Sutton posts live on X (X returned 429 today). They match watch-x-core.json.

Merge: build/2026-10-12 can fast-forward main from 628d559 to fd4320e.

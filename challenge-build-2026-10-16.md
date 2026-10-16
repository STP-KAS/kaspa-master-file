
## Recheck b9ec4aa36049d979178d696e73f430250713bd8a (16 Oct 2026 08:07 CEST)

Main d4042791637e2f0124581861a223e491f51c9d8a (confirmed). Chain: 8d680c8 (plain merge, parents c2ce944 + d404279), then b9ec4aa (SNAPSHOT row link). No force-push: c2ce944 is an ancestor; the activity log shows c2ce944 -> b9ec4aa as a plain push. Fast-forward of main: yes.

- Claims 1-10: HELD. The forum Date headers are saved for this run (about 05:57:12, t161 and p412 05:57:13, posts 05:57:14 GMT). The F2 carry-over is cleared.
- F1 prior cell: HELD. "Prior cell: TN10 public API (to 16 Oct 2026)" is in SNAPSHOT with its anchor, and it came from main unchanged.
- Build only appends: HELD. Word-diff d404279..b9ec4aa: README has 0 removed tokens. master.json has 3, and each is a note end ("Oct).", "ad45e241.", "call).") that is re-emitted unchanged before the appended Build text.
- DAGKnight sentence: HELD. It cites the challenger's live read (note 7050b47) and says Build made no X call.
- SNAPSHOT: HELD. 0 lines of main are lost. The new rows 08:03 and 07:58 are on top, newest first. The moved "Prior cell (to 16 Oct 2026)" sections are at the end. The out-of-order 1 Oct and 17-22 Sep rows are older frozen rows that were already like that on main.
- Merge: there were conflicts in README, SNAPSHOT and master.json. The resolution keeps main's cells and re-appends the Build sentences.
- Diff counts vs main: 3 files, +11/-9. master.json is canonical (indent 2, no \u escapes, updated 2026-10-16). 19-name guard: 0 in each commit, 0 in the tree.

### Build's flag: README L53 (TN10 public API)
FAILED, on main since cf081e6 (sweep 6a8ec3a -> d404279). At e16f8d3 and 6a8ec3a the row ended "Hedges kept. |". The sweep fix appended " Prior cell (to 16 Oct): [SNAPSHOT-HISTORY](...)." after that closing pipe. As a result, the row has 3 cells under a 2-column header ("| Object | Now |"). A GitHub GFM render (markdown API) gives 2 <td> cells, and the prior-cell link is not shown. On b9ec4aa, all the Build sentences in that row are hidden too. My sweep pass 802c315 missed this. It FAILED there and should not have been cleared.

Fix (on build/2026-10-16, since that branch already touches the cell): in README L53, replace "Hedges kept. | Prior cell (to 16 Oct):" with "Hedges kept. Prior cell (to 16 Oct):", and append " |" at the end of the line. Nothing else changes.

Counts: HELD 9, FAILED 1, UNVERIFIABLE 0. Merge: after the L53 fix and a recheck.

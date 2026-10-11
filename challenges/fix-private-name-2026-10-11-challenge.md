# Challenge: master/fix-private-name-2026-10-11

## Pass, 11 Oct 2026 18:43 CEST, tip e84cc1360774e181d467c9e3e38d4717e9f5942e (one commit on main d31f707)

- HELD: against the live private list (16 names, read just before this pass), the tree has 0 case-insensitive hits and the commit message has 0. On main d31f707 the same check gives 7 hits in 3 files.
- HELD: the diff is exactly the requested edit. 3 table rows are deleted (GROK-47-REVIEW, RETEST, STP-REPOS) and one item is removed from the RETEST "Skipped on purpose" list, with nothing else changed. Each file renders exactly one fewer table row than on main (68/69, 80/81, 69/70).
- HELD: there's no SNAPSHOT row and master.json is untouched, which is correct: a row would have to describe the name.
- HELD: main d31f707 is an ancestor of the tip, so this is a fast-forward.
- Advisory: STP-REPOS's count/header lines still describe an older read; refresh them at the next sweep (as A5 from 10 Oct).
- Note: the name was public until 11 Oct 16:26:51 CEST, so older commits that name it stay reachable by SHA. That isn't fixable without a history rewrite and isn't requested.

Totals: HELD 4, FAILED 0, UNVERIFIABLE 0. Cleared to merge at exactly e84cc1360774e181d467c9e3e38d4717e9f5942e.

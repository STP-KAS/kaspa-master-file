# Challenge: builders build/kpi-s0-trials-2026-10-08
Tip baac56f4760c226a86ef3f079b5abc77c0fa0583 (2026-10-08 23:12 CEST). Base 5487e1f (stale). Reviewed 2026-10-15 18:21 CEST.
Counts: HELD 0, FAILED 1, UNVERIFIABLE 0 (content not scored).
- FAILED 1: the branch is not mergeable. The trial merge onto main ade9503 conflicts, and it is not a fast-forward. The kpi-based-apps branch touches the same files (do-not-weld.md, entries/olafweller-kpi.md).
  Fix: plain-merge main into the branch (no rebase, no force-push) and resolve the conflicts, keeping both 13 Oct and 8 Oct sections. Then request a new pass. Or close the branch if kpi-based-apps supersedes it.

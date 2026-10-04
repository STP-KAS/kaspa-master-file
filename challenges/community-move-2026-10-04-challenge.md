# Challenge: master/community-move-2026-10-04

Reviewed tip `220fa36b1fad7143ebd8ee28a4858b26ad60e7c1` (4 Oct 2026, 19:14 CEST). It is one commit on main `7a54145`, a fast-forward, with the noreply author and committer only. Instruction source: stp in my chat at 19:01 CEST, "Revert the Olaf Weller row from main and move it into a new community repo".

- HELD: the README 'Privacy initiative (KPI)' row and the master.json now-row are removed. `git grep -i 'Privacy initiative\|KPI)'` on README and master.json now matches only the Kas-Smiths topic-156 history lines (README L65, master.json L303). Those are forum history from before today, not a pointer to the removed row.
- HELD: the research.kas.pa fix is kept. The word diff against `c11ae18` shows only `{+at dc2f176d+} [-is-]{+was+} … {+only; since 3 Oct it carries PoC code. Opened+}` in README and `{+research only at dc2f176d, PoC code since 3 Oct;+}` in JSON. That matches the facts held in challenges/wellerolaf-2026-10-04-challenge.md: docs plus a check script at `dc2f176d`, PoC code from `3a1efa8` (3 Oct 21:12 CEST). The dangling "(row Privacy initiative (KPI))" pointer is gone.
- HELD: against `c11ae18` the net change is README +1/−1, master.json +1/−1 and SNAPSHOT +2 (the 18:16 and 19:10 rows). Every other line is byte-identical.
- HELD: master.json parses, uses indent 2, has 0 `\u` escapes, and the tree has no conflict markers.
- HELD: the SNAPSHOT 19:10 row describes the move accurately, says "No history rewrite", and is newest first.
- ADVISORY: the row says 19:10 while the commit time is 19:01:47. This is cosmetic.
- ADVISORY (scope): KasperoLabs is not moved yet. stp asked at 19:01 for the same treatment, and the request reached the owner after this push. Rows: README L90 'Third-party 26 Sep' (SilverScript Studio, @KasperoLabs) and master.json L241–243. Add them to this branch before the merge so stp OKs one move. I will recheck the new tip.
- ADVISORY: I agree with keeping the earlier olafweller mentions (Kas-Smiths topic 156, the research.kas.pa citation of dc2f176d, the 'Do not weld' item). They are source history, not community entries.

Totals at 220fa36: HELD 5 · FAILED 0 · UNVERIFIABLE 0. No open FAILED. No X calls. No public reply.

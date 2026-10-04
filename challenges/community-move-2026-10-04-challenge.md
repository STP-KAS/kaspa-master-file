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

## Recheck @ b567a48 (4 Oct 2026, 19:20 CEST)

Reviewed tip `b567a4898dfd485bd91cb5204d864465c806384b`. It is one commit on `220fa36`, with the noreply identity only. Main `7a54145` is an ancestor. The diff against 220fa36 is README +1/−1, master.json +2/−2 and SNAPSHOT +1/−1. The JSON parses with 0 `\u` escapes, and the tree has no conflict markers.

- HELD (KasperoLabs moved): the Studio mainnet claim (x.com/KasperoLabs 2103564787686793710), the vertex relay (2103759384694185988), kasperolabs/silverscript-studio with `e27a7c4e`, and the KasDash demo are gone from README L90 and the master.json entry. The JSON url is now `https://github.com/kaspanet/rusty-kaspa/issues/1140`.
- HELD (#1140 kept): `gh api repos/kaspanet/rusty-kaspa/issues/1140` at 19:19 CEST returns open, 0 comments, created 2026-09-30T04:43:20Z, title "SDK v2.1.0 findings from mainnet: …". That matches "(30 Sep, SDK v2.1.0 findings from mainnet) is open with no comments". The author is kasperolabs, which the row no longer says. That is fine, because it is a kaspanet object.
- HELD (other lines unchanged): the Kurncy, saefstroem, dnsseeder v0.9.6 and Umbrel #6120 text is byte-identical to 220fa36.
- HELD (SNAPSHOT): the 19:10 row now covers both moves accurately and is newest first.
- ADVISORY: the owner's message said "No kaspero, studio or kasdash string remains". That is not quite right: master.json L285 'Do not weld' still says "SilverScript Studio into a Kaspa core tool". Keep it. It is a guard, the same as the kept kaspa-privacy-initiative 'Do not weld' item, but the statement should be corrected.
- ADVISORY: "Not desk-tested." after #1140 was removed with the Studio text. The SDK findings are still not desk-tested, so consider restoring those three words after "no comments." in README and JSON.

Totals at b567a48: HELD 9 · FAILED 0 · UNVERIFIABLE 0 (5 from 220fa36 plus 4 here). No open FAILED. Clear to merge with stp's OK. No X calls. No public reply.

## Recheck @ 25b51ca (4 Oct 2026, 19:05 CEST)

Reviewed tip `25b51cabc05144abc89a451e80a5fa89e624b70a`. It is one commit on `b567a48`, with the noreply identity only. Its only change is `[-19:10-]{+19:01+}` in the SNAPSHOT row, which closes the cosmetic advisory, and the row is still newest first. The JSON is untouched. The two b567a48 advisories ("SilverScript Studio" left in 'Do not weld' at master.json L285, which I'd keep, and the optional "Not desk-tested." after #1140) are still open and do not block. Totals: HELD 9 · FAILED 0 · UNVERIFIABLE 0. Clear to merge with stp's OK.

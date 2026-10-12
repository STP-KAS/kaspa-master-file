# Recheck: master/weekly-fixes-2026-10-12

Rechecked 2026-10-12 16:01 CEST. Tip 4a23d0600648c2e4195e8b908f49700361465022, one commit on aab4c8f (plain push 14:00:57Z per activity API; aab4c8f is an ancestor). Main is fd4320e.

**Counts: 9 HELD, 0 FAILED, 0 UNVERIFIABLE.**

1. F1 HELD, word for word. "HTTP 404 at the 12 Oct 09:34–09:35 CEST weekly reread and again at 16:00 CEST (challenge read, server Date 14:00:09Z)." appears once in README and once in JSON. "API read 12 Oct 14:00:10Z (16:00 CEST, server `Date`, challenge read):" is in README, and the plain form is in JSON. Both match my saved challenge headers.
2. Advisory 1 HELD, word for word. "still listed at the 12 Oct Build read (08:07 CEST, server Date 06:07:04Z)" appears once in README and once in JSON.
3. Advisory 2 HELD. "The zero-public-comments rule stands." is now after the 11 Oct #1147 exception in README and JSON.
4. The second "rule stands" change HELD. The README vprogs #165 sentence ("…5847335087)). The rule stands.") now reads "The zero-public-comments rule stands.", the same wording as the 11 Oct sentence. That edits a live README cell (This desk), not a SNAPSHOT row. The earlier wording survives verbatim in the moved This desk cell in SNAPSHOT-HISTORY ("Moved from README on 12 Oct 2026 (weekly fixes)"), so it is not a history rewrite. The JSON vprogs note already names the rule ("recorded exception to the zero-public-comments rule").
5. The word-diff aab4c8f..4a23d06 shows only these replacements and inserts. Nothing else is dropped.
6. master.json is canonical: indent 2, 0 \u, updated 2026-10-12.
7. SNAPSHOT-HISTORY.md is unchanged, so the 15:58 row and the moved cells stand.
8. Leak guard against the live list of 16: 0 hits in the tree and in commit messages fd4320e..4a23d06.
9. Trial merge onto fd4320e is clean, and fd4320e is an ancestor, so this is a fast-forward.

Advisory: the 16:00 fix commit has no SNAPSHOT row of its own; an optional one-line row would follow the 08:14 precedent. This is not a gate.

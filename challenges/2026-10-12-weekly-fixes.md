# Challenge: master/weekly-fixes-2026-10-12

Reviewed 2026-10-12 16:00 CEST. Tip aab4c8fb8a342075cac3c15e992d4451de7aff22 (content 4314a87, SNAPSHOT row link aab4c8f), on main fd4320e2a342d86f9a085c9ea5bf4d7d804c3679, confirmed by ls-remote; main has been at fd4320e since 06:16:14Z. The activity API shows the branch created 13:58:15Z at aab4c8f. It fixes weekly note c967cef. Raws: weekly-fixes/. My own reads were saved there as challenge-hdr-c6112983771.txt (404, Date 14:00:09Z) and challenge-pr1147.http (200, Date 14:00:10Z).

**Counts: 16 HELD, 1 FAILED, 0 UNVERIFIABLE.**

## HELD
1. Org count: the raw org.json has 138 repos (122 PUBLIC, 16 PRIVATE). Live at 15:59 CEST: the same 122 + 16, and users/STP-KAS public_repos 122. The private list is unchanged from the guard list.
2. Comment 6112983771 returns 404 live (13:59:26Z and 14:00:09Z) and is missing from the #1147 comment list. A 404 on an issue comment means it is gone; GitHub does not show who removed it, and the board does not name an actor. "Later deleted" holds.
3. The 11 Oct exception stays as history in README and JSON ("11 Oct, recorded exception: STP-KAS commented once on rusty-kaspa#1147 at 19:44:32Z ..."). The old wording with the link is verbatim in the moved This desk cell.
4. #1147 (raw and live): open, head b4df2d8f, blocked, not merged, comments 4 = oskrcl 6111076516 and 6111091787, atharaldsen 6111314427, supertypo 6124362740. So 3 earlier + 1 new − 1 deleted = 4, which adds up.
5. kaspa-explained: HEAD e48f53b8 (2026-10-06T08:21:27Z), 4 commits after a68bcaf6. /status raw (st.h 200, Date 13:56:44Z) and live (13:59:35Z): "Sources checked October 6, 2026", "KCC-1 and KCC-2 are in Last Call since October 1 ... KCC-20 is Draft." The cell's wording matches.
6. supertypo: the quote is verbatim (raw c1147.json body equals live, CRLF aside) and author_association is CONTRIBUTOR. The wording is neutral: "a comment, not a review", "not a maintainer or collaborator role", and the rest is paraphrase.
7. W-F1 per c967cef: README and JSON now say 138 / 122 public + 16 private, with the 6 Oct and 2 Oct counts kept as dated older counts. No private names.
8. W-F2 per c967cef: DESK-BOT.md L26 now points to AGENTS.md Standing authority; the 29 Sep resync is history.
9. W-F3 per c967cef: the live "one of them by STP-KAS" clause is gone and the dead anchor is removed. The count is 4, not the c967cef 3, because supertypo commented at 12:34:52Z after the weekly read; that is correct live.
10. W-F4 per c967cef: pins e48f53b8, and /status was re-read against that tip.
11. W-F5: README now has "KCC-20 is Last Call on main [`3fbec524`](...); the site still says Draft." This matches the c967cef fix text word for word (with a link), and the JSON KCC-0 footgun note has the plain form. kcc-0020.md at 3fbec524 says "Status: Last Call"; kccs main is 3fbec524.
12. Moved cells: the bodies of This desk, TN10 public API and Referee lag are byte-identical to fd4320e README, under one heading "Moved from README on 12 Oct 2026 (weekly fixes)" with 3 unique ### headings (45 headings in the file, all unique). All SNAPSHOT anchors in README and JSON resolve.
13. master.json is canonical: indent 2, 0 \u, updated 2026-10-12, 0 markdown, same keys. Only rows 4, 9 and 34 changed. The text they replaced is in the README form of the moved cells, plus the 6 Oct count kept in JSON, so nothing was silently dropped.
14. SNAPSHOT newest first: 15:58 row on top, linking 4314a87.
15. Leak guard against the live list of 16, case-insensitive: 0 hits in the tree and in the commit messages fd4320e..aab4c8f.
16. Trial merge onto fd4320e is clean, and fd4320e is an ancestor, so this is a fast-forward.

## FAILED
**F1. The "15:56 CEST" HTTP reads have no saved headers.** The raws pr1147.json, c1147.json and org.json carry no headers, and there is no saved 404 header. Yet the TN10 cell says "API read 12 Oct 13:56Z (15:56 CEST, server `Date`)", and This desk says "HTTP 404 ... and again at 15:56 CEST". Under the header rule an HTTP status needs a saved Date in the window. The facts hold live (see HELD 2 and 4).
Fix, two options:
(a) Save the headers for those reads under weekly-fixes/ and keep the text.
(b) Use my saved reads.
- README This desk row and master.json row 34: replace "HTTP 404 at the 12 Oct 09:34–09:35 CEST weekly reread and again at 15:56 CEST." with "HTTP 404 at the 12 Oct 09:34–09:35 CEST weekly reread and again at 16:00 CEST (challenge read, server Date 14:00:09Z)."
- README TN10 cell and master.json row 4: replace "API read 12 Oct 13:56Z (15:56 CEST, server `Date`):" with "API read 12 Oct 14:00:10Z (16:00 CEST, server `Date`, challenge read):" (in JSON, "server Date" without backticks).

## Advisory
- "still listed at the 12 Oct morning desk read (about 08:10 CEST)": the saved Build raw says 08:07 CEST (rk-pr1147-comments, Date 06:07:04Z). Suggest "still listed at the 12 Oct Build read (08:07 CEST, server Date 06:07:04Z)".
- "The rule stands.": suggest "The zero-public-comments rule stands.", since the shortened exception sentence no longer names the rule.

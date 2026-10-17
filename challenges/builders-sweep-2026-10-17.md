# Challenge: kaspa-builders master/builders-sweep-2026-10-17 (17 Oct 2026 07:54 CEST)

Tip 6827fae374e43e287b87a4ca571905ffebd09d76, on main 546eda930f7d0157f739c1f43637f0846d546a00 (confirmed). Commits: fb1c4f9 (content, 07:49:56 CEST), then 6827fae (row). The branch was created at 05:50:02Z (branch_creation), so there was no force-push. It fast-forwards main. 19-name guard: 0 in each commit, 0 in the tree.

## HELD (14)
1. x402 v1.0.0: published 16 Oct 06:06:05Z by elldeeone, prerelease false, target main. Annotated tag 09411aa7 peels to e5f5b0ed.
2. The releases/latest header is saved (raw/2026-10-17/builders/x402-releases-latest.raw): HTTP 200, Date Sat, 17 Oct 2026 05:44:55 GMT, body v1.0.0.
3. x402 main ee6670c6 (16 Oct 10:24:46Z), after a997d0c9 and d1fb3045. The entry's line that the 16 Oct "No v1.0.0 tag" read was true at the time is accurate.
4. The release notes quotes ("first stable release", AI-assisted scans) match. "Not a third-party audit" is a fair caveat.
5. Post 414: Ross, 17 Oct 04:35:07Z, topic 15 post 34 (master watch raw posts.json). Marked his test, not desk-checked.
6. The KaspaScopio 2110989767068225776 quote matches (live read).
7. KPI #31 merged 01:17:00Z as 0167b04f, #32 merged 01:20:54Z as 335fbca8, main 335fbca8.
8. kascov c5a1aaa9 (16 Oct 09:41:40Z): the message matches.
9. The KASPAglobal 2111009295357690261 quote matches. It is a relay, with the caveat.
10. KasSigner: the brt2412 and IzioDev posts match, and it is not added as an entry.
11. KaChat: 37 commits since the marker (paginated), tip b5bbd97b at 04:11:37Z, a revert.
12. Kaspire windows-desktop-build tip 31148025 (16 Oct 19:57:19Z): the message matches.
13. builders.json is canonical (updated 2026-10-17, no \u escapes). README rows all have the right cell count and end with " |". 23 entries, none added.
14. SNAPSHOT: the 07:49 row is on top and newest first. 0 frozen lines changed or lost.

## FAILED (2)

F1. The x402 Now cell and note still state "Not v1.0.0." in the present tense, which has been false since 16 Oct 06:06Z.
- README x402 row: replace "Desk recomputed the voucher domain tag. Not v1.0.0. Not mainnet." with "Desk recomputed the voucher domain tag. Not v1.0.0 until the 16 Oct release (see 17 Oct). Not mainnet."
- Move the 546eda9 cell verbatim to SNAPSHOT under "### Prior cell: kaspa-x402 (elldeeone) (to 17 Oct 2026)", at the end.
- Insert before the closing " |": " Prior cell (to 17 Oct): [SNAPSHOT-HISTORY](https://github.com/STP-KAS/kaspa-builders/blob/main/SNAPSHOT-HISTORY.md#prior-cell-kaspa-x402-elldeeone-to-17-oct-2026)."
- builders.json x402 note: replace "Not v1.0.0. Not mainnet. Bind the RC2 tag, not main." with "Not v1.0.0 until the 16 Oct release (see 17 Oct). Not mainnet. Bind the RC2 tag, not main (to be revisited against v1.0.0)."

F2. SNAPSHOT L41: the kob tip was stale when committed. Master was already 69035b3f (17 Oct 05:43:08Z), and 8ac1d39e, 9126dee9 and c72e5291 also landed after 08f1cae3, all before fb1c4f9 (05:49:56Z).
- Replace L41 with "- **RossKU/kob:** 33 commits on master since the marker, tip `69035b3f` (17 Oct 05:43:08Z, soak x402 payer logging)."
- Re-read the count at fix time; I counted 32 up to 05:41Z plus 69035b3f.
- Master prompt L56 should match, or take the master F3 generic line.

Counts: HELD 14, FAILED 2, UNVERIFIABLE 0.

# Challenge r2: builders build/kpi-s0-trials-2026-10-08
Tip 461909a2c4d2248119d7e524a6dcdd3613a1a98f (merge of main 5dac0515528f27b0c6389abfed1c808f52ad56d2 into baac56f). Reviewed 2026-10-15 18:32 CEST.
No force-push: the activity API shows a push baac56f -> 461909a at 2026-10-15T16:28:13Z.
Content scored in full (live GitHub reads 15 Oct). Every hash and link that is not on main was checked.
Counts: HELD 14, FAILED 1, UNVERIFIABLE 0. Verdict: BLOCKED.
## HELD
1. The report blob is 9f2453c1748405ef8adc074e0a1961a4c0c2748e at both e4a10390 and ccbdfbc7.
2. #22 merged 2026-10-08T18:22:45Z as e4a10390. ccbdfbc7 is 2026-10-08T19:52:31Z.
3. "PASS for the three scoped S0 scenarios"; does not close G5/G6; about 1.4 s apart, not network arrival.
4. All 13 txids and the Full-body hash appear in both public-record.json and the report.
5. Sompi values 3,210,000,000, 2,210,000,000 and 1,000,000,000, and schema kpi-a1-s0-public-summary/v1, are in the record.
6. observed_seconds 153.514..., 324.725..., 141.841..., 334.226... and 323.320... are in the record; the report rounds them to 334.23 and 323.32.
7. Intent gap 1.425701759 (record) and 1.425702 (report). allowOrphan is in the record.
8. Accounting 22,470,000,000, 8,840,000,000, 4,000,000,000, 9,630,000,000 and 5,044,700, and "224.7 = 88.4 payouts + 40 terminal fees + 96.3 unspent reserves", match.
9. B start and finish times match. The SyntaxError, broken pipe, 96.3 and "Thirty" offline cases are in the report.
10. c541dd51 is dated 2026-10-08T15:38:40Z with the quoted message. compare c541dd51...e4a10390 is diverged, ahead 3, behind 27.
11. The evidence dir holds README.md, SHA256SUMS and public-record.json. The S1 file still says "PR #22 remains draft."
12. Merge: both sections are kept (13 Oct Based Apps and 8 Oct S0; do-not-weld 13 Oct and 8 Oct). The SNAPSHOT 8 Oct rows sit in date order below the 13 Oct rows. No drops in the word-diff.
13. builders.json is canonical (updated 2026-10-13). 22 entries = 22 index rows.
14. AGENTS caveats: author's record, txids not desk-checked. Guard 0/19. It fast-forwards onto 5dac051.
## FAILED
F1 (misquote). do-not-weld.md L17 quotes the runner design file's "awaiting publication" line. docs/poc-a1-trial-runner.md at e4a10390 L5 says "Results await Claude's review and Olaf's publication decision".
Fix: in do-not-weld.md L17, replace 'the runner design file's "awaiting publication" line' with 'the runner design file's line "Results await Claude's review and Olaf's publication decision"'. In entries/olafweller-kpi.md (evidence bullet), replace "still says phase B results were awaiting publication" with "still says results await review and a publication decision".
Advisory: the evidence README says "not a self-contained cryptographic or chain-acceptance proof". The entry leaves out "cryptographic or".

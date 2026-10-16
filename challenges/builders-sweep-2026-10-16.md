# Challenge: kaspa-builders master/builders-sweep-2026-10-16
Tip 7e89e4fac530df6189b676e1fa4589145f473211 (e53139a, 7e89e4f). Main 54e3ed483890454b61ea1e6c8e68dcb39046b50e (confirmed). One push only (branch creation, 05:54:34Z): no force-push. It fast-forwards.
Counts: HELD 11, FAILED 2, UNVERIFIABLE 0. Verdict: BLOCKED.
## HELD
1. x402 #35 merged 2026-10-15T22:44:55Z as f83eaad4, title matches. The body says "funded and independent-source live validation remain pending".
2. x402 #37 merged 2026-10-16T04:04:37Z as e5f5b0ed. The body claims an actual browser run on funded Testnet; it is labelled as the author's claim.
3. The release list (paginated, 5) is all prereleases; tags are latest v1.0.0-rc.2.
4. Caveats in entries/x402.md and builders.json: author claims, not desk-run, not mainnet.
5. IzioDev/argent-playground is a fork of argent-lang/argent-playground. feat/name-service is at 78d53aa7 (2026-10-14T20:02:18Z). ag/name_service has smt.ag, name.ag and registry*.ag. Caveat: third-party fork, not merged, not desk-tested.
6. KaChat main 0a3848fd (2026-10-16T03:10:58Z).
7. onlykas (now danieliyahu1/kaskama) master 781a550f (2026-10-15T19:55:55Z, image pin).
8. builders.json is canonical (updated 2026-10-16). 23 entries = 23 README index rows.
9. SNAPSHOT is newest first. No main row was changed. The dated section is above the 15 Oct one, which is this file's convention. "Last checked" lines are updated, with facts kept in the bodies.
10. Private grep: 0 hits against 19 names.
11. Word-diff shows no dropped facts.
## FAILED
F1 ("releases/latest still 404"). entries/x402.md has no 16 Oct saved header; raw/2026-10-16 holds none for x402.
Fix: save the header. A desk read at 2026-10-16 05:57:40 GMT returned HTTP 404. Then write "`releases/latest` 404 because every published release is a prerelease (latest v1.0.0-rc.2; server Date <saved Date>)". Otherwise drop "(`releases/latest` still 404)".
F2 (x402 main tip). "main tip `e5f5b0ed`" (entries/x402.md, builders.json note, SNAPSHOT row and dated section) was stale before e53139a was committed (05:54:22Z). main moved to 046503c3 at 2026-10-16T05:51:08Z: "Host the Testnet relay on Cloudflare and verify public browser payments", a direct push on top of e5f5b0ed. The A-Z read had e5f5b0ed.
Fix: replace "main tip `e5f5b0ed`" with "main tip `046503c3` (16 Oct 05:51:08Z, direct push after #37: Cloudflare-hosted Testnet relay; author's record)" in entries/x402.md, the builders.json note, the SNAPSHOT row and the dated section. Also change the entry's Last checked "(main `e5f5b0ed`; ...)" to "(main `046503c3`; ...)". Advisory: add "not mainnet" to the dated-section #35 bullet.

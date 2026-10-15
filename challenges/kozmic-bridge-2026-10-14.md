# Challenge: builders build/kozmic-bridge-2026-10-14
Tip 2f326abe26908a765075715ffb1072d8905cf1d2. Base ade9503. Reviewed 2026-10-15 18:21 CEST. Trial merge: clean and fast-forward.
Counts: HELD 8, FAILED 1, UNVERIFIABLE 0.
- HELD: repo created 2026-10-14T01:27:47Z; tip 1f18c7eb; 12 commits. bridge.sil L68-70 and L135, and Vault.sol L6, L10 and L58 match. The README strings match: mainnet since 2026-10-12, the tx IDs, 18.5 min, image id 4756d736. kccs main 1516a6c4. LICENSE text is MIT; the API spdx is NOASSERTION, which is advisory only. Mainnet claims are hedged as the author's. Guard: 0 hits.
- FAILED 1: "GET of IMAGE_IDS.txt returned 404" (entries/kozmic-bridge.md and challenge K6) has no saved header.
  Fix: cite the saved header, for example "HTTP 404 (header Date Thu, 15 Oct 2026 16:20:34 GMT)", or reword to "IMAGE_IDS.txt is not in the tree at 1f18c7eb".
- Merge order: the first builders branch to merge goes in plainly. The others then need a plain merge of main (SNAPSHOT top row, README, builders.json).

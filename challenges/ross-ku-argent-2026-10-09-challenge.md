# Challenge: build/ross-ku-argent-2026-10-08

Reviewed tip: `ceb802924ef7de21e6a0180dce5e2bc2ceaf7cac`. Base: merge-base `e1558937b713fec557b9bd0fd767ecb666f2a8bf`. Commits: f1bf9e2, b36d90c, ceb8029. Files: README.md, master.json, SNAPSHOT-HISTORY.md (Argent cell only). Pass: 9 Oct 2026 ~08:33 CEST, kaspa master challenge. Sources: GitHub (argent #61/#69, RossKU/kob). No Telegram or X re-read. No compiles.

**Result: HELD 12, FAILED 0, UNVERIFIABLE 3.**

## UNVERIFIABLE

- **U1 | README / SNAPSHOT | Ross Ku Telegram replies at 13:14Z–13:56Z in Core R&D.** Cited against [16113]/[16118](https://t.me/kasparnd/). This pass did not open Telegram. Treated as his account of his own answers.
- **U2 | README / SNAPSHOT | Byte figures and behavioural claims from his docs as measured facts.** `argent-port-compare.md` at `9d8030c9` does print 1,684 / 2,705 / +1,021 / 1,584 / 591 / 514 / splice 1,713 (+29) and "1,004 tests". Desk did not recompile or re-run those tests.
- **U3 | README | "the same on this master with #68" for the 244 limit.** His measurement claim; not desk-checked against Argent `9a9f4b10`.

## HELD

1. Tip is a descendant of `e155893`; three commits on the Argent cell, SNAPSHOT row, and JSON note only.
2. SNAPSHOT row 2026-10-08 22:27 links content commit `f1bf9e2`; tip `ceb8029` is the short-hash fix after the row-link commit — matches the branch history.
3. RossKU/kob commit `9d8030c9b1aca370af2315230c15920c021e39a2` exists (2026-10-08T13:12:28Z); `docs/argent-port-compare.md` and `docs/argent-feedback.md` are present at that tip.
4. `argent-feedback.md` at that tip says the table is against pinned upstream `b312deda…`, matching the board's hedge that it is not against master `9a9f4b10`.
5. argent#69: open, RossKU, created 2026-10-08T14:52:06Z, head `435fa89a`, body is the `import … id` pin and does not mention the fingerprint (pulls API; reviews length 0).
6. argent#61: open issue (not a PR), updated_at 2026-09-16T16:00:36Z — "still open" / no update since 16 Sep holds.
7. Argent master still `9a9f4b10` live (7 Oct 08:24Z #68 merge). Tags length 0.
8. Product KOB stays off the board; tip points 8 Oct notes at RossKU/kob and keeps "not a kaspanet pin" — builders/product scope OK.
9. Do not weld / welding: tip does not weld his figures into an upstream change or a desk run.
10. master.json Argent note mirrors the README addition; no other JSON keys moved.
11. No private repo names, emails, or home paths in the added text (artifact-read count 0; matches main).
12. No blank lines introduced in the pin-board table.


## Recheck after main merge, 9 Oct 2026 08:50 CEST, tip 03904ffa54f3a2a8a9cf254191362ead6c88eda4

Reviewed: merge 4d45710 (main 2655cfc into ceb8029) and link commit 03904ff. Net diff against main 2655cfc: README, master.json and SNAPSHOT, +4/-2.

- HELD: the Argent cell keeps main's text and adds one sentence, labelled "Ross Ku (third-party, not desk-checked)". Every other cell is main's text.
- HELD: RossKU/kob 9d8030c9 docs/argent-feedback.md L79-L82 says that with an artifact import "the interface fingerprint excludes the handle" and "Whoever supplies the artifact then chooses which template the importer accepts". Patch 0002 is item 12 (L82, L246).
- HELD: https://github.com/argent-lang/argent/pull/69 is open, not merged, head 435fa89a on RossKU/argent, 9 files changed, 0 reviews. argent master is still 9a9f4b10 (committed 2026-10-07T08:24:44Z).
- FAILED RA-F1 (SNAPSHOT-HISTORY.md, 8 Oct 22:27 row): "(trimmed on merge 9 Oct; detail moved to kaspa-builders)" is not true yet. At 9 Oct 08:45 CEST, kaspa-builders main is 5487e1f and no branch there mentions RossKU or Ross Ku. The 08:37 row says this correctly ("handed to kaspa master bot for kaspa-builders"). Fix: replace "detail moved to kaspa-builders" with "detail handed to kaspa master bot for kaspa-builders".
- FAILED RA-F2 (README Argent cell and the master.json Argent note): "; see [kaspa-builders](https://github.com/STP-KAS/kaspa-builders)." points to a repo that has nothing on this yet. Fix, in both files: delete "; see kaspa-builders …" and end the sentence after "on 9 Oct 06:37Z)." Add the pointer back, linking the builders entry itself, once that entry is on kaspa-builders main.
- HELD: canonical JSON. Private repo name count is equal to main's, so there are no private repo names beyond those approved on main. main 2655cfc is an ancestor of the tip, so it fast-forwards.

Totals at 03904ff: HELD 5, FAILED 2, UNVERIFIABLE 0. Not cleared.

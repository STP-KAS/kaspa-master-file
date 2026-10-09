# Challenge: build/2026-10-09

Reviewed tip: `7dc788df43e07e0e82e5a54c7f2c5869bebd1652` (content `0ef247a`, row link `7dc788d`).
Base: origin/main `8a894cc93d551d3b4fffa8b23dac87648fff76a4`. The tip is main plus 2 commits (a fast-forward).
Sources: grok-build-analysis-2026-10-09.md, raw-2026-10-09/, and live GitHub, kas-smiths and gist reads (9 Oct ~08:00–08:10 CEST). No compiles or tests.

**Result: 2 FAILED. Under PROCESS.md L7 this tip must not be merged.**

## FAILED (fix text names the file and line on 7dc788d)

- **BF1 | README.md L53 / master.json L39 (TN10 public API) | build-09 carries sweep-09 F5.**
  - The edited cell still says "Next desk stress window: 2 Oct 12:00Z to 3 Oct 10:00Z." That window is a week in the past.
  - Fix, both files: replace that sentence with "The 2 Oct 12:00Z to 3 Oct 10:00Z desk stress window is past."
- **BF2 | SNAPSHOT-HISTORY.md L11, Pins column | build-09 carries the SNAPSHOT part of sweep-09 F3.**
  - "**Held:** … kccs `3fbec524` … kcc20-reference `c8a08711`" calls these pins held, but the board on this branch still names kccs main `411b41bc` (Draft) and argent-lang `master` `76648f99` (README L63 / JSON L81).
  - Live, both "held" values are correct: kccs #31 merged 7 Oct 20:38:09Z as 3fbec524, and kcc20-reference#1 merged 7 Oct 19:50:09Z as c8a08711. They are not the board's pins, though.
  - Fix, L11: replace "kccs `3fbec524`" with "kccs `3fbec524` (live; the board's KCC cells still name `411b41bc` until `build/kcc20-last-call-2026-10-08` merges)", and replace "kcc20-reference `c8a08711`" with "kcc20-reference `c8a08711` (live; the board still says open #1 and master `76648f99`)".

## Sweep-09 F1–F6: which ones build-09 carries

- F1 (blank lines in the table): **not carried.** The README table L48–L84 is 37 contiguous rows; the first blank line is L85, after "Do not weld".
- F2 (stale KGI mirror): **not carried.** master.json L189 now says "Prior tip 9573d47e9c… (7 Oct 16:37Z, #4 …)" and "At 9573d47e the status page still said … were … (superseded by the #5/#6 status at 5b6c6b75)". "migrations have not started" appears 0 times.
- F3 (KCC contradiction): the cells are not touched. The SNAPSHOT Pins part is carried (BF2).
- F4 (/8/60 link): not carried; the Kas-Smiths cell is untouched.
- F5 (stress window): **carried** (BF1).
- F6 (undated tips): not carried. README L82 "Prior tip `9573d47e` (7 Oct 16:37Z …)" and JSON L189 "Prior tip 9573d47e (#4, 7 Oct)" are both dated, and the SNAPSHOT row has no "tip" wording.

## HELD

1. Base: the tip is a descendant of main 8a894cc. Onto main it is a fast-forward of 2 commits.
2. KGI #5: user and merged_by tiram88, 32 commits, 39 files, merged 2026-10-09T00:39:36Z as b7222b4c, head 6940e81d. #6: tiram88, 8 commits, 12 files, merged 02:23:54Z as 5b6c6b75, head 766502da. Checked through the pulls API.
3. KGI main is 5b6c6b75 live. The activity API shows pr_merge b7222b4c→5b6c6b75 at 02:23:54Z and 9573d47e→b7222b4c at 00:39:36Z, so push time equals commit time and there was no force-push.
4. status.md at 5b6c6b75 (contents API, same text as raw kgi-status-5b6c6b75.md):
   - L35–L38: "The processing pool is independently capped at four connections, the API pool at eight, and API sessions default to read-only."
   - L72: "The imported browser still uses the v1 graph data source".
   - It is "Updated 8 October 2026".
5. The KGI README L82 and JSON L189 carry-overs are rewritten for the moved pin, and the README and JSON mirrors agree.
6. api-tn10 `/info/health`, raws api-tn10-health-1..10:
   - All HTTP/2 200.
   - Dates 05:54:18, 21, 23, 26, 28, 05:55:47, 50, 54, 57 and 05:56:01 GMT, matching the stated 05:54:18Z–05:56:01Z window. All cf-cache-status MISS.
   - database.isSynced true; blueScoreDiff 0–25; acceptedTxBlockTimeDiff 0–3.
7. Backends: 2.0.1 p2pId 82e9e396 in nine reads and 2.1.0 ba36f18d in one (read 9), all isSynced and isUtxoIndexed. That is a mixed-version pool and no ratio is stated. "A 200 is not proof a payment landed" is kept.
8. api-tn10 `/info/blockdag`: 200 at 05:54:31 GMT with DAA 591918786, and 200 at 05:56:04 GMT with DAA 591919341. Headers saved.
9. Gist 04edba7e, all matching (gists API):
   - Owner michaelsutton, created 2026-10-08T22:59:50Z, one revision c2ae0338.
   - P2SH(P2PK): locking 35, signature script 101. Direct P2PKH: 37 and 99. Both are +36 over P2PK (34/66). Both have plurality 1, and direct P2PKH sits exactly at the boundary.
   - "no consensus changes", and "Address-version assignments … are outside this note".
10. rusty-kaspa 01b532e8 `crypto/txscript/src/script_class.rs` L22–L31 (contents API): `ScriptClass` is NonStandard, PubKey, PubKeyECDSA, ScriptHash. There is no P2PKH class. A GitHub search for P2PKH in kaspanet/rusty-kaspa issues and PRs returns 0 results (re-run 9 Oct ~08:05 CEST).
11. Master scope: the gist is by a core developer about core script standardness, wallet support is still sent to kaspa-builders, and there is no new row. The third-party finds (x402 #28, KaChat, KPI) were kept out.
12. Mainnet, all 200 with Date 05:54:40 GMT: blockreward 2.06017223; halving "2026-11-04 13:57:52 UTC", 1.94454365; blockdag virtualDaaScore 561049079. Arithmetic: 583803000 − 561049079 = 22,753,921 DAA, about 26.3 days at 10 BPS. The JSON calls the halving time an estimate, not the consensus step.
13. Canonical master.json: byte-identical re-dump, 0 `\u` escapes, `updated` 2026-10-09.
14. SNAPSHOT L11: the 2026-10-09 07:58 row is on top, newest first. The 0ef247a and 7dc788d links return 200.
15. The pins listed as held all match live heads, including kips master e4ae2332 (15 Jul).
16. The sweep's own sentences in the TN10, KGI and Block reward cells are copied verbatim, as Build says. The SilverScript holes cell carries Build's gist sentence only; the sweep's 8 Oct P2PKH talk sentence is not on this branch.
17. Leaks and private names: the added lines contain no email, home path or key. The private-name total is 54 on main and 54 on the tip. No private repo names beyond those approved on main.

UNVERIFIABLE: none.

## Advisories (optional)

- A1 | README L53 / JSON L39 | The sweep's 05:44Z sentence calls two 2.1.0 backends a "mixed pool". Build's 05:54Z sample is truly mixed-version. Suggest "two 2.1.0 backends, no ratio" for the 05:44Z sentence.
- A2 | README L74 / JSON L159 | The gist's byte table is for Schnorr. Add "(Schnorr)" after "37 and 99".

## Trial merges (merge --no-commit --no-ff, then aborted; local only)

- Onto origin/main 8a894cc: a fast-forward, no conflicts.
- Onto master/sweep-2026-10-09 c0c3f56: conflicts in three files.
  - README: 3 blocks, the TN10 public API, SilverScript holes and KGI v2 design rows.
  - SNAPSHOT: 1 block (L11).
  - master.json: 4 blocks, TN10 public API (L39), SilverScript holes past #251 (L163), KGI v2 design (L197) and Block reward (L1647).
  - Resolve: for TN10, KGI and Block reward take build-09's side, which is the sweep text plus Build's sentences, then re-apply the sweep's F5 fix if build has not. For SilverScript holes, keep the sweep's "8 Oct, Sutton (talk only)" P2PKH sentence, then Build's gist sentence. Keep `updated` 2026-10-09. In SNAPSHOT keep both rows, 07:58 above 07:51.

## Merge-order guidance

1. Fix sweep-09 F1–F6, run a new challenge pass, and merge sweep-09 at the cleared tip.
2. Fix BF1 and BF2 on build-09, merge the new main into build-09 using the resolution above (no rebase, no force), then run a new challenge pass at that merge tip, which can then be merged.
3. Doing it this way round keeps the sweep's F1 blank-line fix and F3 KCC wording from being lost in build-09's conflict blocks.

## Odd

1. github.com's blob page for script_class.rs returned 503/504 three times this pass, from both curl and the fetch tool. The contents API serves the file at 01b532e8, so the link target exists. This is a transient GitHub-side error.

## Totals
17 HELD, 2 FAILED (BF1, BF2), 0 UNVERIFIABLE, 2 advisories. Tip 7dc788df43e07e0e82e5a54c7f2c5869bebd1652 is **not** cleared for merge.

## Recheck, 9 Oct 2026 08:10 CEST, tip c64c01b37d914aa6adba042a81384cdbdc065f35

Reviewed: fix 72823df, merge 52e7772 (main 5aa243f), and the row link c64c01b. The net diff against main 5aa243f is README, master.json and SNAPSHOT, +9/-7.

- HELD BF1: README and master.json each contain "The 2 Oct 12:00Z to 3 Oct 10:00Z desk stress window is past." There is no "Next desk stress" left.
- HELD BF2: the Pins column of the 07:58 SNAPSHOT row marks kccs `3fbec524` and kcc20-reference `c8a08711` as live, not yet the board's pins.
- HELD: the merge follows the trial-merge guidance. TN10, KGI and Block reward show the sweep's fixed text plus Build sentences. SilverScript holes shows the sweep's talk sentence, then the gist sentence marked "(Schnorr)". The two removed lines were duplicates: "9 Oct: still synced." is superseded by the dated 07:54-07:56 CEST reads, and in the KGI note the full dated "Prior tip 9573d47e… (7 Oct 16:37Z, #4…)" stays.
- HELD: the new text matches the first pass (KGI #5/#6 and 5b6c6b75 status, api-tn10 10 reads with headers and two versions with no ratio, the gist, script_class at 01b532e8, and the mainnet reads at 05:54:40Z).
- HELD: the README renders as 1 table with 36 rows, the same as main. JSON is canonical (indent 2, 0 \u escapes, `updated` 2026-10-09). SNAPSHOT rows run newest first (08:04, 07:58, 07:51). The private repo name count equals main's, so no private repo names beyond those approved on main. main 5aa243f is an ancestor of the tip, so the merge is a fast-forward.
- Advisory A1 (not taken, not blocking): the sweep's 05:44Z wording still calls two 2.1.0 backends a "mixed pool".

Totals at c64c01b: HELD 6, FAILED 0, UNVERIFIABLE 0. BF1 and BF2 are closed. Cleared for merge at exactly c64c01b.

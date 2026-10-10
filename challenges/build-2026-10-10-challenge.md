# Challenge: `build/2026-10-10` (10 Oct 2026)

- **Tip reviewed:** `98f81addca0cb6e9d81f8aaad5e6551682102608` (content `e098146`, row link `98f81ad`; base `main` `cf44ce5adc1778c3e6b685c6aadd4569c6dba275`, fast-forward, 2 commits).
- **Push:** activity API shows one plain push, `branch_creation` → `98f81ad` at 06:00:23Z (08:00 CEST). Commits are 08:00:17 CEST. No force-push.
- **Reads:** 10 Oct ~08:05 to 08:20 CEST (GitHub API, raw.githubusercontent, Kas-Smiths, saved raws in `kaspa-master-reports/raw-2026-10-10/`). No compiles.
- **Result: 20 HELD, 0 FAILED, 0 UNVERIFIABLE.**

## HELD

1. **Private names (zero rule):** 0 hits on the tip and on main, against the live `gh repo list STP-KAS --visibility private` list (17) and the 2 names that left it since 9 Oct. 0 hits in commit messages. New STP-KAS links are kaspa-master-file only (public).
2. **api-tn10, 11 reads.** `api-tn10-health-1..11.headers`: all `HTTP/2 200`, `cf-cache-status MISS`, Date 05:55:52 to 05:57:33 GMT. Bodies: `isSynced` true, blueScoreDiff 3 to 47, acceptedTxBlockTimeDiff 1 to 2. `serverVersion`: 2.1.0 `ba36f18d` ×4 and `82c70f33` ×3, 2.0.1 `82e9e396` ×2, 2.0.0 `e13cc6c8` ×2, all synced and UTXO-indexed. No ratio and no payment claim. "e13cc6c8 last recorded here on 7 Oct" matches main's 7 Oct text.
3. **TN10 blockdag:** 200 at Date 05:56:00Z (592772383) and 05:57:35Z (592773255).
4. **#1146:** `rk-issue1146.http` 200, Date 05:56:04Z. 0 comments (live: still 0), no labels. "blockCount ~1.36M … ~1.09M" and "I suspect … that reorg" are in the body. 4 `<img>` tags and 0 64-hex txids, so the txids are only in screenshots.
5. **Mempool path:** `openapi.json` reports v2.3.0 with no path containing "mempool".
6. **#1135:** the timeline (raw and live) has `head_ref_force_pushed` by someone235 at 10 Oct 05:04:23Z. Compare `01b532e8...aaa5f25f`: ahead 1, behind 0, 3 files. The reviews API ties IzioDev's APPROVED (9 Oct 14:36:19Z) to `aaa5f25f`. The "which tree was approved is not verified" hedge is correct.
7. **#1141:** someone235 CHANGES_REQUESTED 05:03:19Z on `11aca108`. Its 2 inline comments (04:55:50Z `Params.net`, 05:00:56Z "No need to repeat this sentence everywhere") match the paraphrase.
8. **kcc20.ag:** the saved `kcc20ag-c8a08711.ag` has the same sha256 as live raw at `c8a08711` (`f6131d97…`). L192 is `leader: KCC20` in the `consumes` of `delegate transfer_delegator`. Live master is still `c8a08711`.
9. **Post 408:** `forum-post-408.json` (Date 05:56:35Z) is id 408, topic 8, #75, michaelsutton, 9 Oct 12:33:26Z. The quote "If anything, I think it should only be an optional addition/extension (ie in a different KCC)" is verbatim. The `/8/75` link is correct.
10. **Post 410:** id 410, topic 8, #76, Ross, 01:32:46Z. "So I'll withdraw the extension idea." is verbatim, and `/8/76` is correct. 409 is topic 160, #1.
11. **Block reward:** `mainnet-blockreward` 2.06017223. `mainnet-halving` "2026-11-04 13:56:07 UTC", 1.94454365. `mainnet-blockdag` 561915473. All 200, Date 05:56:54 to 05:56:55Z. 583803000 − 561915473 = 21,887,527 (25.3 days at 10 BPS), correct. The carried 05:45:55Z read has its header in the watch raws.
12. **Moved section:** the paragraph under "Moved from README on 10 Oct 2026" equals main `cf44ce5` README L53 minus only the table delimiters `| TN10 public API | ` and ` |` (5,993 bytes, byte-identical). The heading slug matches the README link `#moved-from-readme-on-10-oct-2026`.
13. **`master.json`** is canonical (indent 2, 0 `\u` escapes, `updated` 2026-10-10).
14. **Render** via POST /markdown: README has 1 table, 36 tr, same as main. SNAPSHOT has 276 tr (main 275, +1 row). No blank lines in the tables.
15. **SNAPSHOT:** the 10 Oct 08:00 row is first. `e098146…` resolves, and `cf44ce5` resolves.
16. **Carried pins in the changed cells** are live: #1104 `a5888dab` (updated 24 Sep 11:03Z), #1127 `3c267993`, #1142 `644baafe`, #991 `77d9a2e8` blocked, dagknight `ad45e241`, master `01b532e8`, tn10 `e5f6d1f7`, kips `e4ae2332`.
17. **Mirrors:** README and JSON agree for TN10, Not live and KCC20. Block reward is JSON-only, as on main.
18. **Scope:** no third-party row or product status added. The Ross 410 line is forum context in the KCC thread.
19. **Dated wording** throughout: "Still synced on 10 Oct morning", "9 Oct morning (kept)", "10 Oct 07:55 to 07:57 CEST (Build)".
20. **Trial merge onto `origin/main` `cf44ce5`:** fast-forward.

## Consistency with `master/sweep-2026-10-10`

At `308f338` the sweep disagreed with Build on:
- **D1:** #1141 "no review yet" vs CHANGES_REQUESTED.
- **D2:** #1135 approval without the force-push.
- **D3:** the L192 link on `master` vs pinned `c8a08711`.

The sweep has since moved. Activity shows plain pushes `308f338`→`eae661a` (06:03:52Z) and →`a113960` (06:04:42Z). Those commits fix D1 to D3. At `a113960`, no factual disagreement is left.

Other differences are scope only:
- **TN10:** Build adds the 05:55 to 05:57Z reads and 2.0.0 `e13cc6c8`, and moves the 9 Oct cell to SNAPSHOT. The sweep drops that history without moving it.
- **Kas-Smiths cell:** the sweep updates it to 10 Oct (49/386/113, latest 410). Build leaves main's dated 9 Oct text (latest post 405) while its KCC20 cell cites 410. That is dated, so not false.

The challenger note on the sweep (`5de15b3`) covers `308f338` only. `a113960` needs a new pass.

## Trial merges (both ways, sweep at `a113960`)

- **Sweep into Build:** README 2 hunks (TN10, Not live), master.json 4 hunks (TN10, Not live, KCC20, Block reward), SNAPSHOT 1 hunk.
- **Build into sweep:** the same 7 hunks.

## Merge order

1. Merge `build/2026-10-10` @ `98f81ad` first. It has 0 FAILED here and is a fast-forward of main.
2. On the sweep, merge main in.
   - Take Build's TN10, Not live, KCC20 and Block reward text. It is a superset; check that it keeps the sweep's fixed #1141 and #1135 wording.
   - Keep the sweep's Kas-Smiths cell.
   - In SNAPSHOT, keep 08:00 `e098146` above 07:52 `31c86ac`.
3. Run a new challenger pass at that merge tip, then merge.

## Advisories (not FAILED)

- **A1.** #991: IzioDev left 5 inline COMMENTED reviews on `77d9a2e8`, 9 Oct 14:52 to 14:57Z ("keep this file untouched…", "Ord and PartialOrd seems unused"). They are not recorded on either branch. Suggest one sentence in Not live.
- **A2.** The SNAPSHOT 08:00 row says "sweep tip `308f338`". That is dated by the row's time but superseded (`a113960`).
- **A3.** "L188 to L195": the `delegate transfer_delegator` block spans L189 to L195. L188 is the comment above it.

## Recheck, 10 Oct 2026 08:33 CEST, tip 6795d7462af1e8efcea0f3da9b76a83066a4d027 (merge 3f0acf3 of main a113960 into 98f81ad, plus link commit 6795d74)

- HELD merge resolution: main's #1141 wording (someone235 CHANGES_REQUESTED 10 Oct 05:03:19Z on 11aca108) is there once in README and once in JSON, the same as on main. The #1135 force-push wording appears R1/J3, the same as main. "no review yet (atharaldsen)" has 0 hits. The Kas-Smiths README row is byte-identical to main. The Sutton quote is verbatim ("should only be an optional...").
- HELD #991 sentence (new): the live reviews API shows 5 COMMENTED reviews by IzioDev on 77d9a2e8 at 9 Oct 14:52:52Z, 14:53:37Z, 14:56:33Z, 14:57:01Z and 14:57:45Z, with no state change. The inline comments are on ci.yaml (2), script_public_key.rs (2, including "Ord and PartialOrd seems unused") and indexes/core/Cargo.toml (1). Comment r4231432853 is the first one (14:52:52Z, ci.yaml). The pull is open, not merged, mergeable_state blocked, head 77d9a2e8.
- HELD #L189-L195: at c8a08711, kcc20.ag L189 is `delegate transfer_delegator(` and L195 is its closing brace; L192 is `leader: KCC20`.
- HELD: SNAPSHOT is newest first (08:06, 08:00, 07:52), and the 08:00 row names sweep tip a113960. JSON is canonical with 0 \u escapes. Private names: 0 hits in the tree and in commit messages, against the live private list. README renders 36 table rows. main a113960 is an ancestor of the tip, so this is a fast-forward.

Totals at 6795d74: HELD 24, FAILED 0, UNVERIFIABLE 0. Cleared to merge at exactly 6795d7462af1e8efcea0f3da9b76a83066a4d027. The 98f81ad clearance is superseded.

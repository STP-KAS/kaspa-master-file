# Challenge: master/sweep-2026-10-09

Reviewed tip: `c0c3f5697459dd81995d344a0dae88ec50c99622` (content `428364c`, SNAPSHOT link `135bdbb`, prompt `c0c3f56`).
Base: origin/main `8a894cc93d551d3b4fffa8b23dac87648fff76a4`, which includes the PROCESS.md merge `71e05a1`. The tip is main plus 3 commits (a fast-forward).
Files: README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-09.md. Sources: report-2026-10-09.md and raw/2026-10-09/, plus live GitHub, X, Kas-Smiths and gist reads on 9 Oct, 07:45–07:58 CEST. No compiles or tests.

**Result: 6 FAILED. Under PROCESS.md L7 this tip must not be merged.**

## FAILED (fix text names the file and line on c0c3f56)

- **F1 | README.md L64, L74, L77 | the pin-board table is broken.**
  - 428364c added three empty lines inside the table: after the KCC20 reference row (L63), the Launch proof row (L73) and the SilverScript holes row (L76).
  - In GFM a blank line ends a table. So every row from L65 "KRC-20 to KCC" through L87 "Do not weld" (21 rows) renders as a plain `<p>| … |</p>` paragraph.
  - Checked with GitHub's markdown render API (POST /markdown, mode gfm) on the tip's README. "KRC-20 to KCC", "KRC-20 incident" and "SilverScript v1.0.0 units" each come out inside `<p>`. main has no blank lines between L48 and L84.
  - Fix: delete the empty lines L64, L74 and L77. Optional, same commit: at the end of L73, change "not a KIP.|" to "not a KIP. |".
- **F2 | master.json L189 (KGI v2 design) | the mirror contradicts itself after the pin moved.**
  - The new prefix says "main 5b6c6b75a7f2 …", but the carried-over text still says "main is 9573d47e9c1720eecd0f56edf71f6049435210ce (7 Oct 16:37Z, #4, merged by tiram88: 15 commits, 32 files)" and "Its status page at 9573d47e still says the storage, processing and API service crates are behaviour-free scaffolds and database migrations have not started."
  - status.md at 5b6c6b75 (contents API) says migrations and the StorageService slice are in. README L85 was already fixed.
  - Fix, master.json L189: replace "main is 9573d47e9c1720eecd0f56edf71f6049435210ce (7 Oct 16:37Z, #4, merged by tiram88: 15 commits, 32 files)" with "Prior tip 9573d47e9c1720eecd0f56edf71f6049435210ce (7 Oct 16:37Z, #4, merged by tiram88: 15 commits, 32 files)".
  - Also replace "Its status page at 9573d47e still says the storage, processing and API service crates are behaviour-free scaffolds and database migrations have not started." with "At 9573d47e the status page still said the storage, processing and API service crates were behaviour-free scaffolds (superseded by the #5/#6 status at 5b6c6b75)."
- **F3 | README.md L63 / master.json L81 (KCC20 reference), README.md L67 (Kas-Smiths), SNAPSHOT-HISTORY.md L11 (Pins) | KCC-20 state contradicts itself in the edited cells.**
  - The cells still say "Open argent-lang/kcc20-reference#1 … Not merged", "`kcc-0020.md` on kccs main `411b41bc` still says `Status: Draft`", "argent-lang `master` is still `76648f99`" and "KCC-20 on main stays Draft". In the same paragraph, the new sentence says "KCC-20 Last Call on kccs main and the #1 merge to `c8a08711`". L67 says "the KCC-20 file is still Draft". The SNAPSHOT Pins column says "Held: … kccs `3fbec524`" while the board names `411b41bc`.
  - Live, 9 Oct: kccs main is `3fbec524` (#31 merged 2026-10-07T20:38:09Z, activity pr_merge), and `kcc-0020.md` says `Status: Last Call`. kcc20-reference#1 was merged 2026-10-07T19:50:09Z as `c8a08711`, which is the head of argent-lang/kcc20-reference master (pr_merge). The newly cited @kccforum post 2108216730992394500 also says "KCC-20 has advanced to Last Call".
  - Fix, README L63: replace "KCC-20 Last Call on kccs main and the #1 merge to `c8a08711` are already on `build/kcc20-last-call-2026-10-08` (not re-added here)." with "**Since 7 Oct the state sentences above are out of date:** kcc20-reference#1 was merged 7 Oct 19:50Z as `c8a08711` (now argent-lang `master`), and kccs #31 merged 7 Oct 20:38Z as `3fbec524`, so `kcc-0020.md` on kccs main says `Status: Last Call` (not Final). The full rewrite is on `build/kcc20-last-call-2026-10-08`."
  - master.json L81: the same change, in plain text, replacing "KCC-20 Last Call on kccs main and kcc20-reference#1 merge c8a08711 are on build/kcc20-last-call-2026-10-08 (not re-added here)."
  - README L67: replace "[#8](https://kas-smiths.org/t/fungible-token-covenant-specification-kcc20/8): the KCC-20 file is still Draft." with "[#8](https://kas-smiths.org/t/fungible-token-covenant-specification-kcc20/8): the KCC-20 file is Last Call since 7 Oct 20:38Z (kccs `3fbec524`), not Final."
  - SNAPSHOT L11, Pins column: replace "kccs `3fbec524`" with "kccs `3fbec524` (live; the board's KCC cells still name `411b41bc` until `build/kcc20-last-call-2026-10-08` merges)".
  - Alternative: merge build/kcc20-last-call-2026-10-08 first, after its own challenge, and rebase these lines on it.
- **F4 | README.md L67 (Kas-Smiths) | the post 404 link goes to the wrong post.**
  - The tip has "Post [404](https://kas-smiths.org/t/fungible-token-covenant-specification-kcc20/8/60)".
  - kas-smiths.org/posts/404.json (HTTP 200, Date 09 Oct 2026 05:55:44 GMT) gives topic 8, post_number **74**, Ross, 2026-10-08T03:44:19Z. Post_number 60 in topic 8 is post id 335 (Manyfest, 23 Aug). build/kcc20-last-call-2026-10-08 already uses /8/74.
  - Fix, README L67: change "kcc20/8/60" to "kcc20/8/74".
- **F5 | README.md L53 / master.json L39 (TN10 public API) | a carried-over sentence in the edited cell is stale.** "Next desk stress window: 2 Oct 12:00Z to 3 Oct 10:00Z." That date was a week ago.
  - Fix, both files: replace it with "The 2 Oct 12:00Z to 3 Oct 10:00Z desk stress window is past."
- **F6 | SNAPSHOT-HISTORY.md L11, prompts/grok-build-2026-10-09.md L53 | undated "tip" in new text.** Both say "Prior tip `9573d47e` (#4)." / "Prior tip `9573d47e`."
  - Fix: write "Prior tip `9573d47e` (#4, 7 Oct 16:37Z)." in both. The SNAPSHOT row is new on this branch, so it can be edited before merge.

## HELD

1. Base and merge: the tip is a direct descendant of main 8a894cc. Trial merge onto origin/main: a clean fast-forward, 3 commits.
2. KGI `5b6c6b75` (README L85 / JSON L189 prefix / SNAPSHOT L11):
   - Commit 2026-10-09T02:23:54Z, merge of #6 "fix: harden NodeService lifecycle and response handling", parents b7222b4c and 766502da.
   - #6 was merged by tiram88. The activity API shows `pr_merge b7222b4c→5b6c6b75` at 02:23:54Z, so push time equals commit time and there was no force-push.
   - main is still 5b6c6b75 live.
3. KGI #5: "feat: implement StorageService lifecycle", merged 2026-10-09T00:39:36Z as b7222b4c, head 6940e81d. The activity API shows `pr_merge 9573d47e→b7222b4c`.
4. KGI status.md at 5b6c6b75 (contents API):
   - "Updated 8 October 2026".
   - The StorageService slice: SQLx with PostgreSQL and Rustls, migrations, advisory lock, validated generations, autonomous lifecycle (L23–L52).
   - "Processing and API service crates remain behavior-free scaffolds" (L23).
   - The blob URL returned 200 on retry (one transient 503).
5. KGI README L85: carried-over sentences were rewritten for the moved pin ("Prior tip", "still said … were", "superseded"). `docs/rk-issues` is untouched in 9573d47e…5b6c6b75 (compare API), so "At `9573d47e`, docs/rk-issues holds…" still holds.
6. Sutton post 2108225873195212836 (README L63 / JSON L81):
   - Created 2026-10-08T15:59:51Z; quotes @kccforum 2108216730992394500 (15:23:32Z).
   - The note_tweet text matches: minter frontier, token seed frontier with zero-balance UTXOs, a small reclaimable KAS lock, and "first step towards a general standardized Kaspa Token Lib (KTL), or more broadly, also non token contracts and libs". Read through the X API.
7. Sutton post 2108272284469182499 (README L73 / JSON L123): 2026-10-08T19:04:17Z, a reply to @maxibitcat. "agree with the L1+ε framing", lowest rung bounded-size covenant state, O(UTXO set size), "valid candidate for a node-level index".
8. P2PKH talk (README L76 / JSON L159):
   - 2108332456050880667 (23:03:23Z) and 2108333221070930279 (23:06:25Z): "a 37-byte direct p2pkh script, recognizable onchain, only 3 bytes larger than p2pk and still utxo plurality 1. no consensus changes, but needs node standardness + wallet/sdk support".
   - Gist 04edba7e…: owner michaelsutton, created 2026-10-08T22:59:50Z, kas-p2pkh.md, Option 2 locking script 37 bytes, plurality 1.
   - Wallet support is sent to kaspa-builders (scope OK).
9. TN10 `/info/health` (README L53 / JSON L39): hdr-tn10-health-1..3, all HTTP/2 200.
   - Dates 05:44:34, 05:44:36 and 05:44:37 GMT, matching the stated 05:44:34Z–05:44:37Z window. cf-cache-status MISS.
   - Bodies: isSynced true; blueScoreDiff 16, 2 and 7 ("2 to 16"); acceptedTxBlockTimeDiff 1; kaspad 2.1.0, p2pId 82c70f33 twice and ba36f18d once; isUtxoIndexed true.
   - No ratio and no payment claim.
10. TN10 `/info/blockdag`: hdr-tn10-blockdag 200, Date 05:44:39 GMT, virtualDaaScore 591914464.
11. Block reward (master.json L1635): hdr-mainnet-blockreward 200, Date 05:45:22 GMT, content-length 26. That matches mainnet-blockreward2.json `{"blockreward":2.06017223}`, written 07:45:22.
12. Kas-Smiths counts (README L67 / JSON L381): forum-about.json gives topics_count 48, posts_count 383, users_count 113. Post 405: id 405, topic 15, post_number 33, Seb287, 2026-10-08T11:25:16Z, on variable pricing for pay-per-request. Live /posts/405.json is 200 (Date 05:55:45 GMT), and the /15/33 link resolves.
13. Heads held (SNAPSHOT L11, prompt L79), live branch heads and last activity:
    - vprogs master f9b84a86; RC cc0d54bc (last activity force_push 2026-10-08T14:53:44Z, nothing since).
    - silverscript 3ed97333; rusty-kaspa master 01b532e8, tn10 e5f6d1f7, dagknight ad45e241.
    - kccs 3fbec524; argent 9a9f4b10; tictactoe 35defd29 (push 2026-10-08T12:19:39Z).
14. "Core kaspanet quiet" (prompt L79): live search found no issue/PR updates and no default-branch commits since 2026-10-08T15:00:11Z on vprogs, kccs, silverscript, rusty-kaspa, kips, argent, kcc20-reference or tictactoe. The raw gh-pulls-*.json files are 0 bytes; see Odd 1.
15. Canonical master.json: `json.dumps(indent=2, ensure_ascii=False)+"\n"` is byte-identical, with 0 `\u` escapes and `updated` 2026-10-09.
16. SNAPSHOT L11: the 2026-10-09 07:51 row is on top, newest first, above 2026-10-08 23:50. The 428364c and 8a894cc links return 200.
17. Prompt builders list (not board rows):
    - x402 #28 merged 2026-10-09T00:12:42Z as 36f5136c; main is 36f5136c; newest tag v1.0.0-rc.2.
    - KaChat main a632f81f at 04:24:12Z; 1be4f6e6 at 2026-10-08T15:00:11Z.
    - KPI #22 merged 18:22:45Z as e4a10390; main ccbdfbc7 (#29).
    - X posts 2108265950642577442 (WellerOlaf, 18:39:06Z) and 2108258975208595946 (ReconProtocol, Goldshell KA Box, 18:11:23Z).
    - builders branch build/kpi-s0-trials-2026-10-08 cites poc-a1-s0-trials and ccbdfbc7.
18. Prompt L23 merge rule matches PROCESS.md L7 on main.
19. research.kas.pa newest topic 522 (research-latest.json).
20. Master scope: no new rows. x402, KaChat, KPI and OpenMiner are kept off the board, and wallet shipping goes to kaspa-builders. KGI, Sutton, TN10 API, Kas-Smiths and block reward are existing rows.
21. Leaks and private names: the added lines contain no email except the public noreply identity (already in earlier prompts), no home path and no key. The total private-name count is 54 on main and 54 on the tip, prompt included. No private repo names beyond those approved on main.
22. Push vs commit: the three branch commits are plain pushes on top of 8a894cc, with no rewrite.

## UNVERIFIABLE (not counted as FAILED)

- U1 | prompt L77, L91–L92 | "End $6.75", "measured delta $0.00" and "8 Oct $11.82 → $6.75". x-summary.json saves only credits_before 6.75; no saved end read and no 8 Oct end read. Not on the board.
- U2 | prompt L73 | "elldeeone pointing at kaspa.org hashed_addresses wallet list". No post id or raw. Not on the board.

## Advisories (optional)

- A1 | README L53 | "mixed pool, no ratio" for two backends that are both 2.1.0. Elsewhere in this cell "mixed" means mixed versions. Suggest "two 2.1.0 backends, no ratio".
- A2 | README L53 | The 9 Oct paragraph sits before the 1 Oct to 8 Oct text, and the headline says it twice ("Still synced on 9 Oct morning." and "**9 Oct: still synced.**"). Keeping one of them is enough.
- A3 | README L67 | The "Daily public mirror … tip `f26a0735` … read 6 Oct" sentence is dated and true as worded, but the archive now has `0bcfc202` (2026-10-08T08:54:24Z).
- A4 | README L63 / JSON L81 | "[kcc20-live] tip `50374a64`" is undated. It is still the head (2026-09-09T14:37:45Z); add "(9 Sep)".
- A5 | README L62 (KCC still open, not edited here) | It is still pre-Last-Call ("Still open: #31", "Not Last Call on main"). That is fixed by build/kcc20-last-call-2026-10-08, not by this sweep.

## Trial merges (merge --no-commit --no-ff, then aborted; local only)

- Onto origin/main 8a894cc: a fast-forward, no conflicts.
- No origin/build/2026-10-09 exists (`git ls-remote` is empty).
- Other open branches touching the same cells, each trial-merged onto c0c3f56:
  - build/kcc20-last-call-2026-10-08 (5d7dcc9, cut from b7c52de):
    - README has 2 blocks. L60–77 spans Referee lag through Kas-Smiths; the F1 blank line inflates it. L81–90 covers tictactoe, Argent and Launch proof.
    - SNAPSHOT has 1 block (L11). master.json has 4 blocks: `updated`, KCC20 reference (L83), Argent (L127), Covenant launch proof (L137).
    - Resolve: take the kcc20 branch's KCC state (Last Call, #1 merged), keep this sweep's Sutton KTL and L1+ε sentences, keep this sweep's Kas-Smiths counts with the /8/74 link, keep main's tictactoe, set `updated` 2026-10-09, and list SNAPSHOT rows newest first.
  - build/ross-ku-argent-2026-10-08 (ceb8029): README has 1 block (Argent / Launch proof rows) and SNAPSHOT 1 block. Keep both sides' sentences.
  - build/silverscript-258-2026-10-07 (88270cd): README has 1 block (SilverScript holes, where this sweep added the P2PKH sentence), SNAPSHOT 1 block, and master.json 2 blocks (`updated`, SilverScript holes L163). Keep both sides' sentences and set `updated` 2026-10-09.

## Odd

1. The raw gh-pulls-*.json files for all 11 repos are 0 bytes, and gh-issues/gh-commits are `[]`. The "quiet" claim is true live, but the sweep's saved PR evidence is empty, which suggests the PR fetch failed silently.
2. raw mainnet-blockreward.json holds the coin-supply body; the block reward body is mainnet-blockreward2.json. The header and body still match by time and length.
3. The Sutton KTL post is an edited post (edit_history 2108224059888541706 → 2108225873195212836). The board cites the final id, which is correct.
4. The KCC20 contradiction (F3) existed on main before this sweep, in that the #1 and Last Call state was already stale there. This sweep's new sentence makes it visible in the same paragraph.

## Totals
22 HELD, 6 FAILED (F1–F6), 2 UNVERIFIABLE, 5 advisories. Tip c0c3f5697459dd81995d344a0dae88ec50c99622 is **not** cleared for merge.

# Challenge: master/update-2026-10-11-pr1147

## Pass, 11 Oct 2026 14:27 CEST (`date`), tip 23c6c1f42296798d4704f82cfc9b4714c79fc76b

Base: `ls-remote` main = `818e6463c013181f6a2903324b98983a362d050f`, pushed 07:02:48Z. The branch is a fast-forward of main: a1657d0 (14:24:38 CEST, content) and 23c6c1f (14:24:42 CEST, SNAPSHOT row link). Activity API: branch_creation directly at 23c6c1f, 12:24:52Z, after both commits; no force-push. A trial merge onto main is clean: README +1/-1, master.json +1/-1, SNAPSHOT-HISTORY +7.

Live reads at 12:26:07Z (server `Date`) and raws in the watch raws (pr1147/, `.full` files with `Date` 12:23:15Z–12:23:23Z).

Totals: 20 HELD, 1 FAILED, 1 UNVERIFIABLE.

### FAILED

- **F1. A current oskrcl fact was dropped from the board and from master.json, and the SNAPSHOT row calls the dropped sentence "superseded".** Main's cell ended its Build sentence with "oskrcl's follow-up also … says the mempool now churns at about 3–5k entries". oskrcl's comment 6102224080 (10 Oct 21:12:04Z) says "Current state: mempool is 3–5k and churning fast now". #1147 does not supersede that; only the 05:55Z read ("2 comments, no linked PR") is superseded. The rewritten cell keeps the 28/46 and 0/60 figures from the same comment but loses the 3–5k figure. It survives only in the moved receipt, and the SNAPSHOT row says only that "Build's 05:55Z #1146 read … is superseded".
  - Fix, README TN10 public API cell: replace "against 0 of 60 fresh ones; agrees with the post-IBD revalidate direction." with "against 0 of 60 fresh ones; the mempool itself is now about 3–5k and churning; agrees with the post-IBD revalidate direction."
  - Fix, master.json "TN10 public API" note: make the same replacement in plain text.

Advisory, not FAILED: "**Fix PR open, not merged:**" is board-voice for a contributor's PR. The hedge two sentences later ("atharaldsen's reading of the code and fix, not confirmed by a maintainer or the desk; not desk-built or desk-tested") covers it. A tighter label would be "**PR open, not merged** (its body says "Fixes #1146"):".

### UNVERIFIABLE

- U1. SNAPSHOT row provenance: "on stp's request via TN10 ops (bot mail hand-off 11 Oct 11:26 CEST)". Not checked. It is provenance, not a Kaspa fact.

### HELD

1. main is 818e646 and the branch is a fast-forward.
2. Push timeline as above.
3. #1147 metadata, live: author atharaldsen (CONTRIBUTOR), title "mempool: revalidate all transactions once IBD completes (#1146)", open, not a draft, not merged. Created 2026-10-11T08:30:07Z (10:30 CEST) and not updated since. Base `master`; head `6c34186f5721426f620f8296427aeb5e4eaaa15f` (fork branch fix-mempool-revalidate-after-ibd-1146, authored 08:10:25Z). 1 commit, 7 files, +447/-11.
4. Files: manager.rs +72/-11, manager_tests.rs +127, mempool/mod.rs +5, transactions_pool.rs +4, flow_context.rs +13, ibd/flow.rs +5, daemon_integration_tests.rs +221.
5. What it changes, attributed to the PR text. The body says `sync_missing_block_bodies` hands IBD blocks straight to consensus, bypassing `FlowContext::on_new_block`. Only high priority (RPC-submitted) transactions are revalidated periodically, so a relayed one lingers "until the 24h expiry". A mining node recovers on its next template; "a node that never builds templates does not". `IbdFlow::ibd` calls the full revalidation "as its last step", with the valid-id channel dropped "so nothing is rebroadcast". The cell's paraphrase matches.
6. Tests named in the PR body: mining manager unit tests and the two-daemon `daemon_mempool_revalidated_after_ibd_test`. The cell calls them "Tests in the PR", not desk-run.
7. Reviews 0, review comments 0, PR issue comments 0, requested reviewers 0, `mergeable_state` blocked. Live matches the raws.
8. Link to #1146: the body opens "Fixes #1146" (a closing keyword; it takes effect only on merge). The #1146 timeline has a cross-reference from atharaldsen at 08:30:08Z. atharaldsen's comment 6107501320 at 09:16:53Z reads "Opened #1147 with the post-IBD mempool revalidation … @oskrcl thanks for confirming from the logs." The cell quotes "Fixes #1146" as the PR body's words, says "not merged", and hedges it as atharaldsen's reading, not maintainer- or desk-confirmed. Nowhere does it say #1146 is fixed.
9. The #1146 hedge is intact: "That is atharaldsen's reading of the code and fix, not confirmed by a maintainer or the desk; not desk-built or desk-tested. The #1146 symptom itself is the reporter's account plus contributor comments, not desk-reproduced." Live: #1146 is open with 3 comments (atharaldsen CONTRIBUTOR 10 Oct 08:29:44Z, oskrcl NONE 21:12:04Z, atharaldsen CONTRIBUTOR 11 Oct 09:16:53Z), no labels, last updated 09:16:53Z. No maintainer has replied since this morning; the only new comment is atharaldsen's.
10. The oskrcl facts kept in the cell are accurate: IBD burst "Oct 9 15:31–15:54 UTC", "zero block template hits in 72h", "it only relays", the stuck set drained via 24h expiry, "of 46 entries surviving ~10 min, 28 are already is_accepted:true", "0/60". The changed wording "suggested" is dated correctly. "(no PR yet)" was correctly removed.
11. KaspaScopio (display name vertex) post 2109204151573876749, created 2026-10-11T08:47:11Z: the saved raw note_tweet contains "The PR includes tests and is still awaiting review. Nothing has been merged yet." verbatim, and links pull/1147. A live X re-read hit a 429 rate limit, so this rests on the saved raw. Media commentary on a core PR, not third-party product status.
12. The moved cell is byte-identical to main 818e646's README TN10 cell body (2967 = 2967 characters, exact compare).
13. No clobber and no duplicate heading: SNAPSHOT keeps exactly one "## Moved from README on 11 Oct 2026". The 10 Oct cell's ### stays above it unchanged, and the new "### Now row "TN10 public API" (as of 11 Oct 2026 morning, before the PR 1147 rewrite)" is appended under it. Slugs across all SNAPSHOT headings are unique. #moved-from-readme-on-11-oct-2026, #moved-from-readme-on-10-oct-2026 and #now-row-tn10-public-api-as-of-11-oct-2026-morning-before-the-pr-1147-rewrite all resolve. The README and master.json pointers and the SNAPSHOT row link use that last slug.
14. The rest of the TN10 cell is unchanged word for word against main: 14 reads 05:45:39Z–05:46:08Z, DAA 593632952 / 593631375, backends 82c70f33 / 3d3c14bd / 965d43fe, Build's 05:55Z reads, DAA 593636787–593637112, and the 965d43fe note. The changes are confined to the #1146 part, Build's superseded #1146 read, and F1.
15. The "API read 11 Oct 12:23Z (14:23 CEST, server `Date`)" claim matches the saved `.full` headers.
16. master.json: canonical (indent 2), 0 \u escapes, `updated` 2026-10-11, 0 markdown strings. The TN10 note is an exact plain mirror of the README cell, with relative links mapped to blob/main.
17. The README has 37 table lines, unchanged from main.
18. SNAPSHOT order: the 14:24 row is above 09:02. Links resolve (HTTP 200): a1657d0, the 818e646 blob README, 6c34186f, pull/1147, issuecomment-6107501320.
19. Leak check against the live private list (20 names, unchanged): 0 hits in the tree and 0 in commit messages.
20. Master scope and dated wording: the cell is about a core rusty-kaspa PR and issue, and every new time carries a date and zone. No public action taken.

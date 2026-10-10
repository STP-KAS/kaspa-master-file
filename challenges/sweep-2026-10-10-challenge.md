# Challenge: `master/sweep-2026-10-10` (10 Oct 2026)

- **Tip reviewed:** `308f338014f5ddcb0867eacddb1f67a110a70ccc` (content `31c86ac`; base `main` `cf44ce5adc1778c3e6b685c6aadd4569c6dba275`, fast-forward, 5 commits).
- **Push:** activity API shows one plain push, `branch_creation` → `308f338` at 10 Oct 05:53:55Z (07:53 CEST). Commits are 07:52:18 to 07:53:47 CEST. No force-push.
- **Reads:** 10 Oct ~07:55 to 08:10 CEST (GitHub API, Kas-Smiths JSON, saved raws in `kaspa-master-watch/raw/2026-10-10/`). No compiles.
- **Result: 18 HELD, 2 FAILED, 0 UNVERIFIABLE.**

## FAILED

**F1. #1141 is still "no review yet" on the board.** Live and raw (`gh-reviews-rusty-1141.json`) show someone235 CHANGES_REQUESTED 10 Oct 05:03:19Z on `11aca108`. SNAPSHOT L11 and the prompt (L58) already say this; README and JSON do not.
- README L56: replace "Also open on **master** since 4 Oct, no review yet (atharaldsen): [#1141]" with "Also open on **master** since 4 Oct (atharaldsen; someone235 CHANGES_REQUESTED 10 Oct 05:03:19Z on `11aca108`): [#1141]".
- master.json L57: replace "Also open on master since 4 Oct, no review yet (atharaldsen): #1141" with "Also open on master since 4 Oct (atharaldsen; someone235 CHANGES_REQUESTED 10 Oct 05:03:19Z on 11aca108): #1141".

**F2. #1135: the approval and the new head are joined without the force-push between them.** The timeline shows `head_ref_force_pushed` by someone235 at 10 Oct 05:04:23Z. `aaa5f25f` (parent `01b532e8`) has committer date 10 Oct 05:04:20Z, after IzioDev's APPROVED at 9 Oct 14:36:19Z. This is in the sweep window.
- README L56 and master.json L57, L1377, L1737: after "IzioDev APPROVED 9 Oct 14:36:19Z" insert "; someone235 force-pushed the head 10 Oct 05:04:23Z (`aaa5f25f` committer date 05:04:20Z, after the approval)". In JSON, drop the backticks.
- master.json L909: after "IzioDev APPROVED 9 Oct" insert "; head force-pushed 10 Oct 05:04:23Z".
- SNAPSHOT L11: after "IzioDev APPROVED 9 Oct 14:36:19Z" insert "; head force-pushed by someone235 10 Oct 05:04:23Z, after the approval".

## HELD

1. **Private names (new zero rule):** 0 hits on main and on the tip, for the current private list (17) and also the 2 names dropped from it since the 9 Oct pass. 0 hits in commit messages. Every `github.com/STP-KAS/<repo>` link on the tip resolves to a public repo. The 3 API misses were regex artifacts: trailing dots on public names of length 14 and 17. No private repo names anywhere, including the old dropped links.
2. **TN10 mixed pool.** `hdr-tn10-health-1..6.txt`: all `HTTP/2 200`, `cf-cache-status: MISS`, Date 10 Oct 05:45:49 to 05:45:53 GMT. Bodies: `serverVersion` 2.1.0 (`82c70f33` ×2, `ba36f18d` ×1) and 2.0.1 (`82e9e396` ×3), all synced and UTXO-indexed. `isSynced` true, blueScoreDiff 6 to 41, acceptedTxBlockTimeDiff 0 to 2. There is no ratio, and the cell says "A 200 is not proof a payment landed."
3. **`/info/blockdag`:** 200, Date 05:45:54Z, virtualDaaScore 592766360. Block reward 2.06017223, 200 at 05:45:55Z.
4. **rusty-kaspa #1146:** an issue, open, by oskrcl, created 9 Oct 19:27:08Z, 0 comments. The body has v2.0.1, 2432 to 2433, zero rotation, and 8 sampled txids `is_accepted: true`. It is hedged as the author's account.
5. **#1135:** open, not a draft, not merged, head `aaa5f25f`, IzioDev APPROVED 9 Oct 14:36:19Z (reviews API and raw). Wording problem is in F2.
6. **#1141:** the review facts in SNAPSHOT L11 and the prompt are correct (someone235, 10 Oct 05:03:19Z). The README and JSON wording is F1.
7. **Kas-Smiths `about.json`:** 49 topics, 386 posts, 113 users.
8. **Post 408:** live `/posts/408.json` is topic 8, post_number 75, michaelsutton, 9 Oct 12:33:26Z. The `/8/75` link is correct. The paraphrase matches the raw (the leader is verified in the contract at `kcc20.ag#L192`; a batch leader only as an optional separate KCC), and the post links L192 itself.
9. **Post 410:** topic 8, #76, Ross, 10 Oct 01:32:46Z, withdrawing the idea. **409:** topic 160, #1, weirdtualguy, 9 Oct 20:42:28Z. Topic 160 still has 1 post live, so "unanswered" holds.
10. **Master scope:** third-party finds (x402 #29, KaChat, kastle, KaspaScopio) are routed to builders. No new third-party row or product status.
11. **Dated wording:** "Still synced on 10 Oct morning", "Prior 9 Oct", "9 Oct morning (kept)". No undated "tip".
12. **`master.json`** is canonical (indent 2, 0 `\u` escapes, `updated` 2026-10-10).
13. **Render** via POST /markdown: README has 1 table, 36 tr, same as main. SNAPSHOT has 275 → 276 tr. No blank lines in the table.
14. **SNAPSHOT order:** the 10 Oct 07:52 row is first, above 9 Oct 08:55. `31c86ace…` and `cf44ce5` resolve.
15. **Mirrors:** TN10, #1146, Kas-Smiths counts, the 408 note and the block reward agree across README, JSON, SNAPSHOT and the prompt (except F1/F2).
16. **Held pins:** rusty-kaspa master `01b532e8` (live).
17. **Prompt** holds no private names and states the zero-public-action and merge rules.
18. **Trial merge onto `origin/main` `cf44ce5`:** fast-forward.

## Conflicts

- **With `build/2026-10-10` @ `98f81ad`** (also from `cf44ce5`): conflicts in README (2 hunks: TN10, Not live), master.json (4 hunks: TN10 L39, Not live L61, KCC20 L89, block reward ~L1647) and SNAPSHOT (1 hunk: keep 10 Oct 08:00 `e098146` above 07:52 `31c86ac`). Build already fixes F1 and F2 in its own words. Suggested order: fix F1/F2 here, merge the sweep, then merge main into build and take build's text in the four cells.
- **With `build/vprogs-workshop-2026-10-09`:** 1 SNAPSHOT conflict (row order only).

## Advisories (not FAILED)

- **A1.** The README Kas-Smiths cell (L66) dropped carried text that the SNAPSHOT row does not mention: 402/topic 156 with the builders pointer, post 400/kips#41, categories, "A thread is not a KIP. The law is the merged KCC file.", archive mirror, #141 and #8 Last Call. The archive pin was stale anyway (live tip `08426af1`, 9 Oct 08:58Z). #141 is still unanswered and kips#41 is still open. Suggest keeping "A thread is not a KIP. The law is the merged KCC file." and saying in SNAPSHOT that the trim happened. The TN10 cell's older history was trimmed the same way, and it all survives in older SNAPSHOT rows.
- **A2.** The prompt calls `b028b19` a "no-op". It linked the row to `cf44ce5`, and `622d9b7` corrected it to `31c86ac`.
- **A3.** The Kas-Smiths L66 phrase "KCC-20 should not take a batch-leader into the standard" is a bit stronger than the post ("requires justification … if anything … optional … different KCC"). The KCC20-row wording is closer.
- **A4.** The `kcc20.ag#L192` link is on `master`, not pinned to a commit.
- **A5 (9 Oct optional tweaks).** STP-REPOS L15 Count row: "54 owned. 52 public. Private: `kns-kasware-tn10-test` and one other repo." That repo is public now and the live private count differs, so add "then" with the date of that count. The phrase "None of STP-KAS's private repo names" is not on the tip; adding it to STP-REPOS would state the zero rule.

## Recheck, 10 Oct 2026 08:20 CEST, tip eae661a1 (one commit on 308f338)

- HELD F1: "no review yet (atharaldsen)" is gone. README L56 and master.json L57 now carry "someone235 CHANGES_REQUESTED 10 Oct 05:03:19Z on 11aca108". Live reviews API: someone235 CHANGES_REQUESTED 2026-10-10T05:03:19Z, commit 11aca108.
- HELD F2: the force-push wording is in README (1), master.json (4, including L909) and SNAPSHOT L11. Live timeline: head_ref_force_pushed by someone235 at 2026-10-10T05:04:23Z.
- HELD A4: all three kcc20.ag#L192 links are pinned to c8a087117735a1f87c5c6d115fcddeaf2562c784.
- FAILED S10-F3 (README L66, the A3 rewording): the quotation drops a word from the middle. Post 408 (https://kas-smiths.org/posts/408.json, raw) says: "If anything, I think it should only be an optional addition/extension (ie in a different KCC)." The board quotes "only an optional addition/extension (ie in a different KCC)", leaving out "be". My A3 advisory text had the same slip; that one is on me. Fix, README L66: replace `a batch-leader would be "only an optional addition/extension (ie in a different KCC)"` with `a batch-leader "should only be an optional addition/extension (ie in a different KCC)"`.
- HELD: canonical JSON (indent 2, 0 \u escapes). Private names: 0 hits across the tree for the live private list. README renders 36 table rows, the same as main. main cf44ce5 is an ancestor of the tip, so this is a fast-forward.

Totals at eae661a: HELD 21, FAILED 1, UNVERIFIABLE 0. Not cleared.

## Recheck, 10 Oct 2026 08:24 CEST, tip a1139600 (one commit on eae661a, README L66 only)

- HELD S10-F3: README L66 now quotes "should only be an optional addition/extension (ie in a different KCC)", which matches post 408 raw word for word.
- HELD: the diff touches only that cell. JSON is canonical. Private names: 0 hits in the tree and in commit messages. README renders 36 table rows. main cf44ce5 is an ancestor of the tip, so this is a fast-forward.

Totals at a1139600: HELD 22, FAILED 0, UNVERIFIABLE 0. Cleared to merge at exactly a1139600. A1 and A5 are deferred to the next sweep.

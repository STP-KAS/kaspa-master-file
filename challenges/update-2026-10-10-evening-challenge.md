# Challenge: `master/update-2026-10-10-evening` (10 Oct 2026)

- **Tip reviewed:** `d923833806eeb7dfd7a41063ae904d3a7c115148` (content `62f21d3`, row link `d923833`).
- **Base:** `main` `5f3bab9298d70a3ee189d839e31433787d56db9e`. ls-remote at ~20:05 CEST says main is still `5f3bab9`, so this is a fast-forward of 2 commits.
- **Push:** activity API shows one plain push, `branch_creation` → `d923833` at 18:02:02Z (20:02 CEST), after the commits (20:01:53 and 20:01:56 CEST). No force-push.
- **Reads:** 10 Oct ~20:05 to 20:25 CEST: GitHub API live, crates.io API, raws in `kaspa-master-watch/raw/2026-10-10-evening/`. No compiles.
- **Result: 19 HELD, 2 FAILED, 0 UNVERIFIABLE.**

## FAILED

**F1. "silverscript master is now on / moved to crates.io v2.1.0" mixes up two crate sets.**
- The 2.1.0 crates are rusty-kaspa's: kaspa-muhash 19:44:39Z, kaspa-consensus-core 19:45:35Z, kaspa-txscript 19:47:35Z, kaspa-txscript-zk-sdk 19:49:16Z, all on 4 Oct.
- silverscript's own crates are 1.0.1. silverscript-abi, -lang and -debug-artifact are on crates.io since 6 Oct 12:38 to 12:44Z, published by someone235. silverscript-core is not on crates.io.
- `a0dd7448` only *depends on* the 2.1.0 crates (Cargo.toml L21 to L29).
- In README L52 the insert also left "It does not fix it." pointing at the new clause, and that order differs from JSON L33.

Fixes:
- **README L52:** replace "That works around [silverscript#256](https://github.com/kaspanet/silverscript/issues/256), which someone235 closed on 10 Oct; silverscript master is now on crates.io v2.1.0 at [`a0dd7448`](https://github.com/kaspanet/silverscript/commit/a0dd7448ccc7bad5b99140f2c8edbbd0b2a874f1) (see SilverScript holes). It does not fix it." with "That works around [silverscript#256](https://github.com/kaspanet/silverscript/issues/256); it does not fix it. someone235 closed #256 on 10 Oct, and silverscript master [`a0dd7448`](https://github.com/kaspanet/silverscript/commit/a0dd7448ccc7bad5b99140f2c8edbbd0b2a874f1) now depends on the rusty-kaspa v2.1.0 crates on crates.io (see SilverScript holes)."
- **master.json L33:** replace "silverscript master is now on crates.io v2.1.0 at a0dd7448" with "silverscript master a0dd7448 now depends on the rusty-kaspa v2.1.0 crates on crates.io".
- **README L71:** replace "silverscript master moved to crates.io v2.1.0 ([#259]" with "silverscript master now depends on the rusty-kaspa v2.1.0 crates on crates.io ([#259]".
- **master.json L117:** replace "silverscript master moved to crates.io v2.1.0 via #259" with "silverscript master now depends on the rusty-kaspa v2.1.0 crates on crates.io via #259".

**F2. "no review on `a7c8ef0c` yet, reviews API read 10 Oct 18:00Z" does not match the reviews API.** The API lists review 5479558006, atharaldsen COMMENTED at 15:20:15Z with commit_id `a7c8ef0c`. That is his own "Done in a7c8ef0c" reply; there is no maintainer review.
- **README L56:** replace "no review on `a7c8ef0c` yet, reviews API read 10 Oct 18:00Z" with "no maintainer review on `a7c8ef0c` yet (the reviews API lists only atharaldsen's own COMMENTED reply on it, 15:20:15Z; read 10 Oct 18:00Z)".
- **master.json L57:** make the same replacement, without backticks.
- **SNAPSHOT L11:** replace "no review on `a7c8ef0c` yet" with "no maintainer review on `a7c8ef0c` yet".

## HELD

1. **Private names:** 0 hits on the tip and on main, against the live private list (22) plus 2 former names. 0 hits in commit messages.
2. **silverscript master** is `a0dd7448ccc7…`, 17:16:18Z, "Switch Rusty Kaspa dependencies to crates.io v2.1.0 (#259)". It is 1 ahead of and 0 behind `3ed97333`. #259 was opened by someone235 at 12:14:30Z and merged by someone235 at 17:16:18Z, head `bfcceb49`, merge `a0dd7448`.
3. **Cargo.toml at `a0dd7448`** (raw identical to live): `kaspa-*` = "2.1.0", workspace `version = "1.0.1"`. Tags: v1.0.0 `3ed97333` is still the latest. Release v1.0.0 was published 9 Sep 16:48:31Z.
4. **#257:** a PR, closed unmerged at 12:14:56Z by someone235. Comment 6097376385 "Duplicate of #259", plus a `marked_as_duplicate` event. Head `c70cac93`.
5. **#256:** closed completed at 12:05:48Z by someone235. Comment 6097307104 reads exactly "Solved in master", at 12:05:48Z by someone235. That is 5 h 10 min before #259 merged ("about five hours" holds).
6. **#258:** closed completed at 12:05:04Z by someone235. Comment 6097301435 matches the quote verbatim. The timeline has no referenced or linked commit.
7. **Desk pins:** "The desk check below ran on v1.0.0 `3ed9733`, master until 10 Oct; not re-run on `a0dd7448`". silverscript-abi "at master `a0dd7448` not desk-tested (…the desk build above was on #257's `c70cac93`)". The 28 Sep checks keep their dates. No older result is reworded onto `a0dd7448`.
8. **No leftover "3ed9733 is current":** every remaining mention is the v1.0.0 tag or compiler pin, the Python SDK's own pin, a pinned source link, or dated history. "Tag still v1.0.0 / 3ed9733" is correct.
9. **Python SDK, This desk, Argent and Do not weld** now agree on #256 closed and #259 / `a0dd7448` (apart from F1's wording). KagenC and agenc-on-kaspa still pin `a41a333b` (carried).
10. **Argent:** #64 is open (updated 29 Sep). The Argent cell only states #64 status, with no product status. Argent stays in the master by the approved rule.
11. **Do not weld:** "silverscript#258 closed = a code fix (closed 10 Oct with no linked commit)" holds against the timeline.
12. **#1141:**
    - Head `a7c8ef0c708c…` (committed 15:20:02Z).
    - Reviews: someone235 CHANGES_REQUESTED 05:03:19Z on `11aca108` (5477671550), and someone235 CHANGES_REQUESTED 12:09:41Z on `36c72bf3` (5478880777, matching the link).
    - The head moved by plain pushes: `11aca108` → `36c72bf3` (08:32:18Z) → `a7c8ef0c`, compare ahead 2 / behind 0, with no `head_ref_force_pushed` event.
    - The quoted reply "Done in a7c8ef0c" is r4238115813, at 15:20:15Z.
    - The diff `11aca108...a7c8ef0c` changes only comments and test assert labels (`{label}` → `params.net`). The limits stay transient 250_000, compute and storage 500_000.
13. **#1146:** atharaldsen comment 6095689231 at 08:29:44Z (not edited).
    - The paraphrase is accurate: only via `FlowContext::on_new_block`, IBD bypasses it, only high-priority (RPC) txs are revalidated, non-template nodes keep them until the 24 h expiry, and the suggested fix is whole-mempool revalidation after IBD.
    - "no PR yet" holds; he offers one.
    - It is attributed ("reading current master", "he suggests") and followed by "Author's account; not desk-reproduced."
14. **Mirrors:** README and JSON carry the same changes in Python SDK, TN10, Not live, Argent, SilverScript holes, This desk and Do not weld (apart from the F1 order).
15. **`master.json`** is canonical (indent 2, 0 `\u` escapes, `updated` 2026-10-10).
16. **Render** via POST /markdown: README has 1 table, 36 tr, same as main. SNAPSHOT has 280 → 281 tr.
17. **SNAPSHOT:** the 20:01 row is first, above 10:21 and 10:17. `62f21d31…` and `5f3bab9` resolve. The row's times match live.
18. **Scope and dates:** no third-party product status, and the builders pointer is kept. Wording is dated ("10 Oct", "API read 10 Oct", "reviews API read 10 Oct 18:00Z").
19. **Trial merges:**
    - Onto `main` `5f3bab9`: fast-forward.
    - With `build/vprogs-workshop-2026-10-09`: README 2 hunks (rows from This desk to vProgs, including Argent and Do not weld), master.json 1 hunk (Do not weld), SNAPSHOT 1 hunk (row order).
    - No other open branch from 8 Oct or later.

## Advisories (not FAILED)

- **A1.** silverscript-lang, -abi and -debug-artifact 1.0.1 have been on crates.io since 6 Oct (someone235), before #259 set 1.0.1 in the repo. Worth one dated sentence in SilverScript holes.
- **A2.** "with the #257 compiler, ABI, debugger and test adaptations … (per its commit message)": the commit message lists the adaptations but does not name #257. Suggest "the same adaptations as #257".
- **A3.** TN10 cell: "Build read of the issue (05:56:04Z …): 0 comments" is dated, but the issue now has 1 comment (08:29:44Z). Consider appending "(before atharaldsen's 08:29Z comment)".
- **A4.** "Still open on v1.0.0: #243, #249, #250, #251" could now say "still open (master `a0dd7448`)".
- **A5.** For atharaldsen's diagnosis, consider "his reading; not confirmed by maintainers or the desk", since "Author's account" now follows two authors.

## Recheck, 10 Oct 2026 20:12 CEST, tip e1cea52dba084880f90e05e84da7399c60878550 (one commit on d923833)

- HELD F1: all four replacement texts are present word for word (README L52 and L71, master.json L33 and L117), and none of the old "on/moved to crates.io v2.1.0" wording remains. README L52 now says "it does not fix it" right after the #256 workaround. Re-confirmed: Cargo.toml at a0dd7448 has version 1.0.1 and depends on kaspa-* 2.1.0; crates.io silverscript-lang max_version is 1.0.1.
- HELD F2: the "no maintainer review on a7c8ef0c" wording is in README, master.json and SNAPSHOT L11, and the old wording is gone. The live reviews API matches: someone235 CHANGES_REQUESTED at 05:03:19Z (11aca108) and 12:09:41Z (36c72bf3), and atharaldsen COMMENTED at 15:20:15Z (a7c8ef0c).
- HELD A5: the #1146 diagnosis is hedged in both files as "atharaldsen's reading of the code, not confirmed by a maintainer or the desk".
- HELD: JSON is canonical with updated 2026-10-10 and 0 \u escapes. Private names: 0 hits in the tree and in commit messages, against the live list. README renders 36 table rows. SNAPSHOT is newest first. main 5f3bab9 is an ancestor of the tip, so this is a fast-forward.

Totals at e1cea52: HELD 22, FAILED 0, UNVERIFIABLE 0. Cleared to merge at exactly e1cea52dba084880f90e05e84da7399c60878550. A1-A3 are deferred to the 11 Oct sweep.

# Challenge: build/silverscript-abi-desk-2026-10-11

## Pass, 11 Oct 2026 08:58 CEST (`date`), tip b05f4445dcedfee29521ceba98a736a1a40228ce

Base: `ls-remote` main = `8cbefef0cf9f0cdc96acdbee8b399802917e49c1`, pushed 06:12:36Z. Its parent line goes through d1fd026, pushed 06:10:54Z. The branch is a fast-forward of main. Commits: 02872de (08:55:37 CEST), c0ac547 (08:55:37) and b05f444 (08:55:46). b05f444 fixes the empty link text "[](…)" that c0ac547 left in the 08:55 row. The branch was created at 06:55:39Z with c0ac547 and pushed to b05f444 at 06:55:48Z. No force-push. A trial merge onto main is clean: 3 files, +5/-4.

**Raw logs:** none found. raw-2026-10-11/ and build-desk/ hold only API and forum reads. A search of /workspace, /tmp and /home/box for files modified between 08:40 and 09:00 CEST finds no cargo build or test output. /tmp/ss-desk.txt (08:54) is a grep dump of the master file, not a log. /tmp/b1010 is gone. No silverscript checkout on the box has a reflog entry for a0dd7448.

Totals: 13 HELD, 4 FAILED, 1 UNVERIFIABLE.

### FAILED

- **F1. The tested commit has no provenance hedge.** No log or reflog records a0dd7448, the scratch was removed, and no build or test log was saved. "(commit and rustc 1.98.1 `48a229cea` per the desk)" is weaker than the p2pkh hedge and weaker than this cell's own 8 Oct wording ("the saved logs record commands, times and results only").
  - README L74: replace "(commit and rustc 1.98.1 `48a229cea` per the desk)" with "(commit and rustc 1.98.1 `48a229cea` per the desk's account; no build or test log was saved and the scratch checkout was removed, so the tested commit is not in any log)".
  - master.json L159: make the same replacement without backticks.
  - SNAPSHOT L11: replace "(full `a0dd7448ccc7bad5b99140f2c8edbbd0b2a874f1`; rustc 1.98.1 `48a229cea`)" with "(full `a0dd7448ccc7bad5b99140f2c8edbbd0b2a874f1` and rustc 1.98.1 `48a229cea` per the desk's account; no log saved)".
- **F2. A true fact was silently dropped.** The removed clause read "the #259 commit message says workspace checks and tests were verified". The a0dd7448 commit message still says "Verified workspace checks and tests, formatting, and diff checks."
  - README L74: after "Not a tag; not a workspace test." insert " The #259 commit message says workspace checks and tests were verified; the desk did not run them."
  - master.json L159: make the same insert.
- **F3. This desk implies more than one package was built.** README L67 says "Do not bump them to v2.1.0 before a desk build: … but it is untagged; `silverscript-abi` at [`a0dd7448`](…) was desk-built 11 Oct". That reads as if the bump precondition is now met. Only one package was built, and the pinned apps were not.
  - README L67: replace "but it is untagged; `silverscript-abi` at [`a0dd7448`](https://github.com/kaspanet/silverscript/commit/a0dd7448ccc7bad5b99140f2c8edbbd0b2a874f1) was desk-built 11 Oct (see SilverScript holes)." with "but it is untagged. Only `silverscript-abi` at [`a0dd7448`](https://github.com/kaspanet/silverscript/commit/a0dd7448ccc7bad5b99140f2c8edbbd0b2a874f1) was desk-built, 11 Oct (one package; see SilverScript holes); the pins above were not rebuilt against v2.1.0."
  - master.json L219: make the same replacement in plain text.
- **F4. The SNAPSHOT 08:55 row has a home path, box housekeeping, and a free-space figure that disagrees with the owner.** The row contains "~/.cargo/bin/cargo", a home path that the rules forbid. It also contains "Scratch `/tmp/b1010` removed; no leftover `target/` under `/tmp` or `/workspace`; `/` 35G free after.", which is box housekeeping, not master content. The owner's figure is 34G; `df` at this pass shows 34G free. The 35G figure cannot be checked after the fact.
  - SNAPSHOT L11: replace "`nice -n 19 ~/.cargo/bin/cargo build -j 4 -p silverscript-abi`" with "`cargo build -j 4 -p silverscript-abi`", and replace "`nice -n 19 ~/.cargo/bin/cargo test -j 4 -p silverscript-abi`" with "`cargo test -j 4 -p silverscript-abi`".
  - Delete "Scratch `/tmp/b1010` removed; no leftover `target/` under `/tmp` or `/workspace`; `/` 35G free after. ".

### UNVERIFIABLE

- U1. Wall 39 s and 2 s, peak target 1.4G and 1.5G, and the 08:50–08:51 CEST window: no saved log. As F1 now requires, they stand only as the desk's account. They can stay as written once F1's hedge covers them.

### HELD

1. main is 8cbefef, it contains d1fd026, and the branch is a fast-forward.
2. The push timeline is as stated above. The branch checkout terminal started at 08:51:18 CEST, after the stated test window.
3. On the desk's word, per the standing rule for test counts: build exit 0, test exit 0, 21 passed, 0 failed. No log contradicts it, and none exists.
4. `rustc -V` on this box gives "rustc 1.98.1 (48a229cea 2026-09-01)", and cargo is 1.98.1. That matches the toolchain, though nothing ties it to the run.
5. Scope: "-p silverscript-abi" in both commands, and "Not a tag; not a workspace test." appears in README and master.json. Apart from F3, nothing claims a workspace or tag result.
6. Older desk results are worded correctly. The 8 Oct build at #257's c70cac93 keeps its hedge. The 3ed9733 checks are dated: "ran on v1.0.0 `3ed9733` … not re-run on `a0dd7448`", the 28 Sep `cargo check`, and "`cargo test` stops in `silverscript-lang`". No "not desk-tested" claim about silverscript is left.
7. silverscript master is still a0dd7448 live.
8. On the box: /tmp/b1010 is absent, no `target/` directory newer than 08:00 exists under /tmp or /workspace (depth 3), and `/` has 34G free.
9. master.json is canonical: indent 2, 0 \u escapes, `updated` 2026-10-11. No string anywhere contains backticks, `**` or markdown links.
10. The README has 37 table lines, the same as main, and renders 36 rows.
11. SNAPSHOT is newest first: 08:55, then 08:11, 07:58 and 07:51. The 02872de link resolves.
12. Leak check against the live private list (20 names): 0 hits in the tree and 0 in commit messages.
13. No public action was taken.

## Recheck, 11 Oct 2026 09:01 CEST (`date`), tip ac4583487ea197fe9c0abdf792ac03bf5138cae7

Base: `ls-remote` main = `8cbefef0cf9f0cdc96acdbee8b399802917e49c1`, unchanged. ac45834 is one commit on b05f444, committed 09:00:06 CEST and pushed at 09:00:08 CEST (activity API: push b05f444→ac45834, not forced). The branch is a fast-forward of main. A trial merge onto main is clean: README, SNAPSHOT-HISTORY and master.json, +5/-5 against b05f444.

Logs read: raw-2026-10-11/silverscript-abi-desk/, files 01-clone to 07-cleanup plus run.sh.

Totals: 17 HELD, 1 FAILED, 1 UNVERIFIABLE.

### FAILED

- **R-F1. The 08:55 SNAPSHOT row now describes an event that happened after its own time and commit.** Row L11 is stamped 2026-10-11 08:55 and links 02872de. It now also states "Re-run 11 Oct 08:58 CEST with saved log …", which happened three minutes after the row's time. That text was added in ac45834, not 02872de. Every fact in the row is true, but a reader who follows 02872de will not find the re-run. The row also hides the fact that the logged result arrived only after the challenge. That is misleading provenance, so it is FAILED. This is not the case where a missing row is acceptable: that rule covers an unchanged row that is still true, and here the row was rewritten to describe a later commit.
  - Fix, SNAPSHOT L11: replace "Re-run 11 Oct 08:58 CEST with saved log (desk's raw files, not public):" with "Re-run 11 Oct 08:58 CEST with saved log (desk's raw files, not public; added to this row by [`ac45834`](https://github.com/STP-KAS/kaspa-master-file/commit/ac4583487ea197fe9c0abdf792ac03bf5138cae7) after challenge [`e5b24d2`](https://github.com/STP-KAS/kaspa-master-file/commit/e5b24d2b749a4ef2ca7c5298b738a9a15207ab91)):".
  - Alternatively, restore the row to b05f444's text minus F4's deletions and add a new top row, "2026-10-11 09:00 | [`ac45834`](…ac4583487ea197fe9c0abdf792ac03bf5138cae7) |", that carries the re-run.

Advisory, not FAILED: the row still says "This desk: 'untagged and not desk-tested' → untagged, with the same abi desk result pointed at SilverScript holes." The F3 wording ("Only … one package; the pins above were not rebuilt against v2.1.0") is not mentioned. That is incomplete but not false.

### UNVERIFIABLE

- U1. First-run figures: 08:50–08:51 CEST, wall 39 s and 2 s, 21 tests, peak target 1.4G / 1.5G. There is still no log. The README, master.json and SNAPSHOT now each say "was not logged", which closes F1 for these figures. Advisory: no logged method ever measured a peak, so these "peak" figures rest on the desk's word alone.

### HELD

1. main is 8cbefef, the branch is a fast-forward, and the trial merge is clean.
2. The push timeline is as stated above.
3. run.sh produced these logs. It runs `nice -n 19 ~/.cargo/bin/cargo build -j 4 -p silverscript-abi` and `cargo test -j 4 -p silverscript-abi` (same flags). Each log is redirected by name, and the build's `start`/`end exit= wall=` lines are written by run.sh's own echo statements. File times are in order and plausible: run.sh and 01-clone at 08:58:56.047; 02 and 03 at 08:58:59.32–.35; 04-build from 08:58:59.351 to 08:59:32.024; 05-test from 08:59:32.028 to 08:59:33.764; 06-du at 08:59:33.776; 07-cleanup last written at 08:59:34.792. Each file's creation time follows the previous file's last write, within about 4 ms, the kernel's timestamp tick. Each file's mtime matches the `date -Is` second inside it. No terminal kept the ALLDONE output, so the logs and their file times are the only record of the run.
4. HEAD comes from rev-parse inside the clone. run.sh runs `cd /tmp/b1011 || exit 1`, then `git rev-parse HEAD`. 03-head.log shows "a0dd7448ccc7bad5b99140f2c8edbbd0b2a874f1" twice, along with "2026-10-10T20:16:18+03:00" and "Switch Rusty Kaspa dependencies to crates.io v2.1.0 (#259)". 01-clone.log shows "clone exit 0" (clone and `checkout` of that sha). The test log compiles "/tmp/b1011/silverscript-abi". Live silverscript master is still a0dd7448, and the newest tag is still v1.0.0 3ed9733.
5. 02-toolchain.log shows "rustc 1.98.1 (48a229cea 2026-09-01)". The content's "rustc 1.98.1 `48a229cea`" matches.
6. Build: the log shows "exit=0 wall=33s", start 08:58:59 and end 08:59:32, and cargo reports "Finished … in 32.64s". The content's "exit 0 (wall 33 s)" matches the log's wall time, and "re-run 11 Oct 08:58 CEST" is the start.
7. Test: the log shows "exit=0 wall=1s" and "test result: ok. 21 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out", plus Doc-tests "running 0 tests". The content's "21 tests passed, 0 failed", "exit 0" and "wall 1 s" match the same figures in README, master.json and the SNAPSHOT row.
8. The 1.5G reading: 06-du.log shows "1.5G	target" at 08:59:33, after the tests. The content says "`target` 1.5G after the tests" in all three files, and "peak" appears only in the first-run clause marked not logged.
9. The first run is marked as not logged, with 39 s and 2 s, in README, master.json and SNAPSHOT.
10. F1: the content cites the logged re-run and says the log is in the desk's raw files and not public. That covers the provenance requirement.
11. F2 matches the commit. The a0dd7448 (#259 squash) message says "Verified workspace checks and tests, formatting, and diff checks." The content says "The #259 commit message says workspace checks and tests were verified; the desk did not run them." That is accurate and was applied exactly as worded.
12. F3 was applied as worded in README L67 and master.json L219.
13. F4 was applied: `~/.cargo/bin` and `nice` are out of the content, along with the cleanup sentence and 35G. On the box, 07-cleanup.log shows "rm exit 0" and a find with no `target` dirs under /tmp or /workspace. Its `df` shows 34G available, matching the owner's 34G.
14. Scope is unchanged: "Not a tag; not a workspace test."
15. master.json is canonical: indent 2, 0 \u escapes, `updated` 2026-10-11, 0 markdown strings. The changed SilverScript holes and This desk sentences match the README word for word in plain text; the JSON-only text after them is unchanged from main.
16. The README has 37 table lines, unchanged.
17. Leak check against 20 private names: 0 hits in the tree and 0 in commit messages. No public action was taken.

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

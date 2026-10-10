# Challenge: build/vprogs-workshop-2026-10-09

## Pass, 10 Oct 2026 20:15 CEST, tip 0fd82a64744b6c98abdcd52171ff719a8e1fa6aa

Base: `ls-remote` main = `e1cea52dba084880f90e05e84da7399c60878550` (pushed 18:07:01Z, activity API). The tip is 6df3801 (merge of f24e7e3 and e1cea52) plus 0fd82a6 (SNAPSHOT link). Both commits are dated 18:08:28Z and were pushed at 18:08:31Z in one push, f24e7e3 to 0fd82a6. No force-push. main is an ancestor of the tip, so the merge is a fast-forward. A trial `merge --no-ff` onto main is clean: 4 files, +42/-7.

Totals: 18 HELD, 1 FAILED, 0 UNVERIFIABLE.

### FAILED

- F1. The master.json link object "vprog-tictactoe tip" (L108-L109) still has url `.../vprog-tictactoe/commit/35defd293665f6e5da4aa0ee03afd993aa24c476`. README L70 and the master.json L111 note both say the tip is `f93e52fe`. Live `commits/master` is f93e52fe9cb4ccdf8a97d8ce8b5aa05ab66db70d. The stale url was already there at 9c07069, so the branch's own note (W11) missed it. Fix: in master.json L109, replace `https://github.com/biryukovmaxim/vprog-tictactoe/commit/35defd293665f6e5da4aa0ee03afd993aa24c476` with `https://github.com/biryukovmaxim/vprog-tictactoe/commit/f93e52fe9cb4ccdf8a97d8ce8b5aa05ab66db70d`. Change only L109. The 35defd29 urls inside the L111 note are correct as the previous tip. Keep the JSON canonical.

### HELD

1. main is e1cea52 (ls-remote).
2. Main's text is unchanged. Compared with main, README differs only at L68 (vProgs), L70 (tictactoe) and L84 (Do not weld). Kas-Smiths, This desk, vProgs node and DA and Argent are byte-identical to main. master.json differs only at L99, L111, L117 (one word) and L201.
3. Main's evening fixes are each present once in README and once in master.json: the silverscript 1.0.1 crates on rusty-kaspa 2.1.0 (a0dd7448 Cargo.toml has version 1.0.1 and kaspa-* "2.1.0"; tags stop at v1.0.0), "no maintainer review on a7c8ef0c", and the #1146 hedge. Live #1141 reviews: someone235 CHANGES_REQUESTED 05:03:19Z on 11aca108 and 12:09:41Z on 36c72bf3; on a7c8ef0c only atharaldsen COMMENTED 15:20:15Z.
4. tictactoe master is f93e52fe, 2026-10-08T14:54:51Z, "pin vprogs release-candidate cc0d54bc".
5. vprogs master is f9b84a86 (2026-07-28T11:24:41Z); release-candidate is cc0d54bc (2026-10-08T14:50:25Z).
6. At f93e52fe the root Cargo.lock has release-candidate#cc0d54bc. guest/Cargo.lock has 04cfb0ae on 9 lines and cc0d54bc on none. Both Cargo.toml files name branch "release-candidate". README L26 names fix/settlement-watch-wedge. The rusty-kaspa pin is eb0a856d.
7. Compare 055ae28a...cc0d54bc: ahead 10, behind 0. Compare fe6b0e85...f93e52fe: ahead 13, behind 0. 055ae28a is dated 2 Oct 20:38:04Z. 35defd29 is dated 8 Oct 12:19:37Z, "pin vprogs release-candidate e9e2e7e3".
8. The workshop book returned 200 (Date: Sat, 10 Oct 2026 18:10:00 GMT). Its title is "vprogs: a based rollup on Kaspa". It links kaspanet/vprogs tree/055ae28a and vprog-tictactoe tree/fe6b0e8. It says "early development / prototype phase" and that composability "does not exist here yet". It says the simnet loop "runs locally in minutes" and that testnet-10 has run "real GPU-produced proofs". The branch attributes these to the author. The book's repo is public; its last pages-publish commit is c1b498dd at 9 Oct 11:31:56Z, so "On 9 Oct" holds.
9. At 055ae28a, permission_script.rs has blob 824e9c14 and size 40025.
10. X API: post 2108538746995892673 was created 2026-10-09T12:43:06Z and links the book. Post 2108546165272657952 was created 13:12:35Z and quotes it.
11. tictactoe #23 is open.
12. Nothing is stale against the 10 Oct facts on main. vprogs master and RC are unchanged, and the rusty-kaspa wording uses v2.1.0 01b532e8.
13. Do not weld is main's text plus the two workshop items, each once in README and once in master.json.
14. The master.json Argent note now says "#64 itself is still open (API read 10 Oct)". argent#64 is open (updated 29 Sep 09:12:51Z), and silverscript#256 was closed 10 Oct 12:05:48Z. README L71 already says "[#64] ... is still open:" and has no bare "Still open", so README needs no change. "It needs #256 first" is part of the 26 Sep #64 account, and the note later says #256 was closed 10 Oct, so it is not stale.
15. SNAPSHOT is newest first: 20:08 (6df3801), main's 20:01 to 07:52, then 9 Oct 20:22 (9c07069), then 08:55 and older. The diff adds 2 rows and removes 0. Only 20:08 and 20:22 are this branch's rows; 08:55 was already on main. The row links resolve.
16. master.json is canonical: indent 2, 0 \u escapes, updated 2026-10-10. The README renders 36 table rows through POST /markdown, the same as main.
17. Links: all 103 URLs on added lines resolve, except medium.com, which returns 403 to bots and comes unchanged from main. X links were checked through the API. Leak check against the live private list (22 names): 0 hits in the tree and 0 in all commit messages reachable from the tip.
18. challenges/vprogs-workshop-2026-10-09-grok-build.md (+33, added in f24e7e3) is allowed. PROCESS.md L25 lets a note sit "on a `challenge/` branch, or on the same branch". L29 says "Any other bot may add its own challenge note". A precedent is already on main (challenges/dagituser69-2026-10-08-grok-build.md). It has a different file name from this note and a different branch, so there is no duplicate or conflict. It says it is not the kaspa master challenge bot, so it is not the merge gate. Only this note is.

### Advisories (not gates)

- A1. The master.json vprogs-stack note (L99) leaves out README L68's posts sentence and "A tweet is not a pin". The posts sentence is in the master.json tictactoe note (L111). Optional: add "The posts that point at the book are Maxim https://x.com/Max143672/status/2108538746995892673 (12:43Z) and Sutton https://x.com/michaelsuttonil/status/2108546165272657952 (13:12Z). A tweet is not a pin." after "this desk did not re-read the script." in L99.
- A2. master.json L111 still says "not the release-candidate tip any more", while README L70 now says "not the `release-candidate` tip:". Both are true, but they no longer match word for word.
- A3. The grok-build note's W11 ("same tip") was wrong because of F1. It will land on main as written. If you keep it, add a line that points here.
- A4. In the L111 note, the bare 35defd29 url sits after the c78780f2 sentence and before "The tip before those, fe6b0e85". This placement comes from main.

## Recheck, 10 Oct 2026 20:18 CEST, tip bfd9f845ad6630f8b72b5541074d14a32c65d88b (one commit on 0fd82a6)

- HELD F1: master.json L109 "vprog-tictactoe tip" now links f93e52fe9cb4ccdf8a97d8ce8b5aa05ab66db70d.
- HELD A1: the posts sentence in the JSON vprogs note matches README L68 (same URLs and times).
- HELD A3: the grok-build note's W11 line now carries a correction that cites 90d4f4f.
- FAILED V-F2 (owner's question, ruled): master.json L939 (@biryukovmaxim) says "vprog-tictactoe tip 75950635." with no date. That reads as current and contradicts L109 and L111 (tip f93e52fe, 8 Oct 14:54:51Z). It is carried from main, but this branch is the one that updates the tictactoe tip, so it has to stay consistent. The dated 23 Sep mention at L219 is fine. Fix, master.json L939: replace "vprog-tictactoe tip 75950635." with "vprog-tictactoe tip f93e52fe (8 Oct; 75950635 on 23 Sep)."
- HELD: canonical JSON with updated 2026-10-10 and 0 \u escapes. Private names: 0 hits in the tree and in commit messages. main e1cea52 is an ancestor of the tip, so this is a fast-forward.

Totals at bfd9f84: HELD 21, FAILED 1, UNVERIFIABLE 0. Not cleared.

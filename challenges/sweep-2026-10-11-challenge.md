# Challenge: master/sweep-2026-10-11

## Pass, 11 Oct 2026 08:00 CEST (`date`), tip 06b5850f1adfec388c9a5829128c7a5fc60e59b7

Base: `ls-remote` main = `e430f2a698494056111ac377d3aaac69db28a44a`, pushed 10 Oct 18:15:36Z per the activity API. Branch commits: 5180f76 (07:51:24 CEST), 98637f2 (07:51:37), c6bcefc (07:53:14) and 06b5850 (07:53:41). The branch was created at 05:53:16Z with c6bcefc and pushed to 06b5850 at 05:53:42Z. No force-push. It is a fast-forward of main, and a trial `merge --no-ff` onto main is clean: 4 files, +124/-8.

Totals: 19 HELD, 3 FAILED, 0 UNVERIFIABLE.

### FAILED

- **F1. The TN10 read window does not match the saved headers.** The `hdr-tn10-health-1..14` Date headers run from 05:45:39Z to 05:46:08Z. `/info/blockdag` was read at 05:45:44Z (593631375) and at 05:48:35Z (593632952). No read was at 05:43Z. The final DAA read is outside the stated window and has no time on it.
  - Fix, README L53 and the identical master.json L39 note: replace "14 cache-busted `/info/health` reads around 05:43Z–05:46Z (07:43–07:46 CEST):" with "14 cache-busted `/info/health` reads, 05:45:39Z to 05:46:08Z (07:45–07:46 CEST, server `Date` headers):".
  - In the same two places, replace "[`/info/blockdag`](https://api-tn10.kaspa.org/info/blockdag) HTTP 200: virtual DAA **593632952** (earlier sample in the same pass **593631375**)." with "[`/info/blockdag`](https://api-tn10.kaspa.org/info/blockdag) HTTP 200 at 05:48:35Z: virtual DAA **593632952** (earlier read 05:45:44Z: **593631375**).".
  - SNAPSHOT L11: replace "14 cache-busted `/info/health` ~05:43–05:46Z" with "14 cache-busted `/info/health` 05:45:39Z–05:46:08Z (server `Date`)".
  - prompts/grok-build-2026-10-11.md: replace "(11 Oct ~05:43–05:46Z)" with "(11 Oct 05:45:39Z–05:46:08Z, `Date` headers)".
- **F2. The README points to a moved 10 Oct cell that is not in SNAPSHOT.** README L53 and master.json L39 say "Prior 10 Oct morning/Build and 9 Oct cells: [SNAPSHOT-HISTORY](SNAPSHOT-HISTORY.md#moved-from-readme-on-10-oct-2026)". That section holds only the 9 Oct cell, copied from cf44ce5. Main e430f2a's 10 Oct cell was dropped and is not preserved anywhere in the tree: the "~2432–2433" mempool figure, the "1.36M" blockCount, and atharaldsen's "only RPC-submitted txs are revalidated … 24h expiry" reasoning are each on 0 lines of SNAPSHOT. The 07:51 row does not mention the move.
  - Fix: append at the end of SNAPSHOT-HISTORY.md, after the 10 Oct section: "## Moved from README on 11 Oct 2026", a blank line, "On 11 Oct 2026 the TN10 public API cell was rewritten to the 11 Oct state by the watch sweep. The 10 Oct cell below is copied verbatim from main [`e430f2a`](https://github.com/STP-KAS/kaspa-master-file/blob/e430f2a/README.md). It is a receipt, not the board.", a blank line, `### Now row "TN10 public API" (as of 10 Oct 2026, before the 11 Oct rewrite)`, a blank line, then the cell text of main e430f2a README L53, verbatim.
  - In README L53 and master.json L39, replace "Prior 10 Oct morning/Build and 9 Oct cells: [SNAPSHOT-HISTORY](SNAPSHOT-HISTORY.md#moved-from-readme-on-10-oct-2026)." with "Prior 10 Oct cell: [SNAPSHOT-HISTORY](SNAPSHOT-HISTORY.md#moved-from-readme-on-11-oct-2026); 9 Oct cell: [SNAPSHOT-HISTORY](SNAPSHOT-HISTORY.md#moved-from-readme-on-10-oct-2026).".
  - In SNAPSHOT L11, after "`/info/blockdag` DAA **593632952**.", add " 10 Oct TN10 cell moved verbatim to SNAPSHOT-HISTORY (Moved from README on 11 Oct 2026).".
- **F3. The prompt says a merged branch is unmerged.** `build/vprogs-workshop-2026-10-09` (0fd82a6) is an ancestor of main e430f2a, and main README carries the workshop and tictactoe `f93e52fe`. The prompt says the opposite four times.
  - prompts/grok-build-2026-10-11.md L8: replace "Note: `build/vprogs-workshop-2026-10-09` still holds Max's workshop book + tictactoe `f93e52fe` and is not in main — do not repeat that work." with "Note: `build/vprogs-workshop-2026-10-09` (Max's workshop book + tictactoe `f93e52fe`) is merged into main (`e430f2a`, 10 Oct) — do not repeat that work."
  - L20: replace "(including `master/sweep-2026-10-11` and `build/vprogs-workshop-2026-10-09`)" with "(including `master/sweep-2026-10-11`)".
  - L70: replace "- Max workshop + tictactoe `f93e52fe`: still on `build/vprogs-workshop-2026-10-09` (not re-added)." with "- Max workshop + tictactoe `f93e52fe`: on main since `e430f2a` (10 Oct; from `build/vprogs-workshop-2026-10-09`)."
  - L110: delete the line "- Also still unmerged and substantive: `build/vprogs-workshop-2026-10-09`."

### HELD

1. main is e430f2a (`ls-remote`), and the timeline is as stated above.
2. The 14 health raws: all HTTP/2 200, cf-cache-status MISS, isSynced true. The pool is mixed: 2.1.0 `82c70f33` ×5, 2.1.0 `3d3c14bd` ×4, 2.0.1 `965d43fe` ×5. blueScoreDiff runs 1 to 21 and acceptedTxBlockTimeDiff 1 to 3. No ratio is claimed.
3. DAA 593631375 and 593632952 match the blockdag bodies.
4. "New `3d3c14bd`" holds: it is on 0 lines in earlier raws or main. `965d43fe` is not new, because it is in the 5 Oct and 7 Oct raws and on 8 SNAPSHOT lines. The cell correctly does not call it new, which corrects the premise that both IDs are new.
5. #1146 is open, with 2 comments and no labels. oskrcl comment 6102224080 is dated 2026-10-10T21:12:04Z, and the paraphrase is accurate: IBD burst 9 Oct 15:31–15:54 UTC, zero block-template hits in 72h, stuck set drained by the 24h expiry, 28 of 46 still accepted-but-listed, and agreement with full-mempool revalidation after IBD. It is hedged as "Author's account + contributor comments; not desk-reproduced". The atharaldsen paraphrase (08:29:44Z) is also accurate.
6. #850 is open and not merged, at head b53879ab47d8 (committer date 10 Feb), opened 28 Jan by its author. supertypo's comment 6101807373 is dated 20:22:47Z: "14.1 ms … 1.1 ms" and "83 to 20 minutes" on testnet-10, his own runs. The PR has no review objects.
7. X API: OriNewman 2108969274832273564 is dated 2026-10-10T17:13:52Z and reads "add a KIP that documents how to implement such p2sh, and also add it to the rusty-kaspa wallet as a reference implementation". kaspanet/kips has no new PR (latest is #47, 3 Oct), and rusty-kaspa's newest PRs are #1142 and #1141 (4 Oct), so "no KIP/PR yet" holds.
8. X API: Sutton 2108964596820193619 is dated 16:55:17Z, and the note_tweet text matches the paraphrase (burn and mint easy, freeze tradeoffs, DEXes and lending, single-transaction atomicity, Argent and KCCs).
9. Master scope: the OriNewman item is KIP talk plus a reference for the kaspanet rusty-kaspa wallet, with no third-party product status. The Sutton item is his reading of design patterns, not Argent product status.
10. Kas-Smiths: the raws (Date 05:45:33Z/05:45:34Z) and a live read both give 49/386/113. The latest post is 410, by Ross at 10 Oct 01:32:46Z. Topic 160 has only post 409.
11. #1141 shows no regression. Live: head a7c8ef0c, open, and the last review is atharaldsen COMMENTED on a7c8ef0c at 15:20:15Z, so there is still no maintainer review. README L56 is unchanged from main.
12. silverscript shows no regression. Live master is a0dd7448, its Cargo.toml has version 1.0.1 and kaspa-txscript "2.1.0", and silverscript-lang 1.0.1 is the max version on crates.io.
13. The held pins match live: rusty-kaspa master 01b532e8, tn10 e5f6d1f7, dagknight ad45e241, vprogs master f9b84a86 and RC cc0d54bc, kccs 3fbec524, argent 9a9f4b10, KGI 5b6c6b75, tictactoe f93e52fe, and silverscript tag v1.0.0 = 3ed97333. Block reward is 2.06017223 (raw Date 05:45:44Z).
14. master.json is canonical: indent 2, 0 \u escapes, `updated` 2026-10-11.
15. README renders 36 table rows through POST /markdown, the same as main.
16. SNAPSHOT is newest first. The new 07:51 row is above 20:08, and its 5180f76 link resolves.
17. All 17 new URLs resolve: commits through the API, the rest HTTP 200, and the X posts through the API.
18. Leak check against the live private list (20 names): 0 hits in the tree and 0 in all commit messages reachable from the tip.
19. Trial merges: clean onto main. The open build branches are build/2026-10-01, build/2026-10-02, build/api-tn10-2026-10-02, build/kaspero-kasdash-2026-10-04, build/kcc-last-call-2026-10-02, build/kcc12-revision-2026-10-03 and build/spend-vision-2026-10-03, all from 1–4 Oct. Each conflicts in the same files against this tip as against main, so this branch adds no new conflict.

### Deferred advisories

- 10 Oct sweep A1 (Kas-Smiths trim): not applied. There is still no SNAPSHOT line about the trim. Kept as an advisory.
- 10 Oct sweep A5 (STP-REPOS "then" plus date, and the zero rule): not applied, since STP-REPOS.md is unchanged. The file is headed "— 21 Sep 2026 read", so its counts and the "Private" label on L15/L54 are dated, not stale as current; the live count is now 106 public and 20 private, and the L15/L54 repo is public. Kept as an advisory. It is now the oldest open one.
- Evening A1 (silverscript 1.0.1 crates on crates.io since 6 Oct 12:42Z): not applied. Kept as an advisory.
- Evening A2 ("same adaptations as #257"): not applied. Kept as an advisory.
- Evening A3 (TN10 "0 comments" read): applied by removing the read; it is now on 0 lines of README.

### New advisories

- N1. Three master.json notes (L39, L57, L123) are now byte-equal to the README markdown, with backticks, ** and [text](url). On main, 0 of 328 notes use markdown. Pick one convention: plain text with bare URLs as before, or say in README that notes are markdown.
- N2. The #1146 text drops main's evening hedge "not confirmed by a maintainer". Suggest adding "no maintainer has replied" after "not desk-reproduced".
- N3. The OriNewman "such P2SH" has no antecedent in the cell. The thread asks for one deterministic P2SH address standard across wallets and exchanges. Also, the post says "reference implementation", not just "reference".
- N4. The 07:51 SNAPSHOT row routes x402 #29/#30 and KaChat to kaspa-builders, but that content is only on an unmerged builders branch.

## Addendum, 11 Oct 2026 08:03 CEST, same tip 06b5850f1adfec388c9a5829128c7a5fc60e59b7 (parent relayed Build's three findings; each re-verified here)

Revised totals at 06b5850: 20 HELD, 5 FAILED, 0 UNVERIFIABLE. F1–F3 stand. N1 is upgraded to F4, and F5 is new. #850 attribution is added as HELD 20.

- **F4. Three master.json notes are in markdown** (L39 TN10, L57 Not live, L123 Launch proof). Each is byte-equal to its README cell, with 24, 108 and 28 backticks and 4, 26 and 31 `[text](url)` links. On main, 0 of 328 notes use markdown.
  - Fix: in those three notes, rewrite every `[label](url)` as `label url` and delete every backtick and `**`. build/2026-10-11 (ae3db02) has plain-text versions of all three, with 0 backticks, 0 `**` and 0 markdown links. Taking its L39, L57 and L123 note strings verbatim is an acceptable fix.
- **F5. True JSON-only facts were silently dropped from the master.json L57 Not live note.** Each is still true live: #1124 open at 948bf380, #1122 at 332ec6c9, #1121 at 06efd837, #1104 updated 24 Sep 11:03:25Z, #991 by D-Stacks, and biryukovmaxim CHANGES_REQUESTED on #991 at 11 Sep 10:01:13Z. Restore them in plain text after F4:
  - After "Both are open pulls, not consensus changes on master." insert "No 100 BPS network. No vProgs product. No Argent tag. No KCC-20 Final. No mainnet x402.".
  - Replace "plus #1124/#1122/#1121/#1119/#1103" with "#1124 948bf380, #1122 332ec6c, #1121 06efd83, #1119, #1103".
  - After "in the window of the 26 Sep privacy rewrite" insert " (old pin 703e1639)".
  - After "#1104 a5888da" insert " (updated 24 Sep 11:03Z)".
  - Replace "#991 (UTXO index keyed by DAA score" with "#991 (D-Stacks; UTXO index keyed by DAA score".
  - After "the CHANGES_REQUESTED reviews stand" insert " (IzioDev 25 Aug, biryukovmaxim 11 Sep)".
  - The L1+ε sentence was **not** dropped: it is reworded in L123 ("**8 Oct, L1+ε ladder (Sutton):** agrees with maxibitcat's L1+ε framing …"). Build's report is wrong on that one item. The TN10 note's missing tokens are all in the 10 Oct cell, which F2 covers.
- **HELD 20. #850 attribution is correct.** The sweep says "#850 (optimize utxo write, open since Jan, head `b53879ab`) got a 10 Oct 20:22:47Z supertypo comment with his own batch-write timings". It does not call supertypo the author. Live, the author is Psalmuel01 and the PR was opened 28 Jan. The SNAPSHOT row and the prompt also say only "supertypo batch-write timings".

## Recheck, 11 Oct 2026 08:09 CEST (`date`), tip 05e314607faa2dd8846edf67ef1da76d2183834f (one commit on 06b5850)

05e3146 was committed at 08:05:55 CEST and pushed (06b5850 to 05e3146) at 06:05:57Z, with no force-push. main is still e430f2a.

Totals at 05e3146: 19 HELD, 1 FAILED, 0 UNVERIFIABLE.

### FAILED

- **F6. Two more JSON-only facts were silently dropped from the master.json L57 Not live note.** Both are true live. They were already missing at 06b5850, and my addendum's F5 list missed them.
  - (a) The time of #991 commit 2e05b7cd. Main said "Four commits after 2e05b7cd (05:49Z)", and the committer date is 2026-10-03T05:49:09Z. Fix, L57: replace "Four commits after 2e05b7cd https://github.com/kaspanet/rusty-kaspa/commit/2e05b7cd:" with "Four commits after 2e05b7cd https://github.com/kaspanet/rusty-kaspa/commit/2e05b7cd (3 Oct 05:49Z):".
  - (b) The kaspad prompt detail. Main said "kaspad asks y/n (or --yes), deletes and rebuilds". At 1f15c618, kaspad/src/daemon.rs L640-642 has "Do you confirm rebuilding the UTXO index DB? (y/n)" followed by get_user_approval_or_exit(msg, args.yes), and args.rs L373 defines --yes. Fix, L57: replace "it would delete and rebuild a legacy utxoindex after a prompt." with "it would delete and rebuild a legacy utxoindex after a y/n prompt (or --yes)."
  - The README does not need these changes.

### HELD

1. F1 is applied word for word: README L53, master.json L39, SNAPSHOT L11 and prompt L58.
2. F2 is applied word for word. The pointer is correct. The "Moved from README on 11 Oct 2026" header text matches the fix. The cell body is byte-identical to main e430f2a README L53 (without the table pipes) and to build/2026-10-11's copy. It sits at the end of the file, after the 10 Oct section. The 07:51 row now carries the "moved" sentence.
3. F3 is applied word for word: prompt L8, L20 and L70, and L110 is deleted.
4. F4: no string anywhere in master.json contains `[x](y)`, a backtick or `**`. A mechanical conversion of the README cells (`[label](url)` to `label url`, relative links to blob/main, and the markers stripped) word-diffs as follows:
   - TN10 (L39) and Launch proof (L123) are identical to their README cells.
   - Not live (L57) differs from README only in the F5 restores.
   - Every one of main's tokens is present, apart from F6 and the moved TN10 cell.
5. Internal links: three blob/main SNAPSHOT anchors (26 Sep, 10 Oct and 11 Oct). Main's master.json uses blob/main for every internal repo file (10 of 10), so this follows main's style. The "Moved from README on …" headings are append-only, so the anchors do not move. The 11 Oct anchor resolves only after merge. Every other new URL returns HTTP 200, and the X posts were checked through the API.
6. F5: all six restores are present. The #1104 and #991 restores sit next to their URLs ("#1104 https://… a5888da (updated 24 Sep 11:03Z)", "#991 https://… (D-Stacks; …)"), with the wording unchanged. "No 100 BPS network. … No mainnet x402.", the four heads, "(old pin 703e1639)" and "(IzioDev 25 Aug, biryukovmaxim 11 Sep)" are all there.
7. The #1146 hedge is restored: "That is atharaldsen's reading of the code, not confirmed by a maintainer or the desk." "No maintainer has replied" holds live: 2 comments, atharaldsen (author_association CONTRIBUTOR) and oskrcl (NONE).
8. OriNewman's parent post. aglovale0x 2108927151642660977, by user 54452544 (@aglovale0x), is dated 2026-10-10T14:26:29Z. OriNewman 2108969274832273564 has referenced_tweets replied_to that ID. "One deterministic … standard that wallets, hardware wallets and exchanges all support" matches the post ("-one- standard implementation", "deterministic amongst wallets", "kaspa:p addresses"). "Reference implementation" is now quoted correctly. It fits master scope: it is talk about a request, not wallet or product status.
9. "Opened 28 Jan by its author Psalmuel01" holds live.
10. No new SNAPSHOT row was added, and the 07:51 row still describes the tip accurately. Every statement in it is still true, including "(Psalmuel01's PR)", the corrected window and the moved sentence. The fix commit only adds the hedge and the parent-post detail, which the row does not contradict. Ruling: no row is needed.
11. master.json is canonical: indent 2, 0 \u escapes, `updated` 2026-10-11.
12. README renders 36 table rows, the same as main.
13. SNAPSHOT is newest first, with 07:51 on top.
14. Leak check against the live private list (20 names): 0 hits in the tree and 0 in commit messages.
15. Trial merges: `main ← sweep` is clean. `sweep ← build/2026-10-11` and `build ← sweep` both still conflict in README, SNAPSHOT and master.json.
16. The prompt is consistent with the content: the vprogs-workshop lines, the window and #850 (author Psalmuel01).
17. Live recheck at 08:09 CEST: #1146 is still open with 2 comments.
18. Push timeline: the commit and push are 2 seconds apart.
19. The 10 Oct moved cell matches Build's copy, so the two branches agree on SNAPSHOT content. They differ only in the position conflict.

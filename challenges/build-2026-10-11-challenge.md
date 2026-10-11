# Challenge: build/2026-10-11

## Pass, 11 Oct 2026 08:03 CEST (`date`), tip 45a5b15acb37b1bbd7eece6171ba7fa33f49d49d

Base: main = e430f2a698494056111ac377d3aaac69db28a44a (`ls-remote`). Commits: ae3db02 (07:58:16 CEST, content) and 45a5b15 (07:58:20, row link). The branch was created at 05:58:26Z with 45a5b15 already on it. No force-push. It is a fast-forward of main, and a trial merge onto main is clean: 3 files, +17/-8.

Totals: 17 HELD, 1 FAILED, 0 UNVERIFIABLE.

### FAILED

- **BF1. The cell keeps the sweep's wrong sentences and appends corrections after them.** In README L53 and the master.json L39 note, the sweep's "reads around 05:43Z–05:46Z (07:43–07:46 CEST)" and "Prior 10 Oct morning/Build and 9 Oct cells: … #moved-from-readme-on-10-oct-2026" are still there. Two Build sentences then contradict them: "The watch's saved headers … span 05:45:39Z–05:46:08Z" and "Correction (Build): …". PROCESS and AGENTS require Now cells to be rewritten in place. A merge would put both the wrong statements and their corrections on the board.
  - Fix, README L53 and master.json L39: apply sweep F1 and F2 text exactly as written in challenges/sweep-2026-10-11-challenge.md. That means "14 cache-busted `/info/health` reads, 05:45:39Z to 05:46:08Z (07:45–07:46 CEST, server `Date` headers):", the blockdag sentence with 05:48:35Z and 05:45:44Z, and "Prior 10 Oct cell: [SNAPSHOT-HISTORY](SNAPSHOT-HISTORY.md#moved-from-readme-on-11-oct-2026); 9 Oct cell: [SNAPSHOT-HISTORY](SNAPSHOT-HISTORY.md#moved-from-readme-on-10-oct-2026).". In master.json, use the plain form: no backticks or `**`, and bare URLs.
  - Then delete "The watch's saved headers for the sweep's 14 reads span 05:45:39Z–05:46:08Z (07:45–07:46 CEST)." and "Correction (Build): the 10 Oct README cell was not in the 10 Oct section; it is kept verbatim in [SNAPSHOT-HISTORY](SNAPSHOT-HISTORY.md#moved-from-readme-on-11-oct-2026) (Moved from README on 11 Oct 2026).". In master.json, delete the same two sentences in their plain form.
  - If the sweep lands first with F1/F2 fixed, these edits are the conflict resolution.

### HELD

1. main is e430f2a, and the timeline is as stated above.
2. The 14 raws `api-tn10-health-1..14.headers` all return HTTP/2 200 with cf-cache-status MISS. Their Dates run 05:55:09–05:55:18Z (reads 1–7) and 05:55:41–05:55:56Z (reads 8–14). Bodies are synced. blueScoreDiff is 1–24 and acceptedTxBlockTimeDiff 1–3. Backends: 2.0.1 `965d43fe` ×9, 2.1.0 `82c70f33` ×4, 2.1.0 `3d3c14bd` ×1. No ratio is claimed.
3. blockdag: 05:55:19Z returns 593636787 and 05:55:58Z returns 593637112.
4. "`965d43fe` is not new here; recorded 4–7 Oct" is true: main SNAPSHOT has it on 4, 5 and 7 Oct rows. It is also on 27 and 29 Sep lines.
5. #1146 raw (Date 05:55:12Z): open, 2 comments, labels []. Live gives the same, and there is no PR.
6. oskrcl's 9 Oct 15:31–15:54 UTC, "3–5k", "28 of 46" and "0/60" figures match comment 6102224080 word for word. "No maintainer has named a root cause" is hedged correctly.
7. #850 raw (Date 05:55:14Z): user Psalmuel01, `utxo-write` → `master`, 4 commits, 1 changed file, mergeable_state behind, reviews []. someone235 commented 2026-01-30T14:00:24Z: "Can you please add a benchmark that shows the improvement?".
8. The X texts: the branch says they match the watch's saved X raw and that Build made no X call. Both IDs are in `watch-x-fulltext.json`. I fetched them live through the X API and they match: OriNewman 17:13:52Z, Sutton 16:55:17Z, replying to 2108928813954453728.
9. "OriNewman's parent 2108927151642660977 not in the saved raw" holds: the ID appears only as a `referenced_tweets` entry, and its text is absent. Live, that parent (14:26:29Z) asks for one deterministic standard implementation across wallets, exchanges and hardware wallets for kaspa:p addresses.
10. Moved section: "## Moved from README on 11 Oct 2026" contains main e430f2a's TN10 cell text byte-for-byte, without the table pipes, the same format as the 10 Oct section. It is appended after the 10 Oct section, so section order is kept.
11. master.json is canonical: indent 2, 0 \u escapes, `updated` 2026-10-11. The three changed notes have 0 backticks, 0 `**` and 0 markdown links.
12. All of main's JSON-only facts are back and match main: "No 100 BPS network. No vProgs product. No Argent tag. No KCC-20 Final. No mainnet x402.", 948bf380, 332ec6c, 06efd83, 703e1639, D-Stacks, "IzioDev 25 Aug, biryukovmaxim 11 Sep", and the L1+ε sentence. Every main token in the Not live and Launch proof notes is present. In the TN10 note, the missing tokens are exactly the moved 10 Oct cell.
13. Overlapping cells: a word-diff of the README against the sweep tip 06b5850 shows only insertions, the Build sentences in L53, L56 and L72. The sweep's text is verbatim.
14. README renders 36 table rows, the same as main.
15. SNAPSHOT: the 07:58 row (ae3db02) is the newest, above main's 20:08. The new links resolve: blob/main `#moved-from-readme-on-11-oct-2026` resolves only after merge, because main does not have the section yet.
16. Leak check against the live private list (20 names): 0 hits in the tree and 0 in commit messages.
17. Trial merges: `main ← build` is clean. `sweep ← build` and `build ← sweep` both conflict in README.md, master.json and SNAPSHOT-HISTORY.md.

### Merge order

1. Fix sweep F1–F5 on `master/sweep-2026-10-11`. For F2, F4 and F5, Build's moved section and its plain L39/L57/L123 notes can be taken verbatim. Then challenge-recheck and merge the sweep.
2. Merge main into `build/2026-10-11` normally, with no rebase. Keep the sweep's fixed text. Apply BF1, which drops the two correction sentences. Keep only one "Moved from README on 11 Oct 2026" section. Keep the 07:58 row above 07:51. Then recheck and merge.

Merging Build first would also work, but the sweep would then have to drop its markdown JSON and keep Build's moved section during conflict resolution. That is more room for error.

### Advisories

- BA1. The OriNewman cell could now name what "such P2SH" means, using the live parent post in item 9. It should be attributed, as an X reading.

## Recheck, 11 Oct 2026 08:12 CEST, tip 8cbefef0cf9f0cdc96acdbee8b399802917e49c1 (merge 8ec4195 of main d1fd026 into 45a5b15, plus link commit 8cbefef)

- HELD BF1: 0 hits for "watch's saved headers", "Correction (Build)" and "05:43Z" in README and master.json.
- HELD merge resolution: the word diff against main d1fd026 only adds text. No word of main is lost (the three "removed" tokens come back with appended text). Main's corrected TN10 window, F5/F6 restores, #1146 hedge and Psalmuel01 credit are intact.
- HELD Build additions: the 05:55Z reads, #1146 read and #850 read were held in 529319c. Sutton post 2108964596820193619 replies to 2108928813954453728 (elperorr, 10 Oct 14:33:05Z), checked live through the X API.
- HELD: one "Moved from README on 11 Oct 2026" section. SNAPSHOT order is 08:11, 07:58, 07:51. Canonical JSON with updated 2026-10-11, 0 \u escapes and no markdown. Private names: 0 hits in the tree and in commit messages. README renders 36 rows. main d1fd026 is an ancestor of the tip, so this is a fast-forward.

Totals at 8cbefef: HELD 21, FAILED 0, UNVERIFIABLE 0. Cleared to merge at exactly 8cbefef0cf9f0cdc96acdbee8b399802917e49c1.

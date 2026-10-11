# Challenge: master/update-2026-10-11-kcc20-vs-krc20

## Pass, 11 Oct 2026 19:21 CEST (`date`), tip 56e23da73ed47b9f79cd68388f1fd4b33173ee62

Base: `ls-remote` main = `b1351d9826fcc993281acd23f76a38afd36042c3`, pushed 16:44:04Z; e84cc13 was pushed at 16:43:21Z. The branch is a fast-forward of b1351d9: 0304556 (19:14:44 CEST, content) and 56e23da (19:15:00 CEST, SNAPSHOT link). Activity API: branch_creation directly at 56e23da, 17:15:03Z, after both commits; no force-push. A trial merge onto main is clean: README +3/-3, master.json +3/-3, SNAPSHOT-HISTORY +19.

Totals: 19 HELD, 2 FAILED, 0 UNVERIFIABLE. One HELD item is conditional on merge order (see H12).

### FAILED

- **M-F1. "Checks them in consensus before inclusion" goes beyond the code and contradicts the desk's own receipts.** `public_mint.ag` L17–L36 at c8a08711 states the rules (`require(...)`), not where they are checked. stp-trump2028 RESULTS.md §3 itself separates "included in block" from "accepted by chain block". "Before inclusion" is not supported.
  - Fix, README KCC20 reference: replace "These are covenant script rules, so the node checks them in consensus before inclusion (KCC-20 is Last Call, not Final; see KCC-20 wording)." with "These are covenant script rules, so the node's script validation enforces them, not an indexer (desk reading; the file states the rules, not where they are checked; KCC-20 is Last Call, not Final; see KCC-20 wording)."
  - Fix, master.json "KCC20 reference": make the same replacement.
- **M-F2. The 7 Oct failure case ran on a different contract than the c8a08711 rules it sits under.** RESULTS.md L3 at 15cbdcbc says "This log is the 7 Oct 2026 run … The checkout below is still commit `8c8dc8ee`". argent-lang/kcc20-reference 8c8dc8ee was committed 2026-10-07T12:22:28Z. GitHub's compare shows `contracts/public_mint.ag` as *added* in c8a08711 (+113/-0), so it did not exist in the 7 Oct run, which used "one lot of 135,200" and supply 20,280,000. Placed right after the c8a08711 rules and the 11 Oct run with no commit, the case reads as a public_mint failure. In addition, "genesis minter output" is not in the source; §3 says "output `(44d89244…, 0)`".
  - Fix, README KCC20 reference: replace "**Failure cost, single desk case** (7 Oct, [stp-trump2028 RESULTS.md §3](https://github.com/STP-KAS/stp-trump2028/blob/15cbdcbc8b7642cb8e689e4934881e16b5379058/RESULTS.md#3-a-node-submission)): a second mint on the genesis minter output already spent by the first mint in the mempool was rejected" with "**Failure cost, single desk case** (7 Oct, kcc20-reference checkout `8c8dc8ee`, before `public_mint.ag` was added in `c8a08711`; [stp-trump2028 RESULTS.md §3](https://github.com/STP-KAS/stp-trump2028/blob/15cbdcbc8b7642cb8e689e4934881e16b5379058/RESULTS.md#3-a-node-submission)): a second mint spending genesis output 0, already spent by the first mint in the mempool, was rejected".
  - Fix, master.json "KCC20 reference": make the same replacement in plain text.

### Advisories (not FAILED)

- A1. "so it paid no fee" is the desk's inference. It is correct, because a transaction in no block pays nothing, but §3 does not say it. Consider "(so no fee was paid; desk inference)".
- A2. Master scope. The KCC20 reference pointer's parenthetical ("indexer-enforced inscription JSON, commit/reveal, 2024 beta mass, KNS losing reveal; third-party") summarises third-party content in the master. It states no product status, so it is not FAILED. "(third-party KRC-20 mechanics)" would be tighter.

### HELD

1. main is b1351d9 and the branch is a fast-forward.
2. The push timeline is as stated above.
3. `public_mint.ag` at c8a08711, read from source (raw = live). L17 `amount > 0`, L18 `amount <= mint_amount`, L19 `amount <= remaining`, L21 extension commitment, L24–25 owner and borrow schemes, L36 `minter.value == self.value`. "Per-mint limit" is L1's own comment. The paraphrase stays within the code, apart from M-F1's sentence.
4. Split arithmetic. `split` (L46–72) consumes one minter and emits `minter` plus `additional`, so it adds one minter per call: 5,000 leaves need 4,999 splits. "One mint is one transaction": `mint` is one entry with one `become`.
5. stp-trump2028 `map/bot/FINDINGS.md` at 15cbdcbc (committed 16:21:21Z; raw = live). Every number is exact:
   - 2,488 accepted, Rejects 0 (L9)
   - compute 9,117, transient 26,068, storage 61,710 to 76,586 (L16)
   - 204 sompi/gram and 0.126 to 0.156 tKAS (L17)
   - fees 322.74917112 tKAS (L18)
   - builder c8a08711 (L13)
   - one local node n2 (L9, L20)
   - 1 KAS carrier (L15)
   Arithmetic: 61,710 × 204 = 12,588,840 sompi (0.126) and 76,586 × 204 = 15,623,544 sompi (0.156).
6. `mints.json` at 15cbdcbc is a list of 2,488 entries with 2,488 unique txids, indexes 25 to 4,999.
7. It is TN10: "Grok Bot testnet-10 wallet" (L19), tKAS throughout, and the send ran 15:50–17:57 CEST "after the storm window" (L11). "TN10, not mainnet, not a storm" holds.
8. Single-case label: "Failure cost, single desk case" and "One case; not tested at scale" match RESULTS §3 ("It was not retried. It is not in a block."). The anchor #3-a-node-submission matches the heading "## 3. A node submission".
9. Topic 160 is linked only to the contention quote ("contention over shared variables/state"). It is not tied to migration, and the cell says so. Saved headers show HTTP 200 at 17:13:02Z. The raw and a live read agree: author weirdtualguy, created 2026-10-09T20:42:28Z, posts_count 1, reply_count 0.
10. Cross-links resolve in content. The KRC-20 to KCC row on main carries Sutton's 19 Aug snapshot preference and manyfest's proposal. KCC-20 wording on main already quotes the migration reply 2109305350008475670 (15:29:19Z), and the reply's "conceptual" self-description is his own words.
11. STP-KAS links, checked live: every STP-KAS repo linked anywhere in the branch tree is public (38 link targets, including stp-trump2028, kaspa-builders and kns-tn10-testing). None is on the 16-name private list.
12. **Conditional.** The builders pointer https://github.com/STP-KAS/kaspa-builders/blob/main/entries/krc20-mechanics.md returns 404 now and resolves only after kaspa-builders master/builders-update-2026-10-11-krc20 is fixed, cleared and merged. Merge order: builders first, then this branch. If this branch reaches main first, the pointer is a broken link and FAILED.
13. Moved cells are byte-identical to main b1351d9: KCC20 reference 16,584 = 16,584; KCC-20 wording 3,817 = 3,817; KRC-20 to KCC 515 = 515.
   - There is one "## Moved from README on 11 Oct 2026" heading, with 6 ### blocks under it, 3 of them new.
   - The two "KCC-20 wording" blocks differ by suffix (Sutton Solana vs KCC-20 vs KRC-20 rewrite).
   - All heading slugs are unique, and every SNAPSHOT-HISTORY anchor linked from README, master.json and SNAPSHOT resolves.
14. Word-diff: all three README cells and JSON notes are pure appends, so no fact was dropped.
15. master.json is canonical: indent 2, 0 \u escapes, `updated` 2026-10-11, 0 markdown strings. The three additions are exact plain mirrors of the README.
16. The README has 37 table lines, unchanged.
17. SNAPSHOT order: the 19:14 row is on top. Links return HTTP 200: 0304556, b1351d9, public_mint.ag, FINDINGS.md, mints.json, RESULTS.md.
18. Leak check against the live private list (16 names, case-insensitive): 0 hits in the tree and in commit messages.
19. Master scope: KRC-20 and Kasplex are labelled third-party with a pointer to builders, and there is no product status. Dated wording carries Z or CEST. No public action was taken.

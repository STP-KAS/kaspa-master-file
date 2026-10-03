# x402 sighash desk repos challenge, kaspa master challenge pass, 2 Oct 2026

- Branch reviewed: `build/x402-sighash-2026-10-02` (owner: kaspa master prompt build)
- Tip SHA reviewed: `9328c53f24453631616f274fdd6b8c8c549abbde` ("Record x402 #22 against the public STP-KAS x402 repos…", 2026-10-02 08:04:26 +0200)
- Commits on top of main `364b26b`: one (`9328c53`), STP-KAS noreply.
- Merge-base: `364b26b1cd15ee29b129af705f0b3112611c39e5` = `origin/main`.
- Diff read: `git diff 364b26b 9328c53` (README.md +1 row, SNAPSHOT-HISTORY.md +1 row, master.json +1 row).
- Primary sources: `gh api` on elldeeone/kaspa-x402 #22 and tag `v1.0.0-rc.2`; shallow clones of public STP-KAS `x402-vs-grok`, `grok-heavy-test`, `three-x-reviews`, `x402-ishum`, `kaspa-x402`; kaspanet/kccs blob SHAs for `kcc-0001/vectors/conformance.json` at `da834af0` and `411b41bc`. Reads ran 08:28 to 08:32 CEST. **No X tool was called.** Nothing was merged or posted. Nothing was pushed except this challenge branch.

**Counts: HELD 14 · FAILED 2 · UNVERIFIABLE 0**

A branch with an open FAILED item does not merge (PROCESS.md). Neither FAILED is a leak. Both are wording overstatements on the new Now row.

## Branch mechanics

1. HELD. Structure: `git log --format='%H %P' origin/main..origin/build/x402-sighash-2026-10-02` gives `9328c53`←`364b26b`. `git merge-base --is-ancestor origin/main origin/build/x402-sighash-2026-10-02` exits 0 (fast-forward).
2. HELD. master.json @9328c53 is valid JSON. `git diff --numstat 364b26b 9328c53 -- master.json` is 6/0 (one new row). File keeps main's UTF-8 form.
3. HELD. SNAPSHOT-HISTORY.md L11 @9328c53: "| 2026-10-02 08:04 | (this commit) |". Commit time is 08:04:26 +0200. The row claims a `git grep` of public STP-KAS x402 repos and a kccs vectors blob compare; no X coverage claimed.

## elldeeone/kaspa-x402 #22

4. HELD. README L71 / JSON `x402 #22 and desk repos` @9328c53: "Open [#22] head [`06532aad`] (updated 2 Oct 00:34Z, not merged, not on the RC2 peel `724c5fff`)". Evidence: `gh api repos/elldeeone/kaspa-x402/pulls/22` gives state=open, merged=false, draft=false, head `06532aada4506b60668b84127047b88bc9ad4fb6`, `updated_at` 2026-10-02T00:34:24Z. Tag object `35f011d998230369…` peels to `724c5fff22de500fcf729c43b59d25036fbffa9c`. x402 main is still `cb769b171e` (2026-10-01T04:25:57Z).
5. HELD. Same: "deletes the covenants' SIGHASH_ALL-only check `require(byte[1](sig.slice(64, 65)) == byte[1](0x01))`. The signer may pick any of the six consensus sighash types, and the reference signer still defaults to ALL." Evidence: RC2 peel `contracts/kaspa-x402-escrow-v4.sil` @724c5fff has `require(byte[1](serverSig.slice(64, 65)) == byte[1](0x01))` at L50, and the same pattern for `clientSig`/`providerSig` at L104, L106, L139. PR head `contracts/kaspa-x402-escrow-v5.sil` @06532aad has zero matches for that require. New `packages/covenant/src/sighash.ts` @06532aad exports `KaspaSighashType = 0x01 | 0x02 | 0x04 | 0x81 | 0x82 | 0x84`. PR body: "Accept all six consensus-supported sighash types … Reference signing continues to default to `SIGHASH_ALL`." Nuance: the board quote writes `sig.slice`; the source uses the named sig args.
6. FAILED (understated; same theme as sweep item 16). README L71 @9328c53: "It renames template `kaspa-x402-escrow-v4` to `kaspa-x402-escrow-v5` and `kaspa-x402-hash-chain-head-v1` to `kaspa-x402-hash-chain-head-v2`, with a new escrow source SHA-256 (`9f25f3f7…` for `065dff5d…`)." The source SHAs hold: fixture `sourceSha256` on PR head is `9f25f3f788ffb3da2afe1a27517a63c7377978c290b62b81890acc9e97df44c4`; on RC2 peel it is `065dff5d0d02f3a09f56bab977a33d4e047f2ccec64c0d066a318d342797fcb0`. GitHub marks the `.sil`/fixture paths as renamed. But the PR body is stronger than "rename": "Template IDs and compiled scripts change. Existing heads/channels cannot upgrade in place: sweep or settle/refund them, then create new state." and "That proof is pending; published RC2 evidence covers the earlier templates." Fix: "New templates escrow-v5 and hash-chain-head-v2 (new template IDs and scripts; existing heads/channels must be swept or settled, then recreated). Escrow source SHA-256 `9f25f3f7…` replaces `065dff5d…`. Funded TN10 proof pending. Not merged. Not on the RC2 tag." Apply the same sentence in the JSON note.

## Desk STP-KAS repos

7. HELD. Tip SHAs named in the row: x402-vs-grok `405e643f`, grok-heavy-test `e2a02e21`, three-x-reviews `985de50f`, x402-ishum `8a1dc4c0`, fork STP-KAS/kaspa-x402 `168973e5`. Evidence: shallow clone tips `405e643fab49…`, `e2a02e2111a7…`, `985de50f5ff3…`, `8a1dc4c0d876…`, `168973e55bf7…`.
8. HELD. x402-vs-grok and grok-heavy-test pin v4 source SHA-256 `065dff5d…` and say top-up needs SIGHASH_ALL from both parties. Evidence: x402-vs-grok README L44 and docs/GROK-ANALYSE.md L46 ("Top-up: both parties SIGHASH_ALL…"); grok-heavy-test README L116 and docs/01-kaspa-x402.md L161 ("Top-up: both parties SIGHASH_ALL…").
9. HELD. three-x-reviews `985de50f` names template `kaspa-x402-escrow-v4` (02-kaspa-x402.md L43, L93).
10. FAILED. README L71 / JSON note @9328c53: groups x402-ishum with the four that "name template `kaspa-x402-escrow-v4`". Evidence: x402-ishum README L56 is `| Covenant | none | escrow-v4 on batch |` — short form `escrow-v4`, not the full template id. `rg kaspa-x402-escrow-v4` over that tip returns 0 hits. Fix: "three-x-reviews, x402-vs-grok and grok-heavy-test name template `kaspa-x402-escrow-v4`; x402-ishum only says `escrow-v4` (short form) in its comparison table."
11. HELD. "grok-heavy-test `patches/windows-clone-and-test.patch` targets the v4 paths and constants, so it would not apply on #22." Evidence: patch L103 `contracts/kaspa-x402-escrow-v4.sil`, L105 `kaspa-x402-escrow-v4.json`, L129 `templateId: "kaspa-x402-escrow-v4"`. Those paths are renamed/removed on #22.
12. HELD. "The fork [STP-KAS/kaspa-x402] `168973e5` (22 Sep) carries the v4 rule in `contracts/kaspa-x402-escrow-v4.sil` L50, L104, L106 and L139." Evidence: those four lines are the `require(byte[1](…Sig.slice(64, 65)) == byte[1](0x01))` checks (matches RC2 peel line numbers).
13. HELD. "No STP-KAS repo hard-codes `kaspa-x402-hash-chain-head-v1`." Evidence: `rg kaspa-x402-hash-chain-head-v1` over the five cloned tips returns 0 hits. Org code search also returned 0 (may lag; the clones are the check).
14. HELD. "Nothing was changed in those repos." This branch's diff touches only kaspa-master-file files. The five tips above match the SHAs the row names.

## KCC-1 vectors (SNAPSHOT claim)

15. HELD. SNAPSHOT L11: "Diffed `kcc-0001/vectors/conformance.json` between `da834af0` and kccs main `411b41bc`: same blob `c55d6a8d`". Evidence: `gh api …/contents/kcc-0001/vectors/conformance.json?ref=da834af0` and `?ref=411b41bc` both return git blob sha `c55d6a8dbce3c0191af97f1d43ae44a34c5a9df1`.

## Leak scan

16. HELD. `+` lines in `git diff 364b26b 9328c53`: no home-directory or Windows user paths, no emails, no keys, seeds or addresses, no STP-KAS private repo names.

## Conflicts and merge order

- Against main: fast-forward (item 1).
- Against `master/sweep-2026-10-02` @`775ed10`: conflicts in README.md and SNAPSHOT-HISTORY.md (both add near the x402 / history top). master.json merges clean in `git merge-tree` (new row vs sweep's note edits).
- Against `build/2026-10-02` @`247a931`: conflict in SNAPSHOT-HISTORY.md only (both insert top rows). README/master.json merge clean in the trial tree (new row sits next to build's new DOTK/KRC/Wallets rows).
- Recommended order: **sweep first (no open FAILED @775ed10), then build (no open FAILED @247a931 after its recheck), then this branch** after fixing items 6 and 10 and a re-pass. Or fold this row into the build tip before merge so main gets one x402#22 sentence.

## Does this overlap the sweep's x402#22 sentence?

- Yes in topic. Sweep `master/sweep-2026-10-02` already rewrites the existing `x402 bind the tag` / x402 cell with #22 sighash + new-template wording (fixed at f82e7a8 / held at 775ed10). This branch adds a **separate** Now row focused on desk-repo impact. On merge, keep one board voice: either keep this row and shorten the sweep's #22 clause, or drop this row and move the desk-repo grep into the sweep cell / SNAPSHOT.

## Recheck @ c71ce8229dd96e5df3125e7b8f007485f4fed6ac

- Branch reviewed: `build/x402-sighash-2026-10-02` (owner: kaspa master prompt build)
- Tip SHA reviewed (full): `c71ce8229dd96e5df3125e7b8f007485f4fed6ac` ("Merge main 775ed10 into build/x402-sighash-2026-10-02…", 2026-10-02 08:44:13 +0200)
- Parents: `9328c53f24453631616f274fdd6b8c8c549abbde` + `775ed1046b7e0afd44134b235c531560b7f5cebc`
- Merge-base with the tip's second parent: `775ed10`. Net content vs that base: `git diff 775ed10..c71ce82` = README.md +1 Now row, SNAPSHOT-HISTORY.md +2 rows, master.json +1 row.
- Prior tip reviewed: `9328c53` (HELD 14 · FAILED 2 · UNVERIFIABLE 0). This pass checks whether prior FAILED items 6 and 10 are closed, and re-checks the desk row against primary sources.
- Primary sources (read-only, ~17:33–17:35 CEST): `gh api` on elldeeone/kaspa-x402 #22 and fixture JSON at head `06532aad` / RC2 peel `724c5fff`; shallow clones of public STP-KAS `x402-vs-grok`, `grok-heavy-test`, `three-x-reviews`, `x402-ishum`, `kaspa-x402`. **No X tool was called.** No TN10 node/miners/stress. Nothing merged. Push only this challenge branch.

**Counts: HELD 15 · FAILED 0 · UNVERIFIABLE 0**

**Prior FAILED 6: CLOSED. Prior FAILED 10: CLOSED.** No open FAILED. Neither prior FAILED was a leak; no new leak. Content is clear of open FAILED. Separately, `origin/main` has moved to `9f5d3ca` (10 commits ahead of `775ed10`); `git merge-tree` of tip into current main conflicts in README.md, SNAPSHOT-HISTORY.md, and master.json — the content branch needs a further merge of main before it is mergeable. That is branch mechanics, not a content FAILED.

### Branch mechanics

1. HELD. Tip `c71ce82` parents are `9328c53` and `775ed10`. Commit identity STP-KAS noreply. Message matches the claimed fix (desk row points to the x402 row; x402-ishum quoted as `escrow-v4`).
2. HELD. master.json @c71ce82 is valid JSON. `git diff --numstat 775ed10 c71ce82 -- master.json` is 6/0 (one new row).
3. HELD. SNAPSHOT-HISTORY.md L11 @c71ce82: "| 2026-10-02 08:44 | (this commit) |". Commit time is 08:44:13 +0200. Row correctly names merge of main `775ed10`, prior challenge file, and the two wording fixes. No X coverage claimed.

### Prior FAILED 6 (understated #22 as rename) — CLOSED

4. HELD (closes prior FAILED 6). README L71 / JSON `x402 #22 and desk repos` @c71ce82 no longer restates #22 as a rename. Quote: "What open [#22] (head [`06532aad`]; new templates and the rest are in the x402 row)". JSON points to "the x402 bind the tag row" (same cell as README's `x402` row).
5. HELD (pointer target). On this tip, README L76 `x402` (inherited from `775ed10`, still present on `origin/main` L78) says: "It adds new templates, escrow-v5 and hash-chain-head-v2: template IDs and compiled scripts change, and existing heads and channels cannot upgrade in place … funded Testnet-10 proof against the final reviewed commit is still pending". master.json `x402 bind the tag` note contains the same escrow-v5 / hash-chain-head-v2 / cannot upgrade in place / pending sentences. Matches PR #22 body Compatibility + Validation ("That proof is pending…").

### Prior FAILED 10 (x402-ishum full template id) — CLOSED

6. HELD (closes prior FAILED 10). README L71 / JSON note @c71ce82: "x402-vs-grok … grok-heavy-test … and three-x-reviews … name template `kaspa-x402-escrow-v4`. [x402-ishum] … only says `escrow-v4` (short form) in its comparison table." Evidence: shallow tip `8a1dc4c0d876…`; README L56 `| Covenant | none | escrow-v4 on batch |`; `rg kaspa-x402-escrow-v4` over that tip returns 0 hits.

### elldeeone/kaspa-x402 #22 and desk repos (re-verify)

7. HELD. #22 still open, not merged, head `06532aada4506b60668b84127047b88bc9ad4fb6`, `updated_at` 2026-10-02T00:34:24Z (`gh api repos/elldeeone/kaspa-x402/pulls/22`). Contracts on that head include `kaspa-x402-escrow-v5.sil` and `kaspa-x402-hash-chain-head-v2.sil`. Fixture `contracts/fixtures/kaspa-x402-escrow-v5.json` `sourceSha256` = `9f25f3f788ffb3da…`; RC2 peel fixture v4 = `065dff5d0d02f3a0…` (matches the desk row's short pins).
8. HELD. Desk tip SHAs: x402-vs-grok `405e643fab49…`, grok-heavy-test `e2a02e2111a7…`, three-x-reviews `985de50f5ff3…`, x402-ishum `8a1dc4c0d876…`, fork STP-KAS/kaspa-x402 `168973e55bf7…` (22 Sep). Match the row prefixes.
9. HELD. Three repos name full template `kaspa-x402-escrow-v4` (x402-vs-grok README/docs; grok-heavy-test README/docs; three-x-reviews `02-kaspa-x402.md` L43, L93).
10. HELD. x402-vs-grok and grok-heavy-test pin v4 source SHA-256 `065dff5d…` and say top-up needs SIGHASH_ALL from both parties (x402-vs-grok README L44 / GROK-ANALYSE L46; grok-heavy-test README L116 / `01-kaspa-x402.md` L161).
11. HELD. grok-heavy-test `patches/windows-clone-and-test.patch` L103/L105/L129 still target v4 paths and `templateId: "kaspa-x402-escrow-v4"`.
12. HELD. Fork `168973e5` `contracts/kaspa-x402-escrow-v4.sil` L50, L104, L106, L139 are the `require(byte[1](…Sig.slice(64, 65)) == byte[1](0x01))` SIGHASH_ALL checks.
13. HELD. `rg kaspa-x402-hash-chain-head-v1` over the five cloned tips returns 0 hits. This tip's diff touches only kaspa-master-file files ("Nothing was changed in those repos").

### Leak scan

14. HELD. `+` lines in `git diff 775ed10..c71ce82`: no real names, emails, home paths, seeds, keys, reserve addresses, or private repo names. stp first name in Windows paths: none present.

### Mergeability vs current origin/main

15. HELD as a mechanics fact (not a content FAILED). Tip is **not** an ancestor of / does not contain `origin/main` `9f5d3ca2f5c41b480e47ffb5c60a9adb8209966d` (`merge-base --is-ancestor origin/main c71ce82` exits 1; ahead/behind main...tip = 10 2). `git merge-tree` against current main reports conflicts in README.md, SNAPSHOT-HISTORY.md, and master.json. Owner must merge current main into `build/x402-sighash-2026-10-02` (or rebase carefully without force-push of rewritten public history) before kaspa master bot can merge. The #22 desk-repo wording itself held on this tip.

## Recheck @ 68c22ac

- **Reviewed tip:** `68c22acd0cb077c9489d245e99151825e7bfb51e` ("Merge main 99ae962 into build/x402-sighash-2026-10-02. No row text changed…", 3 Oct 08:01:28 CEST). The author and committer are the STP-KAS noreply.
- **Held content:** `c71ce82` (rechecked at `cea4b1c`: HELD 15 · FAILED 0).
- **Main:** `99ae9620dd580ff0630cd720f83a0e78de616f4e`, unchanged after `git fetch --prune` at about 08:05 CEST.
- **Totals: 13 HELD · 0 FAILED · 0 UNVERIFIABLE.** No open FAILED items. The only open item is merge order; see 12–13 and the note under them.

1. **HELD: normal merge.** `68c22ac` has two parents: `c71ce8229dd9…` (first) and `99ae962` (second). There was no force-push: the earlier tip `c71ce82` is an ancestor of the new tip.
2. **HELD: main is an ancestor.** `merge-base --is-ancestor origin/main 68c22ac` succeeds, so the branch now fast-forwards on main as it stands.
3. **HELD: "against main the diff is +10 lines in 3 files".** `git diff --numstat 99ae962 68c22ac` gives README.md +1/−0, SNAPSHOT-HISTORY.md +3/−0 and master.json +6/−0.
4. **HELD: every main line is byte-identical.**
   - The diff against main has zero `−` lines, so no main line was removed or changed. That includes the 2 Oct rows main changed (dotk-indexer, argent#66).
   - Main's Argent row moves from README L71 to L72. `diff` of that row (main vs `68c22ac`) prints nothing: byte-identical.
5. **HELD: README L71 conflict resolution.** The branch's own row "| x402 #22 and desk repos | What open [#22]…" is at L71, directly above main's "| Argent | Master [`b312deda`]…" at L72. Both are kept whole.
6. **HELD: own content still equals `c71ce82`.**
   - The added lines between merge-base `775ed10` and `c71ce82` are a subset of the added lines between `99ae962` and `68c22ac`. The README row is identical. All 6 master.json lines (the `x402 #22 and desk repos` object) are identical. The SNAPSHOT 08:04 row (`9328c53`) is identical.
   - The one exception is the 08:44 row: replacing "(this commit)" with "[`c71ce82`](https://github.com/STP-KAS/kaspa-master-file/commit/c71ce82)" in the `c71ce82` text gives the `68c22ac` row exactly (Python equality True). That matches the owner's "its 08:44 row now linking c71ce82".
7. **HELD: SNAPSHOT order.** The top rows are L11 2026-10-03 08:01, then L12 2026-10-02 19:49 (main), L13 08:49 (main), L14 08:44 (`c71ce82`), L15 08:43, L16 08:11, L17 08:04 (`9328c53`), L18 08:00. That is newest first.
8. **HELD: the new row.** L11 reads "| 2026-10-03 08:01 | (this commit) | Merged main `99ae962` into `build/x402-sighash-2026-10-02` (normal merge, no force-push) after kaspa master challenge's recheck at `cea4b1c` (HELD 15, FAILED 0). Kept main's text and this branch's x402 #22 and desk repos row; no row text changed…".
   - The stamp matches the commit time (08:01:28). The `cea4b1c` totals match this note's "Recheck @ c71ce82" ("HELD 15 · FAILED 0 · UNVERIFIABLE 0").
9. **HELD: "no row text changed".** Apart from the link swap in item 6 (a SNAPSHOT commit cell, not row text) and the new merge row, no line differs from `c71ce82` or from main.
10. **HELD: master.json.** The file decodes as UTF-8. `(json.dumps(d, indent=2, ensure_ascii=False)+"\n").encode()` equals the raw bytes exactly. It has 0 `\u` escapes, and `updated` stays "2026-10-02", the same as main; no new facts were added.
11. **HELD: leaks.** The `+` lines of `99ae962..68c22ac` contain no personal emails, no `/home/` paths, no keys, seeds or addresses, no private stall-repo name and no private desk repo names. The STP-KAS x402 repos named in the row are public (see items 8 and 14 above).
12. **HELD (mechanics): vs `master/sweep-2026-10-03` @ `74b1c60`.**
    - `git merge-tree --write-tree` in both orders gives rc=1 with a **conflict in SNAPSHOT-HISTORY.md only**. README.md and master.json auto-merge.
    - Cause: both branches insert a row at L11.
13. **HELD (mechanics): vs `build/2026-10-03` @ `8f44d04`.** Both orders give rc=1 with a **conflict in SNAPSHOT-HISTORY.md only**, for the same reason.

**Merge order:** all three branches now fast-forward on main `99ae962`. Whichever lands first fast-forwards; **each of the other two then needs a normal main merge**, resolving SNAPSHOT-HISTORY.md only. Keep all rows newest first: x402 `2026-10-03 08:01`, then build `2026-10-03 07:57`, then sweep `2026-10-03 07:49`, then main's 2 Oct rows.

**Advisory (not counted):** the stray commit `0c72511` (on `build/2026-10-02` and `build/api-tn10-2026-10-02`, not on main) edits the Argent row. A merge-tree of this branch with `0c72511` conflicts in README.md and SNAPSHOT-HISTORY.md. If `0c72511` is ever adopted, it will need a hand-resolved Argent row (L71/L72).

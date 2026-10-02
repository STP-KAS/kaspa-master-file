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

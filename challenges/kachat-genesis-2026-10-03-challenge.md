# Challenge: build/kachat-genesis-2026-10-03

- **Tip reviewed:** `b8256bc6bf13bfa3d7760eb6ac141b069a3c90d4`, the merge "Merge origin/main 5989892 into build/kachat-genesis-2026-10-03: keep only the KaChat .kachat names row and the other-note pointer; withdraw the 3 Oct api-tn10 cell…" (08:53:22 CEST). Re-fetched at 08:56 CEST; it was unchanged.
- **Shape:** a normal two-parent merge. Parents are `c68fab10f39b249c38e5f21fab7b3deda8a74c89` (3 Oct 08:07:39) and main `59898920043b6a1282f98c335897961bcf3a1abe`. Both commits have STP-KAS noreply as author and committer. **origin/main is an ancestor**, so the branch fast-forwards on `5989892`. No main merge is needed now.
- **Diff vs main:** README.md +1 (L76), master.json +7/−1 (now row L143–L148 inserted; `other` KaChat note L1365 replaced), SNAPSHOT-HISTORY.md +2 (L11 the 08:53 row, L20 the 08:07 row).
- **Totals: 19 HELD · 0 FAILED · 0 UNVERIFIABLE.** Advisory items at the end are not counted.
- **Sources:**
  - **Synced node:** chain data was checked on the desk node n0 (kaspad 2.1.0, `isSynced` true, virtual DAA 587,640,229 at about 08:55 CEST) with read-only wRPC `getServerInfo`, `getBlockDagInfo` and `getBlock`. No TN10 process was touched.
  - **api-tn10:** used only as a pointer (block and tx hashes) and as a cross-check. No claim below rests on api-tn10 alone.
  - **Code:** GitHub raw files at the pinned commits. The owner's results `grok-build-results-2026-10-03.md` and raw `scratch/build-2026-10-03/` were treated as evidence only. The raw `kachat-genesis.json` equals today's api-tn10 answer, and `kachat-manifest-6b6cacee.json` is byte-equal to the GitHub file.
- Abbreviations: R = README.md, J = master.json, S = SNAPSHOT-HISTORY.md, all at `b8256bc`.

## HELD (19)

**Branch form**
1. HELD: merge shape, ancestry and identity. `git log --format='%H %P %an <%ae> | %cn <%ce>' origin/main..b8256bc` shows the two commits above, all `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. `git merge-base --is-ancestor origin/main b8256bc` → true. `c68fab1` is unchanged as the first parent (no rebase).
2. HELD: every non-added line is byte-identical to main. A line diff (`difflib`, no autojunk) of main vs tip gives only: R insert at L76; S inserts at L11 and L20; J insert of 6 lines at L143 and one replaced line at L1365. In particular, the TN10 public API cell is byte-identical to main in R (row string equality; it carries main's "Recheck 4 Oct 08:02:37 …") and in J (the `now`/"TN10 public API" object is equal).
3. HELD: J form. `updated` is "2026-10-04" (main's). The file is byte-identical to `json.dumps(obj, indent=2, ensure_ascii=False)+"\n"`, has 0 `\u` escapes, and has 348 rows (main has 347; +1 is the new now row).
4. HELD: placement. R L75 is "DOTK .k names" and R L76 is "KaChat .kachat names", followed by L77 "KRC-20 incident". In J the new row sits in section `now` right after "DOTK .k names", with chip `catalog`.
5. HELD: "No new facts" (S L11). The R L76 row and the J `now` KaChat object are byte-identical to `c68fab1`'s versions.

**KaChat claims (R L76, J L147)**
6. HELD: "[vsmirn0v/KaChat] [`6b6cacee`] (2 Oct 18:16Z) bundles the Testnet-10 registry v2 manifest [kachat-names-testnet-10.json]". Evidence: commit `6b6cacee17` dated 2026-10-02T18:16:12Z touches `KaChat/Resources/kachat-names-testnet-10.json`. Manifest `name` kachat-names, `network` testnet-10. The repo license is MIT (J `other` note).
7. HELD: "compiler [SilverScript v1.0.0] `3ed97333`". The manifest has `compiler.tag` v1.0.0 and `compiler.commit` `3ed973335b59…`. `git ls-remote https://github.com/kaspanet/silverscript refs/tags/v1.0.0` → `3ed973335b`.
8. HELD: the genesis tx on the synced node. "Covenant id from genesis [`e20325f7…a426`] input `7f9e294b…3b43:0` and output 0". Evidence: n0 `getBlock f41f9f7b66c875cd…` (includeTransactions):
   - The block has `isChainBlock` true, `isHeaderOnly` false, and timestamp 1790964892845 (2 Oct 18:14:52.845Z, matching the `other` note's "block time 2 Oct 18:14:52Z").
   - It contains tx `e20325f70db06192b619e6ef161b45b4a24b3cde58b5d2b0188532395175a426` (node-computed `transactionId`; version 1).
   - Its single input is `7f9e294b0f9df112f7dadfcce9bb899b37571eb7c4669ecce5446a9f16eb3b43:0`.
   - Output 0 is value 100000000, `scriptPublicKey` `0000aa206bde285a…943c6b5887` (version 0), covenant `{authorizingInput: 0, covenantId: 82f4315c8f7b3e0e76fc2f77466fe7651d2c1fac4e0b5810d4da878a9cfa0f89}`.
   - Output 1 is a plain P2PK change output with no covenant.
   - Chain block `03c2a948…` lists `f41f9f7b…` in `mergeSetBluesHashes`.
   api-tn10 returns the same fields, with `accepting_block_hash` `03c2a948…`.
9. HELD: the independent covenant id recompute gives "`82f4315c…0f89`, match". I used the same method as for DOTK `ee2128c0…` on 3 Oct, in Python from `covenant_id.rs` at `01b532e8`. It is blake2b-256 keyed `b"CovenantID"` over: outpoint txid (32 bytes) ‖ u32le index 0 ‖ u64le count 1 ‖ [u32le 0 ‖ u64le 100000000 ‖ u16le spk version 0 ‖ u64le len 34 ‖ script `aa20…87`]. Output: `82f4315c8f7b3e0e76fc2f77466fe7651d2c1fac4e0b5810d4da878a9cfa0f89`. This equals the node's binding and the manifest's `registryCovenantId`.
10. HELD: the pins in the citation. `git ls-remote https://github.com/kaspanet/rusty-kaspa refs/tags/v2.1.0` → `01b532e8b5`. `crypto/hashes/src/hashers.rs` L32 at `01b532e8` reads `struct CovenantID => b"CovenantID",` (inside `blake2b_hasher!`). `consensus/core/src/hashing/covenant_id.rs` at `01b532e8` has `covenant_id(outpoint, auth_outputs)` as described.
11. HELD: the three template hashes, "Gap `182c463c…dd46`, Name `e8ded947…9d16` and Offer `ef0b5ba6…6d6e` … (blake3 over length-prefixed prefix and suffix): match". The cited [codec L376–L383] is exactly `templateHash(prefix:suffix:)`: `blake3(num8(|prefix|) ‖ prefix ‖ num8(|suffix|) ‖ suffix)`. I checked it independently against SilverScript `silverscript-lang/src/template.rs` at `3ed97333`: `serialize_i64(len, Some(8))`, blake3. My implementation passes that file's golden test (`template_hash(&[], &[])` = `e572dff8…6aac1e`). The recomputed hashes are KachatGap `182c463cf59f6d175f75339e4efc75d2065e8e7bb8dcc515e4769d3ff805dd46`, KachatName `e8ded947687947b565e10cbf6e6fec60e5c90cf992c7bce2298e6dce8db29d16` and KachatOffer `ef0b5ba649d8e0e100b2d9b3856dd41be47ef49937bda9b2e822a5fad7466d6e`. All equal the manifest `templateHash` fields, and prefixLen + state len + suffixLen = bytecodeLen for each.
12. HELD: "Genesis output 0 P2SH is the Gap template with the manifest's initial state (`lo` zero, `hi` all `ff`): match". The manifest `stateScript` is `0x20 ‖ 32×00 ‖ 0x20 ‖ 32×ff` (`lo`/`hi` as stated). The redeem script is Gap `prefixHex ‖ stateScript ‖ suffixHex` (4014 bytes; its sha256 equals the manifest `bytecodeSha256`). Then `aa20 ‖ blake2b-256(redeem) ‖ 87` = `aa206bde285ac5d3920dc826b0ec5f2026469bfdbb422b5550b17d8d212f943c6b5887`, which is the script of node output 0 (version 0). So output 0 is P2SH (`OP_BLAKE2B <32> OP_EQUAL`).
13. HELD: the spend. "api-tn10 shows output 0 spent by [`60ebe61c…a167`] at 2 Oct 20:39:17 CEST. That is API data, not node proof." This is true as written, and the node now confirms it. n0 `getBlock f3729ac1c05d647e…`: chain block, timestamp 1790966357024 (2 Oct 18:39:17.024Z = 20:39:17 CEST). It contains tx `60ebe61c6984ee6d8b0cddee56493c261a6e252480b21bf7cf26f7740cd2a167`, whose input 0 is `e20325f7…a426:0`. Its outputs 0–2 are three 1 KAS P2SH outputs bound to `82f4315c…`, and output 3 is change. Chain block `542f6f62…` lists `f3729ac1…` in `mergeSetBluesHashes`; api-tn10 gives the same as `accepting_block_hash`. Source used: the desk node n0 (synced), with api-tn10 only as a pointer. See advisory A2.
14. HELD: the scope wording. "The recompute checks the manifest against itself and the chain; it is not a source audit. Third-party app. Not KNS. Catalog." This is accurate: the contracts repo is not public (J `other`: "kachat-domains, which is not public").
15. HELD (owner's WARN judged): "registry covenant `82f4315c…0f89`" reads clearly as a covenant id, not a commit. It is labelled "registry covenant", backticked, and elided with "…" plus the last four hex digits, and the same form appears in the `other` note. The factcheck hash WARN is a false positive. See advisory A1 for adding the full id once.

**`other` pointer (J L1365)**
16. HELD: the `other` KaChat note is main's note byte for byte (`startswith` → true; the other fields are equal) plus exactly " Desk recompute of the covenant id and template hashes (3 Oct): see the now row KaChat .kachat names." The pointer resolves: section `now` has a row named exactly "KaChat .kachat names".

**SNAPSHOT (S L11, L20)**
17. HELD: the 08:53 withdrawal row is accurate. Each statement checks out:
    - "normal merge, no rebase, no force-push": two parents, and `c68fab1` is intact.
    - "the TN10 public API cell in README and master.json is main's text byte for byte": HELD 2.
    - "main now carries the 4 Oct api-tn10 recheck from `build/2026-10-04`": main R L51 has "Recheck 4 Oct 08:02:37 to 08:03:26 CEST".
    - "Kept from the 08:07 row: the Now row … and its master.json mirror": HELD 5.
    - "`other` KaChat note keeps main's wording and adds a pointer": HELD 16.
    - "`updated` stays main's 2026-10-04" and "UTF-8 with indent 2": HELD 3.
    The time 08:53 matches the commit (08:53:22 CEST). It is newest first: S L11 08:53 sits above main's L12 "2026-10-04 08:21".
18. HELD: the 3 Oct 08:07 row is unchanged. S L20 is byte-identical to the `2026-10-03 08:07` row in `c68fab1`. It sits between L19 "2026-10-03 08:12" and L21 "2026-10-03 08:01". The tip has 9 out-of-order date pairs overall, the same 9 that main has, so no new ordering faults.
19. HELD: no leaks. The `+` lines contain no emails, home paths, keys, seeds, reserve addresses, STP-KAS repo links, or the private stall-repo name. "vsmirn0v" is the public GitHub owner. The deployer address in the manifest is not copied into the master.

## Advisory (not counted)

- **A1.** Give the full covenant id once, in the R L76 / J now row, for example "registry covenant id `82f4315c8f7b3e0e76fc2f77466fe7651d2c1fac4e0b5810d4da878a9cfa0f89`". Today the full value appears nowhere on the branch, so a reader cannot check the elided form without the manifest.
- **A2.** The spend and genesis are now node-confirmed. Optionally replace "That is API data, not node proof." with "Confirmed read-only on the desk node n0 on 4 Oct: genesis in chain block `f41f9f7b` (accepted by `03c2a948`), spend in chain block `f3729ac1` (accepted by `542f6f62`)." Not required: the current wording is true.
- **A3.** Both S rows on the branch say "(this commit)". After a merge to main, the 08:07 row means `c68fab1` and the 08:53 row means `b8256bc`. A later link commit should replace them with SHAs. The 08:07 row itself must stay unchanged until then.
- **A4. Unusual:** n0 still serves full bodies (`isHeaderOnly` false) for the 2 Oct blocks `f41f9f7b` (blue score 574,797,649) and `f3729ac1`, even though its current pruning point `623dfc10…` is at blue score 574,992,001 and n0 was resynced from scratch on 3 Oct. This did not affect the checks: the node computes the tx ids, and the bodies match api-tn10. It is worth a word from TN10 ops on n0's retention.
- **A5. Merge order:** this branch and `build/rust-checks-2026-10-04` both insert top rows in SNAPSHOT-HISTORY.md. Whichever merges second needs a main merge and a recheck.

## Addendum @ b8256bc (4 Oct, found while reviewing `build/rust-checks-2026-10-04`)

Totals and the tip are unchanged (19 HELD · 0 FAILED · 0 UNVERIFIABLE @ `b8256bc`). This corrects the scope of A5 only.

- **A5 (corrected scope).** `git merge-tree --write-tree origin/build/rust-checks-2026-10-04 origin/build/kachat-genesis-2026-10-03` (353e9ad vs b8256bc) gives two conflicts, not one: SNAPSHOT-HISTORY.md (both add a top row) and README.md (rust-checks appends a sentence to the DOTK row at L75, right above this branch's new KaChat row at L76). master.json merges cleanly. To resolve: keep both SNAPSHOT rows, newest first. In README, keep the rust-checks L75 DOTK row and then this branch's L76 KaChat row, both unchanged. Whichever branch merges second still needs a main merge and a recheck.

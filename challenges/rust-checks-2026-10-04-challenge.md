# Challenge: build/rust-checks-2026-10-04

- **Reviewed tip:** `353e9add75bd2accff67275806b02ab847a4d925` (one commit on main `59898920043b6a1282f98c335897961bcf3a1abe`)
- **Totals:** 29 HELD · 0 FAILED · 1 UNVERIFIABLE (non-blocking)
- **Verdict:** no open FAILED item, so this does not block merge under PROCESS.md. See the merge-order note at the end: this branch conflicts with `build/kachat-genesis-2026-10-03` in README.md and SNAPSHOT-HISTORY.md.
- **Reviewer:** challenge desk, 4 Oct 2026, about 08:56–09:20 CEST.

**How I checked:**
- **Upstream code.** I read upstream at the exact commits, using read-only shallow clones under `/workspace/scratch`: Manyfestation/kcc20-reference `5b2a2312`, supertypo/dotk-core `02d2b3f2` and `7ea661e2`, kaspanet/vprogs `055ae28a`, kaspanet/rusty-kaspa `eb0a856d`. The clones stayed clean (0 dirty files).
- **Test reruns.** I reran the cheap tests myself with `nice -n 19 cargo +1.98.1 test --locked -j 2` under a 31G disk guard:
  - kcc20 at `5b2a2312`
  - dotk-core at `02d2b3f2`
  - dotk-core at `7ea661e2`

  The lowest free disk during the runs was 36G. I deleted the target dirs afterwards.
- **Log-based items.** I did not rerun the heavier vprogs tests. Those lines are marked **log-based**: I cross-checked them against the owner's guard logs (rust 1.98.1, `--locked`, rc=0).

**Key:** R = README.md, S = SNAPSHOT-HISTORY.md, J = master.json, all at `353e9ad` unless stated otherwise.

## Branch shape

- **S1 HELD.** Main is an ancestor, and the branch adds exactly one commit. Evidence: `git merge-base --is-ancestor origin/main 353e9ad` gives true, and `git rev-list --count origin/main..353e9ad` gives 1. The numstat is R 3/3, S +1, J 3/3.
- **S2 HELD.** The identity is noreply only. The author and committer are both `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`, at 2026-10-04 08:55:40 +0200.
- **S3 HELD.** Pure insertions:
  - `git diff --word-diff=porcelain origin/main 353e9ad` has 0 removed (`-`) tokens.
  - A character-level diff gives `insert` opcodes only on R L62, L67 and L75 and on J L81, L105 and L141, which are the `now` rows "KCC20 reference", "vprogs stack 21 Sep morning" and "DOTK .k names".
  - S gains one line (L11), and all its other lines are byte-identical. Every other R line is byte-identical (110 = 110 lines).
- **S4 HELD (claim 4).** master.json decodes as UTF-8. It equals `json.dumps(d, indent=2, ensure_ascii=False)` plus a trailing newline and has 0 `\u` escapes. Its keys and lengths are unchanged versus main, `updated` stays `2026-10-04`, and only those three `note` strings change.
- **S5 HELD (claim 4).** The three J notes mirror R. After markdown links are stripped, the inserted R text and the inserted J text match token for token, and every number is identical. The only differences are link labels (`L203`, `L264`, `Cargo.lock`) that J gives as bare URLs, plus punctuation.
- **S6 HELD (claim 5).** S L11 is `| 2026-10-04 08:55 | (this commit) | Build pass, 4 Oct tasks 2–4 …`. That matches the commit time of 08:55:40 CEST. It sits directly above main's top row, L12 `| 2026-10-04 08:21 | [b4fc8af]…`, so the order is newest first.
- **S7 HELD.** No leaks:
  - The inserted text alone (not whole lines) has 0 matches for home paths, `/workspace`, `~/` or e-mail addresses.
  - It contains no private repo names. The only repos it links are Manyfestation/kcc20-reference, kaspanet/vprogs, kaspanet/rusty-kaspa and supertypo/dotk-core. All four are public (`gh api repos/<r> --jq .private` gives `false`).

## KCC20 (claim 1, R L62 and J L81)

- **K1 HELD (rerun).** Quote: "`cargo +1.98.1 test` on Manyfestation/kcc20-reference `5b2a2312` … 47 passed, 0 failed, including all 10 public-mint tests".
  - My rerun at `5b2a23124ef43730eca4f69248bc2866daf2c24c` gave `test result: ok. 47 passed; 0 failed`, rc=0 (09:05:57 CEST).
  - 10 lines match `test public_mint::tests::… ok`, and `src/bin/kcc20/public_mint/tests.rs` has 10 `#[test]`.
  - The owner's log `task2-kcc20-test.log` L752 gives the same result.
- **K2 HELD.** tests.rs L166–186 at `5b2a2312` is the whole test, from L166 `#[test]` and L167 `fn public_mint_requires_configured_extension_commitment()` to its closing brace at L186.
  - For each of `[0u8;32]`, `[1u8;32]` and `[0xffu8;32]`, the matching commitment mints (L174). The test then sets `different[31] ^= 1` (L177) and asserts `rejects(mint_case_with_extension(…))` (L179).
  - "one bit" is exact.
- **K3 HELD.** `contracts/public_mint.ag` L20 at `5b2a2312` reads: `require(recipient_state.extension_commitment == extension_commitment);`
- **K4 HELD.** The PR head was re-read on 4 Oct at about 09:00 CEST with `gh api repos/argent-lang/kcc20-reference/pulls/1`. It gave `state: open`, `merged: false`, `head.sha 5b2a23124ef43730eca4f69248bc2866daf2c24c`, `head.repo Manyfestation/kcc20-reference`, `head.ref finalize-kcc20-reference`, and updated 2 Oct 13:45:06Z (15:45:06 CEST).
  - Main already pins it: R L62 says "head [`5b2a2312`]", and J L81 says "head 5b2a23124ef43730eca4f69248bc2866daf2c24c (2 Oct 13:45Z)".
  - The S row's "Main already pins head `5b2a2312` … ref `finalize-kcc20-reference`; no pin change" is accurate.
- **K5 HELD.** `60064687` appears only as history:
  - R: 0 matches on both main and the branch.
  - J: once, in L81 "Earlier head 60064687 (27 Sep 19:41Z)".
  - S: 4 older rows.
  - The counts are identical on main and the branch, and none of the inserted text mentions it.
- **K6 HELD.** Nothing is sourced from `build/kcc-last-call-2026-10-02`. Its tip `3eb1bb98` is not an ancestor of `353e9ad` (`merge-base --is-ancestor` gives false). The inserted R/J text cites only `5b2a2312` URLs, and the S row says "Not used as evidence: `build/kcc-last-call-2026-10-02`".

## DOTK (claim 2, R L75 and J L141)

- **D1 HELD.** At `02d2b3f283a4a01156c61dcd4e2c580c6302bce7`, `src/vm.rs` L102 is `fn the_compute_budget_limits_the_script() {`, its `#[test]` is at L101 and the test closes at L114, so L102–L114 is exact. At L111: `assert!(why.contains("ExceededCommittedScriptUnits"), "{why}");`
- **D2 HELD.** At `7ea661e2a4cbdeb164b12c039d2d0d8669c716d3`, `src/vm.rs` L103 is `fn the_compute_budget_limits_the_script() {`, its `#[test]` is at L102 and the test closes at L112, so L103–L112 is exact. At L109: `assert!(why.contains("used: 10000, limit: 9999"), "{why}");`
- **D3 HELD (rerun).** "`the_compute_budget_limits_the_script` and the full suite (71 passed, 0 failed) pass at both". My reruns:
  - `7ea661e2`: `the_compute_budget_limits_the_script ... ok`, `71 passed; 0 failed`, rc=0.
  - `02d2b3f2`: the same, rc=0.
  - Both used `--locked -j 2`, 09:05–09:10 CEST.
- **D4 HELD.** "Only `7ea661e2` asserts the exact charge". `used: 10000` occurs 0 times in `02d2b3f2:src/vm.rs` and once (L109) at `7ea661e2`. See advisory A1 on how the asserted string is quoted.
- **D5 HELD.** Script sizes and the tag:
  - At `7ea661e2`: `[OpTrue, OpDrop].repeat(67)` plus `OpTrue` gives 135 bytes ("135-byte spk").
  - At `02d2b3f2`: 500 × 2 + 1 gives 1001 bytes ("1001-byte script").
  - The doc comment at `7ea661e2` L100 says "100 units for each spk byte over 35", so (135−35)×100 = 10,000 and (1001−35)×100 = 96,600.
  - Tag `v0.13.1` is tag object `9c81aff3`, which peels to `02d2b3f283a4a01156c61dcd4e2c580c6302bce7` (`gh api …/git/tags/9c81aff3…`), so "At v0.13.1" = `02d2b3f2`.
- **D6 HELD (log-based).** "its message there is `used: 96600, limit: 9999` (read with a temporary print line, since reverted)".
  - `task3-dotk-02d2b3f2-why.log` shows `ExceededCommittedScriptUnits { used: 96600, limit: 9999 }`, and `task3-dotk-7ea661e2-why.log` shows `{ used: 10000, limit: 9999 }`.
  - Both values match the D5 arithmetic.
  - The owner's clones are gone, and my rerun clones of the same commits are clean, so no patched code feeds any claim.

## vProgs (claim 3, R L67 and J L105)

- **V1 HELD (log-based).** "`cargo test -p vprogs-l1-wallet` 41 passed, 0 failed, including both mass-cap tests". In `task4-vprogs-l1-wallet.log` (rust 1.98.1, `--locked`, rc=0, 08:39–08:41 CEST):
  - `test result: ok. 41 passed; 0 failed`
  - `settlement_funding_errors_when_fee_inputs_push_the_layout_past_the_mass_cap ... ok`
  - `settlement_funding_uses_the_deepest_prefix_that_fits_the_mass_cap ... ok`

  I did not rerun it: it is a heavy build on a shared box.
- **V2 HELD.** At `055ae28ad75b15ae9354944c8d494d989503b103`, `l1/wallet/src/build/settlement.rs` L203 is `fn settlement_funding_errors_when_fee_inputs_push_the_layout_past_the_mass_cap() {`, and L264 is `fn settlement_funding_uses_the_deepest_prefix_that_fits_the_mass_cap() {`.
- **V3 HELD (log-based).** "`reorg_boundary_compaction` 3 passed". `task4-vprogs-aggregate2.log` shows `Running tests/reorg_boundary_compaction.rs` and then `test result: ok. 3 passed; 0 failed`, rc=0 (08:44–08:51 CEST).
  - The two earlier attempts ended with rc=101 (`aggregate-try1.log`, `aggregate.log`), before the build deps were installed. The text says so: "the box first needed libclang, make and g++".
  - The file exists at `zk/aggregate-prover/tests/reorg_boundary_compaction.rs` @ `055ae28a`.
- **V4 HELD.** vprogs pins rusty-kaspa `eb0a856d`. At `055ae28a`:
  - `Cargo.lock` L3585: `source = "git+https://github.com/kaspanet/rusty-kaspa?rev=eb0a856d4e1ef9d884c5997bc43408091f5a5632#eb0a856d…"` (kaspa-consensus-core)
  - `Cargo.toml` L132: "pinned to `kaspanet/rusty-kaspa` master (v2.0.x) rev eb0a856d"
- **V5 HELD.** "compute 500,000 and transient 1,000,000 ([params.rs L683], the TN10 params)". At `eb0a856d`:
  - `consensus/core/src/config/params.rs` L683 reads: `block_mass_limits: BlockMassLimits { compute: 500_000, storage: 500_000, transient: 1_000_000 },`
  - That line is inside `pub const TESTNET_PARAMS` (L651–L705).
  - L572 is `Some(10) => TESTNET_PARAMS`, so these are the TN10 params. See advisory A3 on "per-tx".
- **V6 HELD.** "4 transient grams per byte". At `eb0a856d`, `consensus/core/src/constants.rs` L31 is `pub const TRANSIENT_BYTE_TO_MASS_FACTOR: u64 = 4;`
- **V7 HELD (log-based).** "A signed P2PK fee input measured +1,120 compute and +480 transient". `task4-vprogs-local-instrument.log` (witness 248000) shows:
  - n=0: compute 259,429, transient 993,356
  - n=1: compute 260,549, transient 993,836 (+1,120 / +480)
  - n=37: compute 300,869 = 260,549 + 36×1,120
  - The witness=224000 series shows the same steps.
  - It also prints `LOCAL limits compute=500000 transient=1000000`.
  - The +480 transient equals 120 bytes × 4, which is consistent with V6.
- **V8 HELD (inference, correctly worded).** "#169's 1,120 per input and 500,000 cap are compute mass".
  - The PR #169 body (re-read 4 Oct via `gh api repos/kaspanet/vprogs/pulls/169`) says: "37 small UTXOs; mass = fixed ~474.7k covenant witness + 1,120 per fee input) exceeded the per-tx mass cap (516,168 > 500,000)".
  - 1,120 is the measured compute step (the transient step is 480). 500,000 is the compute limit (transient is 1,000,000).
- **V9 HELD.** The arithmetic and the "derived" label:
  - 516,168 − 37×1,120 = 474,728
  - 474,728 + 22×1,120 = 499,368 (≤ 500,000)
  - 474,728 + 23×1,120 = 500,488 (> 500,000)
  - The text says "derived from that number, not measured on a production witness", which is accurate. See advisory A2.

## S row details (S L11)

- **R1 HELD.** "Target dirs deleted after each run." No `target` or `*-target` dirs remain under `/workspace/scratch/build-2026-10-04/` (`find … -name target -o -name '*-target'` gives nothing).
- **R2 UNVERIFIABLE (non-blocking).** "Task 5 (#991 scratch node) held by TN10 ops until after the 6 Oct stress test". The only source I can read is the owner's own results file (L3: "TN10 ops said no until after Tue 6 Oct stress test"). The TN10 handoff log has no matching entry. This line is process status, not a claim about code or chain. It is fine as is, or "held" could be attributed to the owner's results.

## Advisories (none block)

- **A1. DOTK quote (R L75 / J L141).** The text gives `ExceededCommittedScriptUnits { used: 10000, limit: 9999 }` as the asserted charge. The assert at `7ea661e2` vm.rs L109 checks only the substring `used: 10000, limit: 9999`; the full message comes from the temporary print log. Suggested wording: "Only `7ea661e2` asserts the exact charge (`why.contains("used: 10000, limit: 9999")`, L109; full message `ExceededCommittedScriptUnits { used: 10000, limit: 9999 }`)."
- **A2. vProgs 22/23 inputs (R L67 / J L105).** "22 inputs give 499,368 (fits)" covers compute only. In the l1-wallet fixture, transient is the binding limit: settlement.rs L238 reads `assert_eq!(limit, params.block_mass_limits.transient, "transient binds this fixture");`. The production witness's transient mass is unknown. Optionally say "(fits the compute cap; transient not derived)".
- **A3. "per-tx limits" (R L67).** The cited field is `block_mass_limits`. vprogs applies it per transaction in `mass_overflow` (`l1/wallet/src/build/pricing.rs` L61 @ `055ae28a`; funding.rs comment "Per-tx admission: a layout above either non-contextual limit is rejected by the node"). The wording is defensible. Optionally add "(the block mass limits, which vprogs applies per tx)".
- **A4. Which commit.** `055ae28a` is the `release-candidate` tip and the head of draft #170. It is 3 commits ahead of the #169 head `b32e92de` (`gh api …/compare/055ae28a…b32e92de` gives `behind_by: 3`). The text says "at `055ae28a`", which is accurate. Both cap tests are also at `b32e92de` (settlement.rs L203 and L264, the same lines).
- **A5. Placement (R L75).** The new DOTK sentence is inserted just before the existing "). MIT. Neither the tags nor main …". "MIT." now follows the desk-test sentence. This is cosmetic.
- **A6. Process (outside the branch).** The owner's results report that the toolchain install ran while 19G was free, below the 30G TN10 ops floor. My reruns stayed at ≥ 36G free.
- **A7. "(this commit)".** After the merge, the S L11 row should get the merged SHA in a later link commit.

## Merge order

`git merge-tree --write-tree 353e9ad b8256bc` (vs `build/kachat-genesis-2026-10-03`) gives two conflicts:
- **SNAPSHOT-HISTORY.md:** both branches add a top row.
- **README.md:** this branch appends to the DOTK row at L75, and kachat inserts its KaChat row right after it, at L76.

master.json merges cleanly.

To resolve, keep both S rows newest first, and keep this branch's L75 followed by kachat's L76, both unchanged. Whichever branch merges second needs a main merge and a recheck by the challenge desk before it merges.

# Challenge: build/rusty-1074-2026-10-14

- **Reviewed commit:** `25f53af05c9823485d500b80600ea8019620a23e`. Parent `9b0a7487432c83fffd2a46dd3a4d07cda6eacc9b`.
- **Base:** `origin/main` `9b0a748` at the branch cut. This note does not claim main stayed there.
- **Totals:** 16 HELD · 0 FAILED · 0 UNVERIFIABLE.
- **Verdict:** no open FAILED item. This note is Grok Build's check, not the kaspa master challenge bot. It does not authorize a merge. Main was not moved.
- **Reviewer:** Grok Build, 14 Oct 2026. Reads were the GitHub commit, pull, review, tag, and issue APIs, plus the files at `67686482` named below. No cargo. No node. No comment on kaspanet/rusty-kaspa.

**Key:** R = `README.md`. J = `master.json`.

## Pin

- **C1 HELD.** `25f53af` is one commit by `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. The diff is `README.md`, `master.json`, and `SNAPSHOT-HISTORY.md` only.
- **C2 HELD.** R L50 and J L21. rusty-kaspa `master` is `67686482511d8f4518d10cb38d4b113f90b109b6`, committer date 2026-10-14T16:12:25Z, message "compute commit, mass calculation and generator fixes (#1074)". Parent `2ea8e9d171ef614c20568c8730993656d24818f2`. Pull #1074 merged 2026-10-14T16:12:26Z, merge commit that sha, author IzioDev, base `master`, head `804172adeaaf05df0aaf23cabacb572321804d5b`. `closingIssuesReferences` is empty. biryukovmaxim APPROVED 2026-10-14T13:36:17Z on `804172ad`.
- **C3 HELD.** R L50. Tag `v2.1.0` still points at commit `01b532e8b553523216471682649693af92f0fd16`. The pin says this is not a new release.
- **C4 HELD.** R L50 and R L56 and J L57. #1142 merged 2026-10-13T10:19:49Z as `a92c4f9f31c72d135da3399880f355702ee98ae1`. #1135 merged 2026-10-13T11:12:28Z as `12db0f35d4bba48cf9962f59cc27d5adb5ae6324`, title "Require explicit opt-in for non-SIG_HASH_ALL PSKB signing". #1148 merged 2026-10-14T12:30:32Z as `2ea8e9d171ef614c20568c8730993656d24818f2`. #1141 is open, head `a7c8ef0c708cd8009a7b87040b4c5628f6109d99`. #1129 is open, head `8b9f1c419f63f81490650b0ed270a6ce147d6715`. Issue #1073 is open.
- **C5 HELD.** R L56 records the #1148 merge at 2026-10-14T12:30:32Z, and later in the same cell keeps the 13 Oct 06:01:46Z sentence that the pull was open at that read. The morning sentence is a point-in-time read.

## Code at 67686482

- **C6 HELD.** `wallet/core/src/tx/mass.rs` L34 is `pub const MAXIMUM_STANDARD_TRANSACTION_MASS: u64 = 500_000;`. At parent `2ea8e9d1` the same const is `100_000`. The const is not inside a Toccata check. The #1074 commit message's first subject still says "max std mass when toccata is active"; the merged const is unconditional. R L50 calls it a wallet standard cap.
- **C7 HELD.** `wallet/core/src/tx/generator/generator.rs` L606–L643. `get_utxo_entry` skips a UTXO when `covenant_id` is set, including stash and priority. The comment says "to avoid unintended lineage discontinuation". R L54 says that is wallet selection, and that the RPC endpoint is still not on master. #991 is still open, head `77d9a2e80fdc7d134cb59e3ebea9d5dd39224729`.
- **C8 HELD.** `generator.rs` L404–L405 returns `Error::GeneratorPaymentOutputCovenantNotAllowed` when a payment output has `covenant`.
- **C9 HELD.** `wallet/core/src/tx/generator/settings.rs` L85, L122, and L157 set `version: 0` and `ComputeCommit::SigopCount` in `try_new_with_account`, `try_new_with_context`, and `try_new_with_iterator`. `wallet/core/src/wasm/tx/generator/generator.rs` L316 still reads `sigOpCount`.
- **C10 HELD.** `wallet/core/src/wasm/tx/utils.rs` L174 is `test_create_transaction_js_supports_v1_compute_commit_and_covenant_output`. It sets commit type `computeBudget`, value 7, and version 1, and expects a covenant output. The test was not run.
- **C11 HELD.** `wallet/core/src/wasm/tx/mass.rs` L60 binds `updateTransactionMass`. L72 is `tx.set_storage_mass(masses.contextual.storage_mass)`. `wallet/core/src/tx/mass.rs` L212–L213 computes the relay fee from `masses.non_contextual.normalized_max`. `generator.rs` L894–L896 returns `Ok(None)` on `StorageMassExceedsMaximumTransactionMass` while another UTXO remains.
- **C12 HELD.** The merge diff of `consensus/core/src/mass/mod.rs` makes `transaction_input_estimated_serialized_size` public and adds `Add` and `AddAssign` for `NonContextualMasses`. `units.rs` adds `SigopCount::to_grams` and edits a comment. `tx.rs` adds a doc comment on `CovenantBinding.covenant_id`. No consensus parameter changes in those three patches.

## Board

- **C13 HELD.** `master.json` parses. `updated` is `2026-10-14` (J L4). J L909 says #1135 merged as `12db0f35`. J L1377 says the same. J L1734 chip is `merged`.
- **C14 HELD.** `SNAPSHOT-HISTORY.md` L11 names tip `67686482`, tag `01b532e8`, the three merges, the three pulls that stay open, post `2110463785349812661`, and says post `2109872199569936618` is recorded on kaspa-builders branch `build/x402-main-2026-10-14`.
- **C15 HELD.** No public reply and no commit on kaspanet/rusty-kaspa.
- **C16 HELD.** `origin/main` of this repo was not the push target. This challenge commit is a second commit on `build/rusty-1074-2026-10-14`. It does not move main.

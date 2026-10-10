# Challenge: `build/p2pkh-desk-2026-10-10` (10 Oct 2026)

- **Tip reviewed:** `73b224483fa64c7f4fce993b97067cb7fb248c00` (content `1195e49`, row link `73b2244`).
- **Base:** `main` `6795d7462af1e8efcea0f3da9b76a83066a4d027`. ls-remote at ~10:20 CEST says main is still `6795d74`, so this is a fast-forward of 2 commits.
- **Push:** activity API shows one plain push, `branch_creation` → `73b2244` at 08:18:17Z (10:18 CEST), after the commits (10:17:41 and 10:17:44 CEST). No force-push.
- **Reads:** 10 Oct ~10:20 to 10:35 CEST: raws in `kaspa-master-reports/raw-2026-10-10/p2pkh-desk/`, rusty-kaspa source at `01b532e8` (raw.githubusercontent), gist API. No compiles.
- **Result: 17 HELD, 1 FAILED, 1 UNVERIFIABLE.**

## FAILED

**F1. The sentence states `01b532e8` as fact, but the logs do not record the commit.** `run-summary.log` has rustc and cargo only. `test-output.log` shows `kaspa-txscript v2.1.0 (/tmp/b1010/rusty-kaspa/...)` and no hash. The SNAPSHOT row has the hedge; README and JSON do not.
- README L74: replace "at [`01b532e8`](https://github.com/kaspanet/rusty-kaspa/commit/01b532e8b553523216471682649693af92f0fd16) (rustc 1.98.1 `48a229cea`," with "at [`01b532e8`](https://github.com/kaspanet/rusty-kaspa/commit/01b532e8b553523216471682649693af92f0fd16) (commit read from the scratch checkout after the run, not in the logs; rustc 1.98.1 `48a229cea` per the run log;".
- master.json L159: replace "at 01b532e8 https://github.com/kaspanet/rusty-kaspa/commit/01b532e8b553523216471682649693af92f0fd16 (rustc 1.98.1 48a229cea," with "at 01b532e8 https://github.com/kaspanet/rusty-kaspa/commit/01b532e8b553523216471682649693af92f0fd16 (commit read from the scratch checkout after the run, not in the logs; rustc 1.98.1 48a229cea per the run log;".

## UNVERIFIABLE

**U1. Tested commit = `01b532e8`.** No saved log names it. On-box corroboration: the scratch checkout's reflog shows clone 10:13:53 and `checkout: moving from master to 01b532e8…` at 10:13:55 CEST, before START 10:14:28. HEAD is still `01b532e8`, and the only change is the untracked `crypto/txscript/tests/`. That is not a saved raw. Saving it would make this HELD, and the F1 hedge stays correct either way.

## HELD

1. **Private names:** 0 hits on the tip and on main, checked against the live private list (18) plus 2 former names. 0 hits in commit messages.
2. **Valid spend:** `test-output.log` L484 `VALID spend     -> Ok(())`. `p2pkh_scratch.rs` signs with `SIG_HASH_ALL`, which supports "a SIG_HASH_ALL spend passed engine execution".
3. **Wrong pubkey:** L485 `WRONG pubkey (sig by wrong key) -> Err(VerifyError)`. "(OP_EQUALVERIFY)" is not in the log but follows from the source. At `01b532e8`, `TxScriptError::VerifyError` comes only from OpVerify, OpEqualVerify, OpNumEqualVerify, OpCheckSigVerify and OpCheckMultiSigVerify (`opcodes/mod.rs` L413/579/698/856/870), and OP_EQUALVERIFY is the only verify opcode in this script.
4. **Wrong-key signature:** L486 `CORRECT pubkey, sig by other key -> Err(EvalFalse)`. At `01b532e8`, `OpCheckSig` (L827) pushes the verify result, so a valid-format signature from another key pushes false, and the engine returns `EvalFalse` (`lib.rs` L689/L747). "(OP_CHECKSIG)" holds.
5. **Classification:** L487 `ScriptClass::from_script(version 0) = NonStandard (nonstandard)`.
6. **Source check:** `script_class.rs` at `01b532e8` L39 to L53. Version 0 = `MAX_SCRIPT_PUBLIC_KEY_VERSION`, and the 37-byte script fails P2PK (34 bytes), P2PK-ECDSA (35) and P2SH (35, `aa 20 … 87`), so `from_script` returns `NonStandard`.
7. **Script bytes:** the log prints `76aa20<H(P)>88ac (37 bytes)` and `sigscript len = 99 bytes`, matching the SNAPSHOT row.
8. **Gist:** https://gist.github.com/michaelsutton/04edba7e112756088c515b2949db267b is public (web 200), owner michaelsutton, created 8 Oct 22:59:50Z, 1 revision `c2ae033802e7f1c6f6453cb665a32a4b30788d19`. The file `kas-p2pkh.md`, "Option 2: Direct P2PKH", gives `OP_DUP OP_BLAKE2B OP_DATA_32 <h_P> OP_EQUALVERIFY OP_CHECKSIG` = `0x76 || 0xaa || 0x20 || h_P || 0x88 || 0xac` and a 99-byte signature script. `H` = unkeyed 32-byte BLAKE2b and `P` = x-only key, the same as the scratch test. The gist itself says direct P2PKH "require[s] updates to node standardness policy", which agrees with NonStandard.
9. **Run:** `run-summary.log` has rustc 1.98.1 (48a229cea 2026-09-01), START 10:14:28 and END 10:16:28 CEST, exit=0. The test log says "1 passed; 0 failed".
10. **SNAPSHOT row figures** match `run-summary.log`/`monitor.log`: peak 1582 MB, min mem_avail 5852 MB at 10:16:08, 96G after, target deleted 10:17. The provenance hedge is present.
11. **Scope:** a desk result on kaspanet code. No wallet or product status is added; the cell's existing wallet line already sends wallets to builders.
12. **Mirrors:** README L74 and master.json L159 carry the same sentence, inserted before "Gist, not a KIP.".
13. **`master.json`** is canonical (indent 2, 0 `\u` escapes, `updated` 2026-10-10).
14. **Render** via POST /markdown: README has 1 table, 36 tr, same as main. SNAPSHOT has 278 → 279 tr.
15. **SNAPSHOT order:** 10:17 is above 08:06 and 08:00. `1195e494…` and `6795d74` resolve.
16. **Dated wording:** "10 Oct 10:14–10:16 CEST". No undated "tip".
17. **Trial merges:** onto `main` `6795d74` it is a fast-forward. With `build/vprogs-workshop-2026-10-09` there is 1 SNAPSHOT row-order conflict only. No other open branch from 7 Oct or later conflicts.

## Advisories (not FAILED)

- **A1.** Save the scratch checkout's `git reflog` / `rev-parse HEAD` output as a raw; it would turn U1 into HELD.
- **A2.** The gist link in the README/JSON sentence is unpinned. Consider adding "rev `c2ae0338`" as in SNAPSHOT.
- **A3.** The opcode attributions in parentheses come from the source and the script, not from the log text. They are correct, as noted in items 3 and 4.

## Recheck, 10 Oct 2026 10:24 CEST, tip 5f3bab9298d70a3ee189d839e31433787d56db9e (fix 338f266 plus link commit 5f3bab9, both on 73b2244)

- HELD F1: the hedge "commit read from the scratch checkout after the run, not in the logs; rustc 1.98.1 48a229cea per the run log;" appears in README L74 (with backticks) and in master.json L159.
- HELD U1: raw checkout-reflog.txt (saved 10:20:47 CEST) shows a clone at 10:13:53 +0200 and a checkout to 01b532e8b553523216471682649693af92f0fd16 at 10:13:55 +0200, before the run started at 10:14:28. I re-read the live scratch checkout and got the same reflog, with HEAD at 01b532e8.
- HELD A2: the desk sentence links the gist at rev c2ae033802e7f1c6f6453cb665a32a4b30788d19 (owner michaelsutton, checked through the API). The older gist link in the cell is unchanged.
- HELD: the diff from 73b2244 touches only those two lines plus a SNAPSHOT row (newest first: 10:21, 10:17, 08:06). JSON is canonical with updated 2026-10-10 and 0 \u escapes. Private names: 0 hits in the tree and in commit messages, against the live private list. README renders 36 table rows. main 6795d74 is an ancestor of the tip, so this is a fast-forward.

Totals at 5f3bab9: HELD 21, FAILED 0, UNVERIFIABLE 0. Cleared to merge at exactly 5f3bab9298d70a3ee189d839e31433787d56db9e.

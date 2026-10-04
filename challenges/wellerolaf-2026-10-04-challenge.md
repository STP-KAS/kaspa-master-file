# Challenge: master/wellerolaf-2026-10-04

- **Reviewed tip:** `7a54145daf5e5951cb42dc4651abe2c685e106d1`. Content is in `25c96e40f989cee2bbe5c4f97f32a15a838f7793`; the tip only adds the SNAPSHOT row.
- **Base:** main `c11ae181c872b9b1dbbefeae50c53159d55a3da2`.
- **Totals:** 35 HELD · 0 FAILED · 1 UNVERIFIABLE (non-blocking)
- **Verdict:** there is no open FAILED item, so under PROCESS.md this branch is not blocked. Advisories A1–A7 are below. A1 rules on the KIP-16/17 labels; they are not on the branch.
- **Reviewer:** challenge desk, 4 Oct 2026, about 18:17–18:45 CEST.

**How I checked:**
- **Chain facts.** Read-only JSON wRPC to the desk node n0 (`ws://127.0.0.1:18210`), using only `getServerInfo`, `getBlockDagInfo`, `getSyncStatus`, `getBlock` and `getVirtualChainFromBlock`. No TN10 process was touched. api-tn10 was not used.
- **Upstream code.** Read-only clones under `/workspace/scratch`:
  - olafweller/kaspa-privacy-initiative at `98aa99fa`, plus `refs/pull/22/head`
  - kaspanet/rusty-kaspa at `01b532e8` (v2.1.0)
  - kaspanet/kips at `e4ae2332`
- **X claims.** Checked against the owner's raws in `kaspa-master-watch/raw/2026-10-04/wellerolaf/` only. I made no X API calls.
- **Desk tests.** The owner's test results are log-based (`raw/2026-10-04/kpi/.kpi-*.log`). I did not rerun them.

**Key:** R = README.md, S = SNAPSHOT-HISTORY.md, J = master.json, all at `7a54145` unless stated otherwise.

## Branch shape

- **S1 HELD.** Main is `c11ae18`. `git rev-parse origin/main` gives `c11ae181c872b9b1dbbefeae50c53159d55a3da2`. It is a merge with parents `b8256bc` (kachat) and `353e9ad` (rust-checks), and it contains `5989892`.
- **S2 HELD.** Main is an ancestor (`merge-base --is-ancestor` gives true). There are two commits:
  - `25c96e4` (parent `c11ae18`) changes R and J.
  - `7a54145` (parent `25c96e4`) changes only S, adding 1 line.
- **S3 HELD.** The identity is noreply only. Both commits have author and committer `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`, at 18:16:47 and 18:16:54 +0200.
- **S4 HELD.** Non-added lines are byte-identical:
  - R: the only diff opcode is `replace` main L94 → branch L94–95. That is the research.kas.pa row edit plus the inserted KPI row; R goes from 111 to 112 lines.
  - S: one `insert` at L11 only.
  - J: the top-level keys and section ids are unchanged. Every section except `now` is identical. In `now`, rows go from 52 to 53 (insert at index 43), and the only other change is the research.kas.pa `note`.
- **S5 HELD.** J decodes as UTF-8. It equals `json.dumps(d, indent=2, ensure_ascii=False)` plus a trailing newline. It has 0 `\u` escapes, and `updated` stays `2026-10-04`.
- **S6 HELD.** The new row is placed correctly and mirrored:
  - R L95 `| Privacy initiative (KPI) |` sits between research.kas.pa (L94) and 1984 (L96). In J it is the `now` row between `research.kas.pa` and `1984` (L270, `chip: experiment`).
  - The J note matches the R cell token for token, apart from link labels and the full SHA `98aa99fa8230f5eb490e0af4e3da0291260581d6`.
  - Using chip `experiment` on a row whose text ends "Catalog." follows the KUSDT row's precedent.
- **S7 HELD.** S L11 `| 2026-10-04 18:16 | [`25c96e4`](…/commit/25c96e40f989cee2bbe5c4f97f32a15a838f7793) |` matches the commit time of `25c96e4` (18:16:47 CEST). It sits above L12 `2026-10-04 08:55`, so the order is newest first.
- **S8 HELD.** No leaks:
  - The added lines contain no home paths, `/workspace`, `/tmp` or e-mail addresses. The repo's personal commit e-mail was not copied.
  - The only person appears as the handle `@WellerOlaf`; his display name does not appear.
  - The only repos linked are `STP-KAS/kaspa-master-file` and `olafweller/kaspa-privacy-initiative`. Both are public (`gh api repos/<r> --jq .private` gives `false`), and there is no private repo name.

## (1) On-chain facts, rechecked on n0

- **C1 HELD.** n0 is synced: `getServerInfo` gives `serverVersion 2.1.0`, `networkId testnet-10`, `isSynced true`, `virtualDaaScore 587978916`, and `getSyncStatus` gives `isSynced: true` (read 4 Oct 18:18 CEST). That matches R's "kaspad 2.1.0".
- **C2 HELD.** R L95 says "release tx `29d875bbdf31cb14205b6f429d63c475b9ad85e558e932b1c70ff1dbc0e2b554` is in chain block `c38a5439` (3 Oct 17:56:48Z)". `getBlock c38a5439db59c5768e62a37d162f19cd04c4802a8a2e33a35a80050fa3c76210` (with transactions) shows:
  - `isChainBlock true`, `isHeaderOnly false`
  - timestamp 2026-10-03T17:56:48.492Z (19:56:48 CEST)
  - 16 txs, one of which has `transactionId 29d875bb…b554` as computed by the node
- **C3 HELD.** "accepted by chain block `c8dc02dd`". `getVirtualChainFromBlock {startHash: c38a5439…, includeAcceptedTransactionIds: true}` returns 1196 added chain blocks, the first being `c8dc02dd…`. Its `acceptedTransactionIds` include `29d875bb…b554`, with `acceptingBlockHash c8dc02dd15e6451ff328eb3708d00a1b638bd004e5ad98a2405a76a2de431a6f`. `getBlock c8dc02dd` also shows `isChainBlock true`, `selectedParentHash c38a5439…`, and `mergeSetBluesHashes [c38a5439…, a4dece45…]`.
- **C4 HELD.** "it spends `67aab5bf…:0` (1,020,000,000 sompi)":
  - The release input is `67aab5bfb85e9fb1fb6eaa08c6216ca44ed98c823d4d1141361ac75be0db004f:0`.
  - That funding tx is in block `8ec273b7be634625efe42c020d9e12895ae073084b5aed69ba1e7bc0a7dbcdf2` (17:55:20.522Z, not a chain block). Its output 0 is `value 1020000000`, `scriptPublicKey 0000aa20305c3575e16a9a9135f98dd70cbb16881c52232071e56f6a0dd7cff46b36d97787`, `covenant null`.
  - `getVirtualChainFromBlock` from the selected parent of `bacfa5f1` lists `67aab5bf…` as accepted by `bacfa5f142345086ad4568709810e2351088070bde654eb03b38c3d1b290334e`, a chain block whose blue mergeset includes `8ec273b7`.
- **C5 HELD.** "fee 0.2". The release has 1 input of 1,020,000,000 and 1 output of 1,000,000,000 sompi, so the fee is 20,000,000 sompi = 0.2 tKAS.
- **C6 HELD.** "BLAKE2b-256 of its 576-byte redeem script equals the reserve address":
  - I parsed the release signature script myself (775 bytes). It has 4 pushes of 32, 32, 128 and 576 bytes.
  - BLAKE2b-256 of the 576-byte push (no key, 32-byte digest) is `305c3575e16a9a9135f98dd70cbb16881c52232071e56f6a0dd7cff46b36d977`, and the funding SPK is exactly `0000 aa20 <that hash> 87`.
  - I re-encoded version 8 plus that hash with my own Kaspa bech32 code. It gives `kaspatest:pqc9cdt4u94f4yf4lxxawr9mz6ypc53rypc72mm2phtulartxmvhw2lxjzegy`, which equals the node's `scriptPublicKeyAddress` (`ScriptHash`).
- **C7 HELD.** "compute mass 171335". The release tx has `version 1`, `computeBudget 1700`, sequence u64::MAX, `verboseData.computeMass 171335`, `storageMass 20`, and its single output is `covenant: None`. That output is 1,000,000,000 to `kaspatest:qr33u5pn…s38lsrz4`; I re-encoded that address from its SPK too.
- **C8 HELD.** "a 10.2 tKAS P2SH reserve paid out only through a Groth16 BN254 proof checked by `OpZkPrecompile` (0xa6, tag 0x20), with introspection pinning one input and one 10 tKAS output to a fixed script". I decoded the redeem script with the opcode table at rusty-kaspa `01b532e8`:
  - It runs: `OpTxInputCount 1 OpEqualVerify`, `OpTxOutputCount 1 OpEqualVerify`, `0 OpTxInputAmount <00f7cb3c = 1,020,000,000> OpEqualVerify`, `0 OpTxOutputAmount <00ca9a3b = 1,000,000,000> OpEqualVerify`, `0 OpTxOutputSpk <36 B = recipient SPK, byte-equal to the output> OpEqualVerify`, `0 OpOutputAuthorizingInput -1 OpEqualVerify`.
  - It then builds limbs from `OpOutpointIndex OpNum2Bin` and `OpOutpointTxId … OpSubstr … OpCat`, and ends with `5 OpFromAltStack <424 B VK> <0x20> OpZkPrecompile`.
  - The script is linear (no `OpIf`), so there is no other spend path.

## (2) KIP labels and opcode bytes

- **K1 HELD.** The bytes are right:
  - kips `e4ae2332` kip-0016.md L35: "This proposal introduces a single new opcode: `OpZkPrecompile` (opcode value: `0xa6`)". L91 and L93: "Groth16 (tag `0x20`)".
  - rusty-kaspa `01b532e8` `crypto/txscript/src/opcodes/mod.rs` L759: `opcode OpZkPrecompile<0xa6, 1>`.
  - `crypto/txscript/src/zk_precompiles/tags.rs` L9: `Groth16 = 0x20,`.
  - kip-0016.md L73 names BN254 for the Groth16 verifier.
- **K2 HELD.** The branch adds no KIP-16 or KIP-17 label: across the added lines, the only KIP mention is "No KIP-20 covenant id". The KIP-16/17 mapping exists only in the owner's report. See A1 for my ruling on it.
- **K3 HELD.** "No KIP-20 covenant id (`covenant=None`)". The release output and both funding outputs have `covenant: null` on n0. See A2 on the KIP-20 opcode the script does use.

## (3) Wording

- **W1 HELD.** It does not read as a privacy pool:
  - "Not a privacy pool." appears in R L95 and J L273.
  - The same cell says "**no notes, nullifiers, private transfers or anonymity yet.**" and "One terminal claim, public amounts".
  - "proof-gated release" appears only in the `25c96e4` commit subject, not in any file. No "shielded" wording is used for this repo.
- **W2 HELD.** The repo's "covenant" is described as a plain P2SH: R says "a 10.2 tKAS P2SH reserve" and "No KIP-20 covenant id (`covenant=None`)", and S says "a P2SH reserve". The word "covenant" is not used for the reserve.

## Repo facts and the research.kas.pa fix

- **G1 HELD.** "main `98aa99fa` (4 Oct 11:24Z) … Apache-2.0, created 2 Oct, 11 commits, one author":
  - `gh api …/commits/main` gives `98aa99fa8230f5eb490e0af4e3da0291260581d6`, `2026-10-04T11:24:38Z`.
  - The repo shows `created_at 2026-10-02T13:55:36Z`, `license Apache-2.0`, `fork false`.
  - The contributors API gives `olafweller 11`, and `git log` shows 11 commits.
- **G2 HELD.** "draft #22 head `2590e392`, unfunded … independent recovery (G5) open, live run (G6) not done":
  - `gh api …/pulls/22` gives `draft true`, `state open`, `head 2590e392ef97af6ea81aa8fc177a3996a7fa93a7`.
  - PR body L1: "Implements the merged finite A1 specification as an unfunded file-only experiment. This PR remains DRAFT: full independent G5 recovery is open and G6 has not run."
- **G3 HELD.** "single-party trusted setup per claim". Repo README L203 @ `98aa99fa`: "Per-instance fixed-context setups … Single-party setup provenance remains a trust assumption." Also `docs/poc-a0-live-tn10-handoff.md` L66.
- **G4 HELD (log-based).** "7/7 Rust tests; harness 1 valid, 28 rejected, stateless replay accepted as documented; 13/13 Node tests on Node 22 … 20/20".
  - `.kpi-a0-test.log`: `7 passed; 0 failed`.
  - `.kpi-a0-run.log`: 2 cases `"accepted": true` (`valid_terminal_release`, `exact_replay_stateless_boundary`) and 28 `"accepted": false`, with `compute_mass_grams 171335`.
  - `.kpi-node22.log`: `# tests 13 # pass 13 # fail 0`. The log has no version line; the Node 22 claim is corroborated by `/tmp/node-v22.23.3-linux-x64.tar.*`.
  - `.kpi-ci-fast.log`: `# Node.js v20.19.2 … # fail 1`, `Class extends value undefined` (S: "fails to load on Node 20").
  - `.kpi-a1-test.log`: `19 passed` + `1 passed`.
  - Toolchain: `poc/a0/rust-toolchain.toml` sets `channel = "1.91.0"`, and the owner's upstream clone is at `01b532e8b553…`, clean.
- **F1 HELD.** "at `dc2f176d` that repo was research only". `git ls-tree -r dc2f176` lists only Markdown plus `.github/` templates and workflow, `.gitignore`, `LICENSE` and `scripts/check_docs.py`.
- **F2 HELD.** "since 3 Oct it carries PoC code". `3a1efa8` (2026-10-03 21:12:17 +0200, 19:12Z, "PoC A0/A0.5: live TN10 proof-gated reserve release") adds `poc/a0/src/{circuit.rs,live.rs,main.rs}`, Cargo files and evidence. The other 3 Oct commits (`815a58c`, `7cc539c`, `a97a6ef`, `0193d18`) are docs only.
- **F3 HELD.** The J research.kas.pa note mirrors the fix: "research, no protocol code" becomes "research only at dc2f176d, PoC code since 3 Oct (row Privacy initiative (KPI))". No other stale "no protocol code" remains in any branch file. The Kas-Smiths row (R L65, unchanged) describes the repo's candidate architectures, which is still accurate.

## X claims, against the raws

- **X1 HELD.** X id `1370264912992346114` = `@WellerOlaf`: `page1.json` `includes.users` has `{"id":"1370264912992346114","username":"WellerOlaf"}`, and every `page1.json` post has that `author_id`.
- **X2 HELD.** "code written with AI agents ([his post])". Post `2106523383844229492` (3 Oct 23:14:46Z) reads: "I'm not a developer by background, not a cryptographer and not a Kaspa core dev. But using ChatGPT, local Codex and Codex in the cloud … sending agents to research/build/test".
- **X3 HELD.** "His 4 Oct architecture post (2106773440338247750: notes, nullifier root, relayer, batcher) is design only". The post (15:48:24Z) says "This is not a final design" and names a private note, nullifier, Relayer, Batcher, Indexer, and "a commitment root … and a nullifier-state root". I found none of these in the code (see W1).
- **X4 HELD.** S says "read 63 posts and kept 19 … per-account marker `2106774728690065588`":
  - `page1.json` has 50 posts (30 Sep 16:10:18Z → 4 Oct 15:53:31Z) and the search file has 13 (7–29 Sep), with no overlap: 63 in all.
  - The backfill report's kept table has 19 ids and its filtered list has 44. They are disjoint, and their union equals the 63 exactly.
  - `meta.newest_id` is `2106774728690065588` (17:53:31 CEST).
- **X5 HELD.** "added to the daily community query". `watchlist.json` has `x.user_ids.WellerOlaf = 1370264912992346114` and `from:WellerOlaf` in the query, and the repo is in `github.repos`. `state.json` `x.community_search.per_account_since = {"WellerOlaf": "2106774728690065588"}`.
- **X6 UNVERIFIABLE (non-blocking).** "X spend $0.33 (credits $4.08→$3.75)". The only source is the owner's own `state.json` L57–58 (`credits_before_usd 4.08`, `credits_after_usd 3.75`). An independent check would need an X call, and I made none.

## (4) Omissions

- **O1 HELD. Leaving these three out is right.** Each rests on a post with no public code, repo or tx id:
  - **KASperiencexyz.** `2105944879905775837` (2 Oct 08:56Z) says "shielded pool is live on testnet-10 … no trusted setup … independent exits proven", about "ka$h", not native KAS. `2105951647381766585` says "i don't share demo repos".
  - **PhantomPool.** Kas_Ranks `2106595722334183745` says "PhantomPool will be open source". The public KASRANKS repos are only Kasgenesiszero, KasProof, kasranks and KASSWORD (`gh api users/KASRANKS/repos`).
  - **teoscure.** `2106085677838545187` gives "4.47s on an M2 … a private send tx on simnet … 0.247 kas", with no repo linked.
- **O2 HELD. Nothing equally unverified went in.**
  - Every chain fact in the KPI row is node-checked (C1–C8).
  - The repo facts are API- or git-checked (G1–G3, F1–F2).
  - The test counts come from the desk's own logs (G4).
  - The two X items are attributed as his own statements ("his post", "design only").
  - The distinct-ID replay rejection, which only the repo recorded, is not claimed on the branch.

## Advisories (none block)

- **A1. Ruling on the KIP-16/17 labels (owner's report only, not on the branch).**
  - **KIP-16:** "KIP-16 = `OpZkPrecompile` 0xa6, Groth16 tag 0x20" is right (K1).
  - **KIP-17:** "KIP-17 = introspection" is only partly right. Of the opcodes this redeem script uses:
    - `OpTxInputCount` 0xb3, `OpTxOutputCount` 0xb4, `OpTxInputAmount` 0xbe, `OpTxOutputAmount` 0xc2 and `OpTxOutputSpk` 0xc3 are **KIP-10**. kip-0017.md L45–L55: "Existing Introspection Opcodes: The following KIP 10 opcodes were already active before Toccata".
    - `OpOutpointTxId` 0xba and `OpOutpointIndex` 0xbb are KIP-17 (kip-0017.md L32–L33), as are `OpCat` 0x7e, `OpSubstr` 0x7f and `OpNum2Bin` 0xcd (L78, L79, L91).
    - `OpOutputAuthorizingInput` 0xd6 is **KIP-20** (kip-0020.md L250).
    - The bytes in the report match rusty-kaspa `01b532e8` (mod.rs L979, L987, L1046, L1059, L1100, L1151, L1163, L1421).
  - **If labels are ever added to the board**, use: "`OpZkPrecompile` (0xa6, Groth16 tag 0x20; KIP-16) plus introspection from KIP-10 (input/output count, amounts, output SPK), KIP-17 (outpoint txid/index, `OpCat`/`OpSubstr`/`OpNum2Bin`) and KIP-20 (`OpOutputAuthorizingInput`)". Writing "KIP-17 introspection" alone would be a FAILED.
- **A2. KIP-20 precision (R L95 / J L273, optional).** "No KIP-20 covenant id" is true, but the script does use one KIP-20 opcode, to require that the payout carries no covenant binding. Suggested wording: "No KIP-20 covenant id (`covenant=None`); the script uses KIP-20's `OpOutputAuthorizingInput` (0xd6) only to require −1, i.e. an unbound payout."
- **A3. Desk test reruns.** G4 is log-based (owner-run, targets since deleted). The chain facts do not depend on it. A reviewer rerun would cost about 9 + 7.5 min of RocksDB build at `-j 4`, longer niced at `-j 2`.
- **A4. Should @WellerOlaf go in the J `x` section? Advice: not now.**
  - J's `x` section ("X handles", 19 rows) comes from RECEIPTS.md §5 "Core + builder X handles", built from the founder's rough core list. Its chips are `founder`, `core`, `research` and `history`, `ss` (SilverScript v1 contributors), `this`, and a few `community` accounts: official/relay accounts plus BankQuote and KaspaScopio, the latter tied to kaspanet code (silverscript #249/#250/#251).
  - Builders whose work sits in their own third-party repos are kept as board rows or "Other GitHubs", not as `x` handles. That holds for KasperoLabs (silverscript-studio, rusty-kaspa #1140), Kas_Ranks/KASRANKS, supertypo, and even the tracked core dev @Max143672.
  - @WellerOlaf has one 2-day-old third-party repo and no kaspanet contribution. Adding him would break that precedent.
  - His handle is already linked in the KPI row, and he is in the daily sweep (X5).
  - Revisit if KPI work lands upstream, for example in a KIP, kips/rusty-kaspa PRs, or core engagement. If stp still wants him in `x`, use chip `community` with a note like "@WellerOlaf: steward of olafweller/kaspa-privacy-initiative (community research, not core; tweet is not a pin)". In the same pass, decide on @KasperoLabs for consistency.
- **A5. Two older S rows say "(this commit)".** On main, the 08:55 and 08:53 rows still say "(this commit)". After the `c11ae18` merge they mean `353e9ad` and `b8256bc`. A later link commit should replace them.
- **A6. Coverage caveat (S L11).** The backfill covers 6–30 Sep through a keyword search only. S states this; keep it on any later citation.
- **A7. Optional pointer.** The Kas-Smiths row (R L65) mentions the repo but not the new KPI row. A "(row **Privacy initiative (KPI)**)" pointer would help, like the one the research row now has.

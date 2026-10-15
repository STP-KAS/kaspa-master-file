# Vertex TN10 miner, 15 Oct 2026

Experimental note. We do not claim the truth. The public argument is [DEBATE.md](https://github.com/STP-KAS/vertex/blob/main/DEBATE.md) at commit `24bd7f5`. This file keeps the method.

## What was being decided

A miners-page version showed `2.1.0+opretu…`. vertex described one same-parent pair whose red block counts a 3,000,000-sompi fee from a transaction stock rusty-kaspa rejects at `OP_RETURN`. Later questions: did supertypo's share fall because of this miner, is the payout about two days old, and did its nodes come up and then leave the miners page.

## Method worth reusing

1. Read the coinbase extra from a synced node. On tag `v2.1.0` the extra is `version()` + `/` + the miner's extra. `version()` is the Cargo package version. A `+` in that prefix was typed into the version string. Stock `RK-Stratum` has no suffix. Sources: `rpc/service/src/service.rs`, `core/src/kaspad_env.rs`, `bridge/src/kaspaapi.rs` at tag `v2.1.0`.
2. Walk stored blocks from the pruning point with `getBlocks` (`includeBlocks` and `includeTransactions`). Count by the extra, and by a hash of the coinbase-payload script. Do not write the script or the address. A 64-bit parent-set prefix can collide. Recheck a differing pair on the full parent hash.
3. Red from `getCurrentBlockColor` is GHOSTDAG color. It is not a validity flag. The RPC responses used here have no block-status field. Same parents and two UTXO commitments mean stock code can accept at most one (`BadUTXOCommitment` in `utxo_validation.rs`). Which header fails is a separate read.
4. Creating an `OP_RETURN` output is mempool policy. Executing `OP_RETURN` returns `EarlyReturn`, which is consensus. An opcode inside a pushed redeem script is not the same fact as an `OP_RETURN` output. Do not count a raw `6a` byte as an opcode.
5. Network hashrate in kaspa-rest-server is `difficulty * 2 * bps`. TN10 `bps` is 10. A miner's share of stored blocks is not a device measurement, and it includes red blocks. A miners-page share can be blue or accepted only. Those two series can move apart.
6. Address age without storing the address: derive it in memory, then `GET /addresses/{address}/transactions-count` and `GET /addresses/{address}/full-transactions-page?limit=1&after=1`. `after` walks forward from that time, so one row is the oldest indexed transaction when the older-page header is absent. On a busy address the oldest row can be the indexer window. Compare that timestamp with another large address before calling it a birth date. The `/name` route can return HTTP 500. Paging code: `kaspa-ng/kaspa-rest-server` `endpoints/get_address_transactions.py`.
7. Miners-page identity is coinbase-payload text the miner sets, per supertypo on 11 Oct 2026: https://x.com/supertypo_kas/status/2109220014423216271 . A string match on `supertypo` does not prove the page row someone pointed at. The live page is a proprietary client. Do not deobfuscate the bundle. A headless load can render an empty table while the chain still has the blocks.
8. Reconnect the node socket. One full walk died at a disconnect. A retry from the same low hash, with a seen-set, finished. Do not restart the node to cure that.
9. Silence after the last labeled header is the chain fact. "The row left the miners page" needs a look at the page. Report them as two facts.

## What this pass found

Checked on one desk node, pruning point 14 Oct 2026 15:18:14.711 CEST through 15 Oct 2026 23:03:22.876 CEST. 1,142,659 stored blocks. Nine payload scripts.

- The long `opreturn-era-fix` extra is 1,406 blocks, 14 Oct 23:54:49.706 CEST through 15 Oct 00:56:45.706 CEST, then zero through 23:03. It is the ninth script.
- The extra `2.1.0/0.2.6/supertypo` is a different script. About 123 stored blocks per hour before the burst, about 189 after. It was still mining at 23:03. The burst is about 1,400 blocks in one hour. The rates do not fit a move of that effort onto the new version.
- The labeled script has 22 indexed transactions. Oldest 13 Oct 2026 01:11:16 CEST, newest 14 Oct 23:54:50.154 CEST. About 47 hours before the version label. "Roughly two days" fits. The red blocks are not in the 22.
- Peer list: 8 peers, no matching user agent. No TCP connect. Reachability stays open.
- The miners page was not reloaded. The chain silence fits a row that stopped.

## What not to carry forward

- Do not say every red block is invalid. Status was not read.
- Do not say the 3,000,000 sompi is the fee. The input amount was not read, and the script was not executed.
- Do not treat the `supertypo` string as the whole of supertypo's hashrate chart.
- Do not put addresses, peer endpoints, or txids into git.

## X

One short reply was requested, in Grok Build's voice, with the disclaimer and the two GitHub links, and then no further replies and no watch on the thread. This session's X connection cannot create a post. The reply was not sent. Do not keep polling that thread for a new answer.

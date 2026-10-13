# TN10 incident, 29 Sep 2026: private chain from mining on an unsynced node

> **Rewritten copy, 4 Oct 2026 (Grok Bot, for stp).** Original: `TN10-INCIDENT-2026-09-29.md` next to this file, unchanged. Kaspa Testnet-10 only. This copy adds a label to every statement about mainnet so no TN10 result reads as proven for mainnet. Master doc: `/workspace/artifacts/stress-tests/TN10-STORMS-MAINNET-IMPLICATIONS-2026-10-04.md`.
>
> **Labels.** **A** = shown on TN10, backed by our own measured data (TN10 only, never proof for mainnet). **B** = plausible for mainnet but unsure, reason given. **C** = unknown, needs more testing and review. *Scope note* = says what the test touched, not a mainnet claim. *Reference input* = mainnet parameter read from source code or the live public API, not a storm result. *Corrected* = the original statement was wrong.
>
> **Why TN10 results do not carry over automatically:** TN10 hashrate 47.8 MH/s vs mainnet 338,836.66 TH/s (2 Oct); our own miners made 50–63% of n0's blocks while they ran and mostly included our own txs; only five public TN10 nodes seen, one node of ours with 6 out-peers; one 8-vCPU / 16 GB / 126 GB box (21 GB disk pause, OOM at 9.46 GB from a 2.73M-UTXO address query, 3 Oct pruning disk-full crash); one or two submitting machines; no real fee market (mainnet ~1.07 regular tx/s); a spam-bloated TN10 UTXO set (322–325M); kaspad 2.0.x/2.1.0 mixed on TN10 public backends. Block rate (~10/s) is the one factor that matches.

## Mainnet claims relevant to this file, labelled (added 4 Oct 2026)

| Claim | Label | Evidence or reason | Test needed |
|---|---|---|---|
| The public TN10 indexer stalls under storm load | **A** | 25 Sep freeze ≥3 d 15 h (`tn10-indexer-stall-2026-09/README.md`); 2 Oct 86-min freeze (public report §4). Cause unproven | — |
| The public API is the first thing to fail | **A** (TN10 api-tn10) | 704 s lag (1 Oct), 86-min freeze (2 Oct), ≥3 d 15 h freeze (25 Sep) | — |
| api.kaspa.org / mainnet explorers would fail the same way | **C** | Different operators and infrastructure; no indexer logs | Ask indexer operators; replay load against a staging indexer |
| Pruning-point moves can need 11–15 GB temp disk and grow the DB ~3 GB/min at peak | **A** | 27 Sep 13.3 GB temp (HANDOFF); round 4 >15 GB; 3 Oct watchdog log steps ≈1.6 GB/30 s | — |
| Mainnet pruning has similar disk spikes | **C** | Depends on mainnet UTXO set and node config; we do not run mainnet | Review with a mainnet node operator (read-only data) |
| Storm spam bloats the UTXO set and slows resync | **A** (TN10: 322.4M → 324.72M; resync 2 h to 3 h 28 min) / **B** (mainnet) | Our 1-in-1-out lanes add little; bloat on TN10 is mostly older spam and coinbase dust (our mining address held 2.73M UTXOs) | Measure UTXO count before/after a storm; separate lane, fan-out and coinbase outputs |
| Resync speed depends on the IBD peer | **A** | 0.48M UTXOs/min on one peer vs ~10M/min after `--connect` (3 Oct) | Mainnet IBD speed: C (operator data) |
| Any TN10 number in this file read as a mainnet number | **C** | TN10 differs in hashrate (~7×10⁹ smaller), node count, peer diversity, fee demand and UTXO set; our tests ran through one small box | See master doc, open questions |

*Line labels added in this copy: SCOPE 1. Lines inside code blocks were not labelled.*

---


stp's own Testnet-10 (TN10) stack on the desk box. Testnet only. No mainnet impact, no real rewards, nothing posted publicly. Times are Europe/Brussels (CEST, UTC+2). First written from the TN10 watch and TN10 ops reports that evening ([`5be2dbc`](https://github.com/STP-KAS/kaspa-master-file/commit/5be2dbc157a9e7edadd5febb82da8804080a703a)). Corrected on branch `build/2026-09-29` the same night against the node's own log, the miner supervisor log, the dry-run JSONL, the saved command lines and read-only RPC. What changed: the reboot time (20:12:20, not 20:13), the DAA score at ~20:34 (about 1.3k–5k, not 82k), the chain the blocks sat on (the TN10 genesis on an empty data dir, not a stale TN10 tip), when it began (20:33:31, before the pool miners), who mined on it (miners outside the box too), and the second restart. *[Scope note: TN10 only, not a mainnet claim]*

## What happened

| Time (CEST) | Event | Evidence |
| --- | --- | --- |
| 20:12:20 | The box rebooted. n0's data dir and log dir were both under `/tmp`, so the node database and the 24–29 Sep log were lost. | `uptime -s` → `2026-09-29 20:12:20` on 29 Sep. The same command later gave 20:12:41 (30 Sep) and 20:15:13 (2 Oct), because it is derived from the current clock minus uptime and drifts with clock corrections. Read it as about 20:12, not to the second. TN10 ops' backup of the pre-reboot command line has `--appdir=/tmp/kaspa-data-tn10-n0 --logdir=/tmp/kaspa-logs-tn10-n0 … --enable-unsynced-mining` (the backup's mtime is the 20:16:55 restore, so this is strong, not conclusive, evidence for the 27 Sep argv). Neither `/tmp` dir exists now. |
| 20:21:35 | n0 restarted with an empty data dir under `/workspace`, still with `--enable-unsynced-mining`, now also with `--utxoindex`. It started a headers-proof IBD from public peers. | n0 log line 1 `2026-09-29 20:21:35.063+02:00 [INFO ] kaspad v2.1.0`, line 2 `Application directory: /workspace/kaspa-data-tn10-n0`. RPC at 20:25:38: `blockCount` 0, sink = pruning point = `f896a303…`, the rusty-kaspa [`TESTNET_GENESIS`](https://github.com/kaspanet/rusty-kaspa/blob/v2.1.0/consensus/core/src/config/genesis.rs#L123-L127) hash. |
| 20:33:29–20:33:31 | Two gRPC clients connected, and n0 accepted its first blocks "via submit block" while its IBD was at 44% of headers. The pool miners had not started yet. Whose clients these were is not proven: the log shows loopback, which is also how the public gRPC tunnel looks. | n0 log L617 `IBD: Processed 496885 block headers (44%)` at 20:33:26; L618–619 `GRPC, new incoming connection …@127.0.0.1:50578 #2`, `…:50582 #3` at 20:33:29.93; L620 `Accepted 29 blocks … via submit block` at 20:33:31.142. |
| 20:33:37–20:34:37 | The private chain grew from the genesis: DAA score 185 at 20:33:37, 1,348 at 20:34:17, 4,962 at 20:34:37. | kit dry-run `tn10-n0-rpc.jsonl` polls (`virtualDaaScore`, `blockCount`). |
| 20:34:21 | The miner waiter saw `isSynced` (true on the private chain) and started six pool miners (`--mine-when-not-synced`). | start log `2026-09-29 20:34:21 CEST waiter: n0 isSynced -> START pool-miners-supervisor pid 45299`; supervisor log `start pool` … `start gb004` at 20:34:21; n0 log L681–686, six gRPC connections at 20:34:21.30–.32. |
| 20:34–22:22 | Private chain. The blocks sat on the TN10 genesis, not on an old TN10 tip, so none of it could join public TN10. IBD attempts from public peers aborted because the private tip's timestamp kept winning, at 20:43:41, 21:07:39 and 21:58:05. At 22:16 n0's sink blue score was 84,623 while the api-tn10 kaspads were at ~572.28M. | `rusty-kaspa_err.log`: `… is too small or negative. Aborting IBD...`; 22:16 RPC in the 29 Sep build results file. |
| 21:52:24 | Two more gRPC clients connected in the same second as the public gRPC tunnel logged two new inbound connections, and both pairs closed at 22:22:22. So miners outside the box were mining the private chain too, at least from 21:52:24. | n0 log L8072–8073 at 21:52:24.154/.158; tunnel log `new connection` at 19:52:24.136Z/.143Z and `connection exited` at 20:22:22.65Z; n0 `GRPC, end connection` for the same two ids at 22:22:22.565. |
| 22:10 | TN10 watch flagged it. | TN10 watch report (not on the box; not re-checked). |
| 22:21:33–22:21:34 | The six pool miners last reported 5.11–5.28 MH/s each (about 31 MH/s together), then the supervisor halted. | pool miner logs `Current hashrate is: …` at 20:21:33Z; supervisor log `2026-09-29T22:21:34+02:00 halted`. |
| 22:22:20 | Last block accepted via submit block, 46 s after the pool miners halted (from the outside clients). | n0 log L10813 `Accepted 2 blocks … via submit block` at 22:22:20.486. |
| 22:22:23 / 22:22:28 | n0 stopped and restarted on an empty data dir, without `--enable-unsynced-mining`. | n0 log L10823 `Kaspad has stopped...` 22:22:23.967, L10824 `kaspad v2.1.0` 22:22:28.415; saved command line `n0-cmdline.txt` (22:23:06) has `--utxoindex` and no unsynced flag. |
| 22:25:02 / 22:25:04 | Stopped and restarted again, the same flags plus `--uacomment`. | n0 log L11536–11537; `ps`: pid 166233 started 22:25:03. |
| 22:38 | Sink blue score 0, `blockCount` 0, sink = genesis, `isSynced` false; IBD downloading headers from public peers (29% at 22:36:10). No miner running; the new waiter is up. | JSON wRPC `getServerInfo`, `getSinkBlueScore`, `getBlockDagInfo` at 22:38:37; n0 log. |

## Impact

- No real testnet rewards came from 20:33–22:22. Every coinbase in that window is on a chain only n0 had, and the data dir holding it was emptied at 22:22.
- Hash sent through the public mining endpoint also went to the private chain, at least from 21:52:24 to 22:22:20.
- The effect on the public TN10 network was not measured. Public nodes should not switch to a chain with this little work.
- Any n0 reading taken from 20:21 CEST until the new IBD ends is not a TN10 reading. That covers the 29 Sep kit dry-run's reorg numbers and the 22:16 CEST `isSynced: true`.

## Fix now in place (seen on the box, read only)

- n0's saved command line no longer has `--enable-unsynced-mining`.
- The miner waiter starts the pool miners only when all three hold on n0, and gives up after 12 h:
  - `isSynced` is true,
  - `virtualDaaScore` is above 500,000,000 (the real TN10 height, not a fresh node),
  - the sink (the node's current tip) is less than 120 s old.
- Miners outside the box are not gated by that waiter. Without `--enable-unsynced-mining`, n0 answers their `submitBlock` with `IsInIBD` while it is unsynced ([`rpc/service/src/service.rs` L308–310 at v2.1.0](https://github.com/kaspanet/rusty-kaspa/blob/v2.1.0/rpc/service/src/service.rs#L308-L310)), so they can't fork it again.

## Lessons

1. Never keep kaspad data or logs in `/tmp`. A reboot wipes them.
2. Never mine on a fresh or unsynced node.
3. `--enable-unsynced-mining` does what it says; it is not a bug. It is only for bootstrapping a brand-new network, never for joining an existing one like TN10.
4. Gate miner start on real height and a fresh sink, not on `isSynced` alone. A node mining its own chain reports `isSynced: true`.
5. Before Fri 2 Oct 14:00 CEST, check that n0's `getSinkBlueScore` matches api-tn10 `/info/virtual-chain-blue-score`. If the IBD takes longer than the waiter's 12 h, the pool miners won't come back by themselves.

# AGENTS — kaspa-master-file

This repo is the Kaspa **pin encyclopedia**. Front door: [STP-KAS/kaspa-dapps](https://github.com/STP-KAS/kaspa-dapps). **Not an oracle.** Do not keep a parallel Kaspa-oracle report.

**Read first:** `master.json` section `now`, then the README **Now** block. Older “what this pass did” sections and sections 0–10 now live in [`RECEIPTS.md`](RECEIPTS.md) (moved from the README on 26 Sep 2026). They and the `intel-pack.md` tables are receipts. If they disagree with `now`, `now` wins. Current pins live in the README **Now** board + `master.json`.

Claims prompt (paste into the desk bot): [`DESK-PROMPT.md`](DESK-PROMPT.md).
Cursor prompt (master file and the GitHubs): [`CURSOR-PROMPT.md`](CURSOR-PROMPT.md).
Node card: [`DESK-BOT.md`](DESK-BOT.md).

## Standing authority (do not re-ask)

When this master file is named, opened, or used as the pin list, Grok Build **shall** use the desk Grok Bot Kaspa stack for audits, receipt tests, covenant txs, x402, and node checks.

| Piece | Operator status 17 Sep 2026 |
| --- | --- |
| kaspa bot mainnet archival (1 public) | **Retired.** Stopped and wiped 25 Sep 2026 16:46 CEST; the 17 Sep endpoint `159.223.110.159:28492` is gone. The box runs Testnet-10 only. See [Xai.mainnet.public.nodes](https://github.com/STP-KAS/Xai.mainnet.public.nodes). |
| tn10 bot node | **Synced with public TN10, pruned, no `--utxoindex` (checked 4 Oct 2026 08:02 CEST).** RPC `127.0.0.1:16210` on the box, P2P 16211, kaspad 2.1.0 `tn10-n0`, data and logs under `/workspace`, no `--enable-unsynced-mining`. `ps` at 08:02: pid 42988, started 3 Oct 21:47:00 CEST, `--testnet --netsuffix=10`, no `--utxoindex`, no `--archival` (pruned). Read-only check at 08:02:47 CEST: `getServerInfo` gives kaspad 2.1.0, `isSynced` true, `hasUtxoIndex` false; `getBlockDagInfo` virtual DAA score 587609591, then api-tn10 [`/info/blockdag`](https://api-tn10.kaspa.org/info/blockdag) 587609592 the same second. Datadir about 72G; `/` had 38G free (`df -h`). Per the desk's TN10 handoff log (box-local, not public): on 3 Oct the 07:43 pruning-point move filled the disk, the disk watchdog stopped kaspad at 07:53–07:56, and with stp's OK (09:51) the datadir was wiped at 09:54 and n0 resynced from scratch without `--utxoindex`. Per TN10 ops, n0 was restarted 3 Oct 21:46 CEST after a box restore with its datadir intact. The box booted by about 20:45:29 CEST on 3 Oct (`uptime -s` shows 20:46:02, but it is derived like `ps` start times and lags the same way). kaspad's own log has its start banner at 21:46:28 CEST, while `ps` shows 21:47:00; `ps` start times on this box run about 32 s late (the miners' supervisor log has them starting at 21:49:33, `ps` shows 21:50:05). Recovery after a restart is `/workspace/artifacts/kaspa-tn10/start-all-after-reboot.sh`. With the index off there are no UTXO-by-address reads through n0, and never read the mining address's full UTXO set through it (that OOM-killed n0 on 2 Oct). The 29 Sep private-chain incident and its fix: [`TN10-INCIDENT-2026-09-29.md`](TN10-INCIDENT-2026-09-29.md). Its readings count as TN10 only while n0's sink blue score or virtual DAA score is within a few hundred of api-tn10. The 2 Oct wording of this row is in git history at [`4183b7a`](https://github.com/STP-KAS/kaspa-master-file/blob/4183b7a9c4206a64ab334bdefbcb6eb3c28545c4/AGENTS.md). TN10 ops owns it. |
| TN10 miners | **Six running since 3 Oct 21:49:33 CEST, nice 0 (checked 4 Oct 2026 08:02 and 08:12 CEST).** Six `kaspa-miner` processes (`-t 1`), started 21:49:33 per the supervisor log (`ps` shows 21:50:05), children of `pool-miners-supervisor.sh`, mining direct to `127.0.0.1:16210` with `--mine-when-not-synced`; `/tmp/pool-miners.HALT` is absent. Pay-to `kaspatest:qzffl5xy9np46gkttyuftqnv2w04pr8g3wsp7c3vv8se3txtelx6q7c0v0ldx`. `ps -o nice` shows 0 for all six at 08:02 and 08:12. TN10 ops says nice 19 is used during storms; the handoff log also shows a nice 19 plan for the miners after the 3 Oct resync, which was not a storm. Hashrate about 27 MH/s: the mean of the six miners' own "Current hashrate" log lines from 07:13:00 to 08:13:06 CEST is 4.51 Mhash/s each (2,166 lines in that window), times six; the six latest lines at 08:13:06 sum to 26.6 Mhash/s (desk read of the box-local miner logs). Per the desk's TN10 handoff log (box-local, not public), they were down during the 3 Oct disk-full and resync (crash-looping on the refused RPC; supervisor stopped 09:52). Earlier halt history is in git history at [`4183b7a`](https://github.com/STP-KAS/kaspa-master-file/blob/4183b7a9c4206a64ab334bdefbcb6eb3c28545c4/AGENTS.md). TN10 ops owns them. |

## Hard locks

- **Never** share seed phrases, mnemonics, private keys, or wallet files.
- **Never** paste TN10 into **kaspa bot**. kaspa bot was mainnet archival only (retired 25 Sep 2026).
- **Never** change the TN10 mining address.
- **Never** treat USDT/USDC as dApp unit or gas. Dual rail: keypad fiat, settle native KAS.
- **Never** ship or restore in-page wallet inject. [wallet-integration](https://github.com/STP-KAS/wallet-integration) is withdrawn.
- Merged Active KIP = law. A tweet is not.

## Nodes vs this Windows session

Sandbox `127.0.0.1:16210` is **not** automatically this PC. Public REST (`api.kaspa.org`, `api-tn10.kaspa.org`) is the always-on read path. Mainnet is retired: kaspa bot's mainnet node was stopped and wiped on 25 Sep 2026, and no desk mainnet node is kept running.

## What belongs in the master (since 4 Oct 2026)

stp approved this rule on 4 Oct 2026 (19:06 CEST). The master keeps kaspanet repos and their PRs, issues and releases; KIPs and KCCs, plus any reference implementation that a KIP or KCC merged on main names in a status gate or waits on (a reference implementation named only by an open KIP or KCC pull moves, with a pointer); statements by core contributors (people with merged kaspanet code or KIP/KCC authorship) about kaspanet code or the protocol, and their own repos that extend kaspanet code itself (a rusty-kaspa or vprogs fork branch, or a demo, study or language layer of a KIP or a kaspanet repo, such as kdapp, vprog-tictactoe, kaspa-xmss and Argent); credible source lists (sites, forums, mirrors); network history and incidents, as one line when the cause is off-chain; and stp's own desk results when they test kaspanet code, KIPs or KCCs. Everything else goes to [STP-KAS/kaspa-builders](https://github.com/STP-KAS/kaspa-builders): third-party wallets, indexers, name services, apps, pools, payment rails, research repos and essays; products built with kaspanet crates or SilverScript (name services, indexers, swap channels, payment rails, DNS seeders), even when a core contributor writes them; community X accounts; a core contributor's side projects that do not build on kaspanet code; stp's own apps and experiments (1984, KUSDT, AgenC); and desk tests of third-party projects, which go with that project's entry. Technical reasoning from moved projects that explains Kaspa itself (protocol, consensus, covenants, SilverScript, KIP/KCC behaviour) stays in the master as a short sourced line with a pointer to kaspa-builders. Otherwise, leave a one-line pointer in the master only where a kaspanet item depends on a moved item. Fact corrections stay in the master, and nothing leaves the master without landing in kaspa-builders.

## Where to write (layout since 26 Sep 2026)

- `README.md` is the intro plus the **Now** board. Nothing else. Do not add “what this pass did” sections or new reference sections to it.
- Keep each **Now** cell short: the current state in a few sentences, with the key commit hashes and links. When a fact changes, rewrite the cell to the new state. Do not append dated diary lines to a cell.
- Dated notes (what was read, when, and what changed) go in [`SNAPSHOT-HISTORY.md`](SNAPSHOT-HISTORY.md): one newest-first row per pass. Longer text that no longer belongs in a cell is moved there verbatim, under a dated heading, and the cell links to it.
- [`RECEIPTS.md`](RECEIPTS.md) holds the older README sections. It is frozen. Do not add to it.
- `master.json` section `now` mirrors the board. Change it when a pin changes.

## Snapshot history

Every master-file pass **shall** append a newest-first row to [`SNAPSHOT-HISTORY.md`](SNAPSHOT-HISTORY.md), push it, and tell stp in chat what landed (even when pins hold and JSON is unchanged).

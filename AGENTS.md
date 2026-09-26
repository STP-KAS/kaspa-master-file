# AGENTS — kaspa-master-file

This repo is the Kaspa **pin encyclopedia**. Front door: [STP-KAS/kaspa-dapps](https://github.com/STP-KAS/kaspa-dapps). **Not an oracle.** Do not keep a parallel Kaspa-oracle report.

**Read first:** `master.json` section `now`, then the README **Now** block. Older “what this pass did” sections and sections 0–10 now live in [`RECEIPTS.md`](RECEIPTS.md) (moved from the README on 26 Sep 2026). They and the `intel-pack.md` tables are receipts. If they disagree with `now`, `now` wins. Current pins live in the README **Now** board + `master.json`.

Claims prompt (paste into the desk bot): [`DESK-PROMPT.md`](DESK-PROMPT.md).
Node card: [`DESK-BOT.md`](DESK-BOT.md).

## Standing authority (do not re-ask)

When this master file is named, opened, or used as the pin list, Grok Build **shall** use the desk Grok Bot Kaspa stack for audits, receipt tests, covenant txs, x402, and node checks.

| Piece | Operator status 17 Sep 2026 |
| --- | --- |
| kaspa bot mainnet archival (1 public) | Up — `159.223.110.159:28492` |
| tn10 bot node | Up — RPC `127.0.0.1:16210` (Grok Bot sandbox loopback) |
| TN10 miners | Alive — pay-to `kaspatest:qzffl5xy9np46gkttyuftqnv2w04pr8g3wsp7c3vv8se3txtelx6q7c0v0ldx` |

## Hard locks

- **Never** share seed phrases, mnemonics, private keys, or wallet files.
- **Never** paste TN10 into **kaspa bot**. kaspa bot is mainnet archival only.
- **Never** change the TN10 mining address.
- **Never** treat USDT/USDC as dApp unit or gas. Dual rail: keypad fiat, settle native KAS.
- **Never** ship or restore in-page wallet inject. [wallet-integration](https://github.com/STP-KAS/wallet-integration) is withdrawn.
- Merged Active KIP = law. A tweet is not.

## Nodes vs this Windows session

Sandbox `127.0.0.1:16210` is **not** automatically this PC. Public REST (`api.kaspa.org`, `api-tn10.kaspa.org`) is the always-on read path. Do not compete with kaspa bot on mainnet `:16111`.

## Where to write (layout since 26 Sep 2026)

- `README.md` is the intro plus the **Now** board. Nothing else. Do not add “what this pass did” sections or new reference sections to it.
- Keep each **Now** cell short: the current state in a few sentences, with the key commit hashes and links. When a fact changes, rewrite the cell to the new state. Do not append dated diary lines to a cell.
- Dated notes (what was read, when, and what changed) go in [`SNAPSHOT-HISTORY.md`](SNAPSHOT-HISTORY.md): one newest-first row per pass. Longer text that no longer belongs in a cell is moved there verbatim, under a dated heading, and the cell links to it.
- [`RECEIPTS.md`](RECEIPTS.md) holds the older README sections. It is frozen. Do not add to it.
- `master.json` section `now` mirrors the board. Change it when a pin changes.

## Snapshot history

Every master-file pass **shall** append a newest-first row to [`SNAPSHOT-HISTORY.md`](SNAPSHOT-HISTORY.md), push it, and tell stp in chat what landed (even when pins hold and JSON is unchanged).

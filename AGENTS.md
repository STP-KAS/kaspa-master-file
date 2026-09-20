# AGENTS — kaspa-master-file

This repo is the Kaspa **pin encyclopedia**. Front door: [STP-KAS/kaspa-dapps](https://github.com/STP-KAS/kaspa-dapps). **Not an oracle.** Do not keep a parallel Kaspa-oracle report. Pins, catalog tweets, and honest object splits live in `README.md` + `master.json`.

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
- **Never** staff production L1 dapps while the L1 stable and the sequencing path are unsettled. Not a product.
- Merged Active KIP = law. A tweet is not.

## Nodes vs this Windows session

Sandbox `127.0.0.1:16210` is **not** automatically this PC. Public REST (`api.kaspa.org`, `api-tn10.kaspa.org`) is the always-on read path. Do not compete with kaspa bot on mainnet `:16111`.

## Snapshot history

Every master-file pass **shall** append a newest-first row to [`SNAPSHOT-HISTORY.md`](SNAPSHOT-HISTORY.md), push it, and tell stp in chat what landed (even when pins hold and JSON is unchanged).

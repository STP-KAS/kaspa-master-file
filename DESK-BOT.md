# Desk Grok Bot — standing authority

**Not Kaspa core. Not a seed store. Not a product.** Freeze: **17 Sep 2026**.

When **this master file** is named, opened, or used as the pin encyclopedia, **Grok Build has standing authority** to use the desk’s Grok Bot Kaspa stack for audits, receipt tests, covenant txs, x402, and node checks. **Do not ask permission again.**

Claims / copy / “did it ship?” prompt: [`DESK-PROMPT.md`](DESK-PROMPT.md).

Why the product lock exists: [KASPAglobal, 17 Sep 2026](https://x.com/kaspaglobal/status/2100536064683176270). Implemented on STP-KAS GitHubs the same day. Wallet inject withdrawn. Production dapps are not a useful spend while L1 stables and app sequencing are unsettled.

The node runs on the **Grok Bot Linux sandbox**, not on the phone and not as the required Windows copy. Rituals: [STP-KAS/Xai.Kaspa.node](https://github.com/STP-KAS/Xai.Kaspa.node) (mainnet).

**Never share seed phrases.** Never paste TN10 into **kaspa bot**. Never change the mining address. **Never restore wallet inject.**

---

## Operator card (17 Sep 2026)

| Piece | Status | Use |
| --- | --- | --- |
| **kaspa bot** — mainnet archival (1 public) | **Up** — `159.223.110.159:28492` | Public P2P. Archival. RPC is **localhost on the sandbox**. |
| **tn10 bot** — TN10 node | **Up** — RPC `127.0.0.1:16210` **on the sandbox** | Testnet-10 only. |
| **TN10 miners** | **Still alive** — same pay-to | Locked address below. |

Pay-to (immutable, public, **not a seed**):

```
kaspatest:qzffl5xy9np46gkttyuftqnv2w04pr8g3wsp7c3vv8se3txtelx6q7c0v0ldx
```

Explorer: https://tn10.kaspa.stream/addresses/kaspatest:qzffl5xy9np46gkttyuftqnv2w04pr8g3wsp7c3vv8se3txtelx6q7c0v0ldx

Rechecked this pass: **3,824,424.95 tKAS** on that address (api-tn10). Mainnet REST DAA **542,045,549**. TN10 REST DAA **572,671,518**.

This Windows Grok Build session **could not** open sandbox loopback `127.0.0.1:16210` or TCP `159.223.110.159:28492`. That does **not** revoke the operator card.

---

## Split (do not mix)

| Agent | Network | Do | Do not |
| --- | --- | --- | --- |
| **kaspa bot** | mainnet archival | Keep it running. Public P2P. | TN10 flags, mine mainnet to a new address, bind a competing desk `:16111` |
| **tn10 bot** | testnet-10 | Node + CPU miner to the locked `kaspatest:` address | `kaspa:` addresses, retask kaspa bot, generate a seed |

Price / target / cycle-top talk stays forbidden (`what is kaspa?`).

---

## How Grok Build uses this (when the master file is named)

1. **Reads / audits / status checks:** `https://api.kaspa.org` and `https://api-tn10.kaspa.org`. Browser User-Agent if the API 403s a bare client.
2. **Submit / UTXO / covenant tests:** tn10 bot RPC on the sandbox (`127.0.0.1:16210`). **No in-page wallet inject.** QR / `kaspa:` URI / paste txid only.
3. **Mainnet archival facts:** ask **kaspa bot** / public P2P `159.223.110.159:28492`.
4. **Do not** spin a third mainnet archival.
5. **Do not** staff or recommend production L1 dapps while the L1 stable and the sequencing path are unsettled. See [`DESK-PROMPT.md`](DESK-PROMPT.md).

Probe: [`scripts/probe-nodes.ps1`](scripts/probe-nodes.ps1).

---

## Hands off

- No seeds, mnemonics, `wallet.txt`, xpub, or private keys in this file or in chat.
- No desk force-stop of kaspa bot.
- No TN10 netsuffix on the mainnet datadir.
- No restoring STP-KAS/wallet-integration inject code.

# Desk Grok Bot — standing authority

**Not Kaspa core. Not a seed store.** Freeze: **17 Sep 2026**.

When **this master file** is named, opened, or used as the pin encyclopedia, **Grok Build has standing authority** to use the desk’s Grok Bot Kaspa stack for audits, dApp tests, covenant txs, x402, receipts, and node checks. **Do not ask permission again.**

The node runs on the **Grok Bot Linux sandbox**, not on the phone and not as the required Windows copy. Rituals: [STP-KAS/Xai.Kaspa.node](https://github.com/STP-KAS/Xai.Kaspa.node) (mainnet) · [STP-KAS/groks-wallet](https://github.com/STP-KAS/groks-wallet) (TN10).

**Never share seed phrases.** Never paste TN10 into **kaspa bot**. Never change the mining address.

---

## Operator card (17 Sep 2026)

| Piece | Status | Use |
| --- | --- | --- |
| **kaspa bot** — mainnet archival (1 public) | **Up** — `159.223.110.159:28492` | Public P2P. Archival. RPC is **localhost on the sandbox**, not this Windows loopback. |
| **tn10 bot** — TN10 node | **Up** — RPC `127.0.0.1:16210` **on the sandbox** | Testnet-10 only. Borsh `17210`, JSON `18210`, P2P `16211`. |
| **TN10 miners** | **Still alive** — same pay-to | Locked address below. |

Pay-to (immutable, public, **not a seed**):

```
kaspatest:qzffl5xy9np46gkttyuftqnv2w04pr8g3wsp7c3vv8se3txtelx6q7c0v0ldx
```

Explorer: https://tn10.kaspa.stream/addresses/kaspatest:qzffl5xy9np46gkttyuftqnv2w04pr8g3wsp7c3vv8se3txtelx6q7c0v0ldx  
Balance: `GET https://api-tn10.kaspa.org/addresses/kaspatest:qzffl5xy9np46gkttyuftqnv2w04pr8g3wsp7c3vv8se3txtelx6q7c0v0ldx/balance` (`balance` is sompi; tKAS = sompi / 1e8)

Rechecked this pass: **3,824,424.95 tKAS** on that address (api-tn10). Miners are earning. Mainnet REST DAA **542,045,549**. TN10 REST DAA **572,671,518**.

This Windows Grok Build session **could not** open sandbox loopback `127.0.0.1:16210` or TCP `159.223.110.159:28492` (connection refused from the PC). That does **not** revoke the operator card. It means: use **kaspa bot / tn10 bot** (and public REST) first; a desk second site is optional.

---

## Split (do not mix)

| Agent | Network | Do | Do not |
| --- | --- | --- | --- |
| **kaspa bot** | mainnet archival | Keep it running. Public P2P. Companions: Kaspa node live bot, kaspa update, kaspa help, what is kaspa?, am i live node? | TN10 flags, mine mainnet to a new address, wipe `/tmp/kaspa-data-mainnet`, bind a competing desk `:16111` |
| **tn10 bot** | testnet-10 | Node + CPU miner to the locked `kaspatest:` address | `kaspa:` addresses, retask kaspa bot, generate a seed |

Price / target / cycle-top talk stays forbidden (`what is kaspa?`).

---

## How Grok Build uses this (when the master file is named)

1. **Reads / audits / dApp checks:** `https://api.kaspa.org` (mainnet) and `https://api-tn10.kaspa.org` (TN10). Browser User-Agent if the API 403s a bare client.
2. **Submit / UTXO / covenant tests:** tn10 bot RPC on the sandbox (`127.0.0.1:16210`). If this Windows session needs a local RPC and desk `:16210` is down, **may** start the groks-wallet desk TN10 copy as a **second site** (`Documents/kaspa/groks-wallet` scripts). Same pay-to. Different datadir. **Never** bind mainnet `16111`. **Never** paste that start ritual into kaspa bot.
3. **Mainnet archival facts:** ask **kaspa bot** / **am i live node?** / public P2P `159.223.110.159:28492`. Recheck [arewepublicyet.com](https://arewepublicyet.com) before claiming map-listed.
4. **Do not** spin a third mainnet archival “to be helpful.” kaspa bot already is that node.

Probe from this repo: [`scripts/probe-nodes.ps1`](scripts/probe-nodes.ps1).

---

## Hands off

- No seeds, mnemonics, `wallet.txt`, xpub, or private keys in this file or in chat.
- No desk force-stop of kaspa bot.
- No TN10 netsuffix on the mainnet datadir.

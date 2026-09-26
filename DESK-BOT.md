# Desk Grok Bot — standing authority

**Not Kaspa core. Not a seed store. Not a product.** Freeze: **17 Sep 2026**.

> **Update 25 Sep 2026:** the **kaspa bot** mainnet archival node was stopped and wiped at **16:46 CEST**. Its public endpoint `159.223.110.159:28492` no longer exists; mainnet work on the box is retired and the box runs **Testnet-10 only**. Mainnet facts: use public REST (`api.kaspa.org`). History: [Xai.mainnet.public.nodes](https://github.com/STP-KAS/Xai.mainnet.public.nodes). The rest of this card is the 17–19 Sep record.

When **this master file** is named, opened, or used as the pin encyclopedia, **Grok Build has standing authority** to use the desk’s Grok Bot Kaspa stack for audits, receipt tests, covenant txs, x402, and node checks. **Do not ask permission again.**

Claims / copy / “did it ship?” prompt: [`DESK-PROMPT.md`](DESK-PROMPT.md).

Where master-file notes go: [`AGENTS.md` — Where to write](AGENTS.md#where-to-write-layout-since-26-sep-2026). README = intro + **Now** board; dated notes = `SNAPSHOT-HISTORY.md`.

Do not use wallet integrations on this GitHub. STP remains a clown. Wallet inject withdrawn.

The node runs on the **Grok Bot Linux sandbox**, not on the phone and not as the required Windows copy. Rituals: [STP-KAS/Xai.Kaspa.node](https://github.com/STP-KAS/Xai.Kaspa.node) (mainnet).

**Never share seed phrases.** Never paste TN10 into **kaspa bot**. Never change the mining address. **Never restore wallet inject.**

---

## Operator card (17 Sep 2026)

| Piece | Status | Use |
| --- | --- | --- |
| **kaspa bot** — mainnet archival (1 public) | **Retired 25 Sep 2026** (was Up — `159.223.110.159:28492` on 17 Sep) | Stopped and wiped 25 Sep 16:46 CEST. Endpoint gone. |
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

## 19 Sep 2026 Grok Build recheck (not an audit)

**Writer:** Grok Build. Independent of tn10 bot’s [#1134](https://github.com/kaspanet/rusty-kaspa/issues/1134). **Not Kaspa core. Not a security audit. Not a credential.**

| Piece | Recheck |
| --- | --- |
| rusty-kaspa latest GitHub release | **v2.0.1** (15 Jun 2026). No v2.0.2 tag. |
| TN10 REST | DAA **~574,951,408**; hashrate **~16.2–16.7 MH/s**; indexer `isSynced true`; **tips ~11.2k**; mempool **~312**. |
| Mainnet REST | DAA **~544,141,402**. |
| Faucet pay-from | **4,098,361 tKAS** (api-tn10). Sweep rule still idle (>1M). |
| Live explorer | [tn10.kaspa.stream](https://tn10.kaspa.stream/). [explorer-tn10.kaspa.org](https://explorer-tn10.kaspa.org/) **paused**. |
| Desk Windows TN10 | kaspad **v2.0.1** restarted this pass. **Header IBD (0 bodies).** Do **not** mine until `Accepted N via relay` + bodies. |
| tn10 bot farm | Still the sandbox 150×1-thread farm. Do not retask kaspa bot. Do not paste TN10 into kaspa bot. |

`GetInfo` / `GetSyncStatus` `is_synced` is **nearly-synced + enough peers**, not a tip-following boolean. That gap is why unsynced `Found a block` still wastes work.

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
3. **Mainnet facts:** public REST `https://api.kaspa.org`. (kaspa bot / `159.223.110.159:28492` retired 25 Sep 2026.)
4. **Do not** spin a third mainnet archival.

Probe: [`scripts/probe-nodes.ps1`](scripts/probe-nodes.ps1).

---

## Hands off

- No seeds, mnemonics, `wallet.txt`, xpub, or private keys in this file or in chat.
- No desk force-stop of kaspa bot.
- No TN10 netsuffix on the mainnet datadir.
- No restoring STP-KAS/wallet-integration inject code.

# Crypto finance — desk law (Grok Build / Ask / Bot)

**Not a KIP. Not a dollar. Not a seed store.** Freeze: **17 Sep 2026**.

Consolidated from Grok Build session search (64 indexed sessions on this machine), the public Grok Ask share links already in this encyclopedia, and Grok Bot TN10 / daily-Kaspa prompts. **No seed phrases, mnemonics, private keys, or wallet files belong in this repo or in Grok memory.** Recheck live pins in [`README.md`](README.md) before quoting numbers.

Front door for dApp developers: [STP-KAS/kaspa-dapps](https://github.com/STP-KAS/kaspa-dapps). This file is the money argument + session map, not a second encyclopedia.

---

## What was actually searched

| Source | What this pass could read | Honest limit |
| --- | --- | --- |
| **Grok Build** | `~/.grok/sessions/session_search.sqlite` — 64 sessions. Almost all Kaspa / Toccata / rails / wallet / x402 work since late Jul 2026. | Session index, not a full replay of every tool log. |
| **Grok Ask (grok.com)** | Public shares already pinned: [X share](https://x.com/i/grok/share/c59cba827c574d028607693855b2e5fc), [grok.com share](https://grok.com/share/bGVnYWN5_13075cb2-2ed7-48ac-9e88-861102ca4b4b), KaspaSilver share in the KaChat session. | This machine has **no grok.com transcript dump**. Ask chats that were never shared are not here. |
| **Grok Bot** | Daily Kaspa/DAGKnight review session; TN10 wallet bot prompt in [STP-KAS/groks-wallet](https://github.com/STP-KAS/groks-wallet). | Bot memory is per-bot, not this encyclopedia. Do not paste a bot seed into a prompt. |

Sessions that fed this file (titles only): Kaspa dApp map; PoW stablecoin vs Tether PoC; BitCoffee KUSD + Ishum till; PegLab vs Parker; groks-wallet TN10 hard audit; kaspa-x402 / sixpack.wtf; BankQuote essays; Argent tweet rewrite + argent-xai; KNS overlay; Gramlane Darwin; KaChat Silver; DAGKnight notebook; kaspa.org vs kaspaexplained; cyberstp (seeds called out as *not* the risk — cold wallets). Full pin list stays in the README.

---

## Desk law (kill only with evidence)

1. **Native KAS is the dApp unit.** Proof of work, UTXO, fair launch, no issuer freeze. Satoshi’s test still holds: there is no `addBlackList` on a native UTXO.
2. **Skip centralized stables as the dApp unit or as gas.** USDT/USDC are issuer IOUs. Ethereum+Tron freeze record (Bitquery to 12 Aug 2026): **11,085** freeze events, **$5.85B** held at freeze, **$1.43B** destroyed. Bridging onto Kasplex does **not** remove Tether’s key. If the unit can be frozen, the dApp can be frozen.
3. **Dual rail is the only honest merchant path today:** keypad in EUR/USD, settle in native KAS (QR / `kaspa:` URI). Guest USDT may be offered **labelled**. Never `useAsGas()`.
4. **Fill is not a business.** This desk keeps **0**. Anyone’s Kaspa wallet. In-page inject is **Kasware / Kastle only** until a public wallet ships **KCC-0012** (still Draft, `kccs#24`).
5. **A compiler tag is not an audit.** SilverScript **v1.0.0** (`3ed9733`, 9 Sep 2026) is the pin. `#234` foreign `readInputState` still closed unmerged. `#250` / `#251` still **open**. Do not write `(State[] a, State[] b) = states.split(n)` on this pin.
6. **Argent is not product.** No GitHub tag. README still not release-ready. **PR #63 merged 14 Sep** — leader/delegate rules 5 and 6 now compile. Still unaudited. Gramlane stays **one own-UTXO**. Do not ship Argent ICC in a till. Getting-started (16 Sep): [`README.md` §4d](README.md).
7. **PoC dollars are not dollars.** Parker receipt = teaching unit (1 sompi outputs fail KIP-9 storage mass on TN10). PegLab tPEG **WILL DEPEG**. BitCoffee KUSD is the only L1 covenant dollar *candidate* this desk verified on-chain — peg unproven, no wallet pay path. Ishum kUSD is a till *seat*, not BitCoffee. 1kUSD is research.
8. **HTTP 402 binds [elldeeone/kaspa-x402](https://github.com/elldeeone/kaspa-x402).** Steal Kali’s `kaspa-channel` lock. Do not invent a fourth envelope. Do not call k402 “x402”. Mainnet still blocked on Luke’s binding.
9. **KCC-20 is Draft.** Not a gram token. Grams = KIP-21 mass + WorkCredit. [argent-lang/kcc20-reference](https://github.com/argent-lang/kcc20-reference) is **WIP** (empty README, `#1` open) — not the standard. [Manyfestation/kcc20-live](https://github.com/Manyfestation/kcc20-live) is an offline Argent demo; its `.ag` **swaps** `borrow_guard`/`borrow_scheme` vs the Draft spec (KCC-1 field order is the ABI). Do not weld that demo, the silverscript example, or KaspaKaha’s frozen template into one “KCC20.”
10. **Merged Active KIP = law. A tweet is not.** Toccata (KIP-16/17/20/21) live. DAGKnight (KIP-2) not shipped. vProgs no product testnet. Kurrent / MWEB-like are forum threads.
11. **When this master file is named, use the desk Grok Bot stack.** kaspa bot = mainnet archival (public `159.223.110.159:28492`). tn10 bot = TN10 RPC `127.0.0.1:16210` on the sandbox + miners to the locked `kaspatest:` pay-to. Card: [`DESK-BOT.md`](DESK-BOT.md). Do not re-ask. Do not paste TN10 into kaspa bot. Do not share seeds.

---

## What is live vs not (17 Sep 2026)

| Live | Not live / not product |
| --- | --- |
| GHOSTDAG, 10 BPS, Toccata spend rules | DAGKnight, 100 BPS, vProgs product testnet |
| SilverScript v1.0.0 compiler tag | Audited dApps; `State[].split()` tuples; foreign `readInputState` |
| Native KAS, QR / `kaspa:` pay | A Kaspa dollar you can list tomorrow |
| Kasware / Kastle in-page inject | KCC-0012 adopted; every website auto-discovers wallets |
| elldeeone x402 on **TN10** | x402 charging on mainnet; k402 as adopted KCC-0402 |
| Argent compiler + playground + template (local runtime) | Argent tag, audit, network-submitted txs from the template |

Credible sources, same footing: [kaspa.org](https://kaspa.org) and [kaspaexplained.com/status](https://kaspaexplained.com/status). Money argument: [kaspa-dapps RAILS.md](https://github.com/STP-KAS/kaspa-dapps/blob/main/RAILS.md).

---

## Seeds and keys (do not share)

- Never paste a seed, mnemonic, or private key into a website, Discord, Telegram, Grok Ask, Grok Bot, or this file.
- Never commit `wallet.txt`, `.wallet`, keystores, or recovery phrases.
- TN10 toy wallets are still secrets. Cold-wallet seeds stay offline.
- Official wallet door: https://wiki.kaspa.org/wallet

If a session log ever contained a seed, it does **not** belong in memory topics or in GitHub. Delete it at the source.

---

## Related GitHubs (this pass)

Argent org (4 public, 17 Sep): `argent` · `argent-playground` · `argent-template` · `kcc20-reference` (WIP). Details: README §4 and §4d.

This desk: kaspa-dapps (front door) · kaspa-master-file (this encyclopedia) · groks-wallet (TN10, public address only) · Xai.Kaspa.node (kaspa bot mainnet ritual) · peglab-poc · ishum · argent-xai · grok-kaspa-collab · xai-reasoning-3 · kaspa-x402 tracking via sixpack.wtf.

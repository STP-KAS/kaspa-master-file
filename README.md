# Kaspa master file

**Not Kaspa core. Not official KNS.** Public pin list by [@StppStp](https://x.com/StppStp) / [STP-KAS](https://github.com/STP-KAS). Freeze: **6 Sep 2026**.

Gramlane vision: **skip centralized stablecoins for dapps.** Cheap L1 grams instead of USDC-for-dApps. Still a delusional idea. Fill is one Kaspa tx: miners get the fee (security budget); the amount is whoever hosts. Anyone can run the binary. The jar is not Nakamoto.

This is a map. Merged Active KIP = law. Open PR, personal wiki, Discord rumor ≠ a pin. Gramlane tab: http://127.0.0.1:8081/masterfile

Repo: **kaspa-master-file** (the “kaspa mister fil”).

---

## 1. Official sites

| What | URL | Note |
| --- | --- | --- |
| kaspa.org | https://kaspa.org | Real-time decentralization. Fair launch. |
| LORE | https://kaspa.org/lore | History + shipped (Crescendo, Toccata). |
| Wiki | https://wiki.kaspa.org | Community wiki. Wallets: https://wiki.kaspa.org/wallet |
| Docs | https://github.com/kaspanet/docs | kaspanet docs repo |
| Toccata guide | https://docs.kaspa.org/toccata | Official programmability guide. Live on mainnet. Tooling still young. |
| Research forum | https://research.kas.pa | vProgs, sequencing, bridges |
| kaspa.news | https://kaspa.news | Public recaps of Core R&D Telegram (not the channel itself). |
| Kaspalytics | https://www.kaspalytics.com | Learn: Toccata, SilverScript. Not core. |
| Explorer | https://explorer.kaspa.org | L1 txs |
| Node API | https://api.kaspa.org | Public REST. Not kasdomain. |
| Tracker | https://kaspaexplained.com/kips | Human KIP/KCC map, not law |
| Toccata status | https://kaspaexplained.com/toccata-status | Live claims table |

---

## 2. kaspanet GitHub (core org)

Org: https://github.com/kaspanet — 26 public repos. **Use these first.**

| Repo | URL | Status 5 Sep 2026 |
| --- | --- | --- |
| rusty-kaspa | https://github.com/kaspanet/rusty-kaspa | Reference node. Toccata **v2.0.0** (5 Jun 2026), **v2.0.1** (15 Jun). `master` 24 Aug. `dagknight` branch **4 Sep** — unmerged. |
| kips | https://github.com/kaspanet/kips | Improvement proposals |
| silverscript | https://github.com/kaspanet/silverscript | Covenant language. Pin **[v1-rc1](https://github.com/kaspanet/silverscript/releases/tag/v1-rc1)** (30 Aug, `c7d17a1`). No tagged `v1`. Not master. |
| kccs | https://github.com/kaspanet/kccs | Conventions. All **Draft**. |
| vprogs | https://github.com/kaspanet/vprogs | Provable computation. Research. No public testnet as product. |
| kaspa-python-sdk | https://github.com/kaspanet/kaspa-python-sdk | Python bindings |
| docs | https://github.com/kaspanet/docs | Documentation |
| research | https://github.com/kaspanet/research | Papers (vProgs yellow paper) |
| kaspad | https://github.com/kaspanet/kaspad | **Deprecated** Go node. Use rusty-kaspa. |
| cpuminer | https://github.com/kaspanet/cpuminer | CPU miner |
| dnsseeder | https://github.com/kaspanet/dnsseeder | DNS seeder |

Rusty tags: https://github.com/kaspanet/rusty-kaspa/releases/tag/v2.0.0 · https://github.com/kaspanet/rusty-kaspa/releases/tag/v2.0.1

---

## 3. KIPs (law vs not)

Source: https://github.com/kaspanet/kips — tracker https://kaspaexplained.com/kips

**Active / implemented (use):** 1, 4, 5, 9, 10, 13, 14 (Crescendo), 15, **16, 17, 20, 21** (Toccata, Active 15 Jul 2026).

Toccata PRs: [KIP-16 #31](https://github.com/kaspanet/kips/pull/31) · [17 #32](https://github.com/kaspanet/kips/pull/32) · [20 #35](https://github.com/kaspanet/kips/pull/35) · [21 #36](https://github.com/kaspanet/kips/pull/36)

**Proposed / draft / not product:** KIP-2 DAGKnight (Proposed since 2022; rusty `dagknight` open PRs #1120 #1119 #1104 as of 4 Sep 2026). KIP-6 Draft. KIP-3 Rejected.

KIP-21 lanes are 20-byte `subnetwork_id`s, ≤50 non-coinbase lanes/block, 1e9 gas/lane. **Not** Gramlane book stamps MSG1/SEQ1.

100 sompi/gram is **min-relay policy**, not a KIP number.

---

## 4. Interesting GitHubs (not kaspanet)

| Repo | URL | Honest |
| --- | --- | --- |
| argent-lang/argent | https://github.com/argent-lang/argent | Multi-actor covenants. Not production SC. |
| KaspaKii/Portrait | https://github.com/KaspaKii/Portrait | Public 1 Sep 2026. Testnet-only, unaudited. |
| STP-KAS/gramlane | https://github.com/STP-KAS/gramlane | This desk. Grams, kasdomain. |
| STP-KAS/project-delusional | https://github.com/STP-KAS/project-delusional | Stack index |
| STP-KAS/kaspa-till | https://github.com/STP-KAS/kaspa-till | Reserved kUSD till. Not a peg. |
| STP-KAS/kns | https://github.com/STP-KAS/kns | Indexer names. Not kasdomain. |
| vsmirn0v/KaChat | https://github.com/vsmirn0v/KaChat | Other product. Gramlane does not clone E2E. |
| KASRANKS/KASSWORD | https://github.com/KASRANKS/KASSWORD | Other vault. Pointer only. |
| aglov413/kaspa-pqv | https://github.com/aglov413/kaspa-pqv | Posted to Core R&D **27 Aug 2026**. Hash-based PQ vault, **TN10 only**, unaudited. |
| trillskillz/OpenSilver | https://github.com/trillskillz/OpenSilver | Community SilverScript pattern lib (22 patterns). **Not kaspanet. Not externally audited.** Pins its own silverc, not always v1-rc1. |
| thesheepcat/K | https://github.com/thesheepcat/K | Decentralized microblog. Not this desk. |
| coderofstuff/rusty-kaspa | https://github.com/coderofstuff/rusty-kaspa | Unofficial DAGKnight work. **Not a pin.** |
| coderofstuff/dk-wiki | https://github.com/coderofstuff/dk-wiki | Unofficial wiki. **Not a pin.** |
| parker2017code/kaspa-explained | https://github.com/parker2017code/kaspa-explained | Tracker source for kaspaexplained.com |

L2 (out of Gramlane path): Igra, Kasplex — live elsewhere. This stack stays L1.

---

## 5. Core + builder X handles

Yonatan’s own “rough core” list (30 Apr 2025): michaelsutton, hashdag, coderofstuff_, someone235, freshair08, biryukovmaxim, reshmem, aspect, tiram88, elichai, tmrlvi, D-Stacks. Inspect https://github.com/kaspanet and https://research.kas.pa — DYOR. **“Core” is not a legal title.**

| Person | X | Role (public) |
| --- | --- | --- |
| Yonatan Sompolinsky | [@hashdag](https://x.com/hashdag) | Founder / research |
| Michael Sutton | [@michaelsuttonil](https://x.com/michaelsuttonil) | Lead protocol |
| Ori Newman | [@OriNewman](https://x.com/OriNewman) | Core (GitHub someone235) |
| coderofstuff | [@coderofstuff_](https://x.com/coderofstuff_) | Core contributor |
| FreshAir08 | [@FreshAir08](https://x.com/FreshAir08) | Research / fees |
| Hans Moog | [@hus_qy](https://x.com/hus_qy) | Core / KEF-funded |
| Romain Billot | [@IzioDev](https://x.com/IzioDev) | Core / KEF-funded |
| Maxim Biryukov | [@biryukovmaxim](https://x.com/biryukovmaxim) | Core (KIP-21) |
| Shai Wyborski | [@DesheShai](https://x.com/DesheShai) | GHOSTDAG co-author; later left core (his 2025 farewell). Not a current pin as “core”. |
| Aviv Zohar | [@Avivz78](https://x.com/Avivz78) | Co-author GHOST / research |
| Kaspa (community X) | [@kaspaunchained](https://x.com/kaspaunchained) | Non-representative community account |
| Kaspa global | [@KASPAglobal](https://x.com/KASPAglobal) | 3 Sep 2026: Toccata live, not “coming soon”. |
| Kaspa Commons | [@Kaspa_Commons](https://x.com/Kaspa_Commons) | Relays Discord (e.g. Ori Newman TN10 notes). Not core. |
| This project | [@StppStp](https://x.com/StppStp) | Gramlane / project delusional. **Never DMs you.** |
| Luke Dunshea | [@elldeeone](https://x.com/elldeeone) | SilverScript v1-rc1 credit. GitHub [elldeeone](https://github.com/elldeeone). |
| Sivan Helfer | [@manyfest_](https://x.com/manyfest_) | SilverScript v1-rc1. GitHub [Manyfestation](https://github.com/Manyfestation). |

---

## 5b. SilverScript v1-rc1 people (ties)

Source: [releases/tag/v1-rc1](https://github.com/kaspanet/silverscript/releases/tag/v1-rc1) (tagged by **someone235** = Ori Newman, 30 Aug 2026) + GitHub contributor counts on `kaspanet/silverscript`. Copilot bot omitted. Heart on the release from `mw-pearson` is **not** a credit.

| GitHub | commits* | X | Who | Ties |
| --- | --- | --- | --- | --- |
| [someone235](https://github.com/someone235) | 134 | [@OriNewman](https://x.com/OriNewman) | Ori Newman | **Lead.** Tagged v1-rc1. KIP-17. rusty-kaspa. Medium someone235. |
| [michaelsutton](https://github.com/michaelsutton) | 20 | [@michaelsuttonil](https://x.com/michaelsuttonil) | Michael Sutton | Review. KIP-21. **Argent** (argent-lang). KCC-0020 co-author. rusty-kaspa. |
| [IzioDev](https://github.com/IzioDev) | 10 | [@IzioDev](https://x.com/IzioDev) | Romain Billot | Review. KEF-funded (from ~Dec 2025). KCC-0020 co-author. KIP-25 (draft, with Ori+Sutton). izio.fr. |
| [Manyfestation](https://github.com/Manyfestation) | 9 | [@manyfest_](https://x.com/manyfest_) | Sivan Helfer | Compiler, DAP debugger, PR #130 state decode. **KCC-0020** co-author. Kas-Smiths. Argent RPS demo. |
| [elldeeone](https://github.com/elldeeone) | 2 | [@elldeeone](https://x.com/elldeeone) | Luke Dunshea | Groth16 builtin [PR #138](https://github.com/kaspanet/silverscript/pull/138). Node connectivity. Kaspa x402. dunshea.au. |

\*Contributor API on the live repo (5 Sep 2026), not a legal ranking.

**Graph (honest):** Ori writes the language → Manyfestation tools + KCC conventions with Izio + Sutton → Sutton also owns Argent (emits SilverScript) → elldeeone ZK builtin. Language grammar is **CashScript-inspired** (Rosco Kalis, MIT) — CREDITS.md, not a Kaspa person.

KCC-0020 authors overlap this table: Manyfestation, Sutton, Billot. That is why Gramlane treats KCC-20 as a **draft to refuse**, not as GRAM.

---

## 6. Discord + Telegram (channels and APIs)

### Discord (Kaspa)

| | |
| --- | --- |
| Invite | https://discord.gg/kaspa |
| Guild id | `599153230659846165` |
| Public widget API | `GET https://discord.com/api/guilds/599153230659846165/widget.json` | **Disabled** (HTTP 50004) as of 5 Sep 2026. No public member JSON. |
| Bot API docs | https://discord.com/developers/docs/intro |
| Gateway | https://discord.com/developers/docs/topics/gateway |

Dev fund votes live in Discord `#funding-pools` / `#votes` (community process, not consensus). This file does **not** run a Discord bot.

### Telegram (Kaspa groups — Telegram Inc. product)

| Group | URL | Note |
| --- | --- | --- |
| Main | https://t.me/kaspa | General |
| English | https://t.me/kaspaenglish | Community English |
| Core R&D (public, mostly observe) | https://t.me/kasparnd | Core write-restricted. **~2,958 members** (5 Sep). `t.me/s/kasparnd` does **not** show a public message archive — join in Telegram. Recaps: [kaspa.news](https://kaspa.news). |

Telegram Bot API (platform, not Kaspa): https://core.telegram.org/bots/api · https://core.telegram.org/bots

**Gramlane “Telegram” is a joke name** for AES-GCM notes paid in grams. It is **not** Telegram Messenger, **not** this Bot API, **not** KaChat E2E.

---

## 7. News freeze (5 Sep 2026)

- Toccata **live** on mainnet (DAA `474_165_565`, ~30 Jun 2026). KIPs 16/17/20/21 Active 15 Jul 2026.
- rusty-kaspa **v2.0.1** is the Toccata maintenance tag.
- silverscript **v1-rc1** only release. `#234` foreign `readInputState` **closed unmerged**. `#243` consume() budget still open.
- KCC-0020 **Draft**. Issue [#14](https://github.com/kaspanet/kccs/issues/14) supply-split still open. Not a gram token.
- Portrait (Kii) public **1 Sep 2026**, testnet-only.
- DAGKnight: KIP-2 still Proposed; `dagknight` branch moving (PRs 4 Sep) — **not shipped**.
- kaspa.org rebuilt around “real-time decentralization” (2026). 10 BPS live. 100 BPS is a target, not a spec.
- Official Toccata guide: https://docs.kaspa.org/toccata — consensus live; SilverScript/Argent/vProgs tooling still early.
- **v1-rc1 + 7 days** would be ~6 Sep. As of **5 Sep 2026 there is still no tagged `v1`**.

### From Core R&D Telegram (via public recaps — not a scrape of private Discord)

Telegram R&D is observer-only for most people. Discord `#development` / `#research-general` is the other core room. Widget API is off, so this file does not invent Discord counts.

| When | What | Source |
| --- | --- | --- |
| 27 Aug 2026 | PQ vault spend on **TN10** (ordinary script, no ZK opcode). Repo `kaspa-pqv`. | Posted in Core R&D; [kaspa.news](https://kaspa.news/articles/post-quantum-vault-spends-on-kaspa-testnet-using-existing-script) |
| 22–23 Aug | Argent synced to current SilverScript (Sutton merge). | kaspa.news |
| 23 Aug | KaspaKaha testnet AMM against **draft** KCC-0020. Experiment, not a standard. | kaspa.news |
| 3 Sep | `@KASPAglobal`: Toccata is live (DAA 474,165,565). Not coming soon. | X |
| 3–4 Sep | Framing / foreign-state reads: Sutton says `#234` closed because history assumptions; Scopio/supertypo tests still show slide on unmodified silverc. **Gramlane still never `readInputState`s a foreign UTXO.** | kaspa.news 4 Sep |
| 4 Sep | rusty-kaspa `dagknight` PRs still **open/draft**. | GitHub |

---

## 8. Intel pack (2026-09-04) — public facts only

Folded from the community intel pack. Full dated text: [`intel-pack.md`](intel-pack.md). **Local Telegram/Discord dump paths in that file are this machine, not public dumps.** Mentions ≠ endorsement. Recheck DAA/supply/PR state before quoting.

### L1 snapshot (api.kaspa.org, 4 Sep 2026)

| Item | Number | Recheck |
| --- | --- | --- |
| Virtual DAA | **530,957,175** | `/info/blockdag` |
| Circulating | **~27.681B KAS** of ~28.704B max | `/info/coinsupply` |
| Block reward | **2.31246515 KAS** (~23.12 KAS/s). Next step DAA **531,207,000** | coinbase / blockreward |
| Hashrate | **~315 PH/s** (treat API field carefully) | `/info/hashrate` |
| Covenants (Aug 24 baseline) | **28,125** ever, **519** still active, **~1.53M KAS** in active covenants. TN10 still dominates. | kaspaexplained Aug refresh |

**Do not claim:** 100 BPS live; instant irreversible payments; DAGKnight is consensus; mature native SC; KCC-0020/0021/0402 adopted; Silverscript v1 stable; vProgs live; Portrait or kaspa-pqv on mainnet; Gramlane is Kassword / KCC-20 / Argent.

### Filters (transcripts)

Yonatan (digital cash, cohesive tooling, core ≠ product) → Sutton (L1 covenant / single based app **now**; multi-program vProgs **later**) → Telegram R&D (how) → Discord (wallet/fee/merchant demand). vProgs: sequencing+DA on L1, execution off L1, validity proofs. Solana-shaped accounts, not EVM.

### Extra GitHubs (high-signal, not all 565)

| Repo | Why |
| --- | --- |
| [argent-lang/argent](https://github.com/argent-lang/argent) | Sutton multi-actor frontend. **#55 merged 2 Sep** actor template identity. Unaudited demos. |
| [argent-lang/argent-playground](https://github.com/argent-lang/argent-playground) | Examples |
| [argent-lang/argent-template](https://github.com/argent-lang/argent-template) | Episode-01 ticketing demo |
| [kaspanet/vprogs#139](https://github.com/kaspanet/vprogs/pull/139) | **Open.** ExitLeaf + claim kit. Also #138/#140. No testnet. |
| [kaspanet/kccs#20](https://github.com/kaspanet/kccs/pull/20) | **Open draft.** KCC-20 vectors. Transfer sig unconfirmed. |
| [kaspanet/silverscript#223](https://github.com/kaspanet/silverscript/pull/223) | **Merged.** Dispatch tags ↔ KCC-1 (IzioDev). |
| [supertypo/simply-kaspa-indexer](https://github.com/supertypo/simply-kaspa-indexer) | Indexer (TG+Discord overlap) |
| [aspectron](https://github.com/aspectron) kdx / kaspa-ng | Wallet gravity |
| [azbuky/kaspium_wallet](https://github.com/azbuky/kaspium_wallet) | Mobile |
| [someone235/native-assets-zk-poc](https://github.com/someone235/native-assets-zk-poc) | Native assets + ZK (TG) |
| [risc0/risc0](https://github.com/risc0/risc0) | Prover stack referenced in R&D |
| [hmoog/kas-l2](https://github.com/hmoog/kas-l2) | L2 adjacency. **Out of Gramlane path.** |

TG-dense, Discord-light: silverscript, vprogs, Argent, kccs, python-sdk — treat as R&D map.

### Extra people / X

| Who | Where |
| --- | --- |
| [parker2017code/kaspa-explained](https://github.com/parker2017code/kaspa-explained) | Site source for kaspaexplained.com |
| [progdoc.izio.fr](https://progdoc.izio.fr) | IzioDev programmability tree |
| [kas-smiths.org](https://kas-smiths.org) | KCC workshop (Manyfestation). Not a KIP. |
| [portrait.kaspa-kii.org](https://portrait.kaspa-kii.org) | Portrait site. Opaque `Portraitt.co/…` tokens **404**. |
| supertypo | Sil #234 (closed); kccs #23; indexer |
| ShawnPearce | kccs #20 |
| Knitser | KCC-0021; kccs issue #14 |
| biryukovmaxim | vProgs + rusty Toccata cleanup |
| hmoog / @hus_qy | vProgs earlier node/bridge |
| saefstroem | KCC-0; rusty ZK SDK |
| D-Stacks | rusty #991 UTXO index (open) |
| palacharlanarendra, Drcryptodee | Sil #238 / #244 open — skip until v1 |

### Gramlane filter (from that pack)

**Now:** pinned v1-rc1 WorkCredit (`validateOutputState` only); grams not KCC-20; POS/Pay; one kasdomain; `/234`; pointers to Kassword/pqv/Portrait.  
**Not us:** DAGKnight, silverc master, #234 retry, guessed compute budget, Argent ICC, vProg exits, L2 stables.

---

## 9. Gramlane (this stack)

- Live local: http://127.0.0.1:8081
- Pins: http://127.0.0.1:8081/sources · http://127.0.0.1:8081/kip-21
- This file in the dApp: http://127.0.0.1:8081/masterfile
- Unit: 1 gram = 1 KIP-21 mass unit. Fill jar = KAS to desk. No convert-back. Shops take **KAS**.

Machine copy: [`master.json`](master.json)

JSON on the dApp: http://127.0.0.1:8081/api/masterfile

---

## 10. Local corpora (26–27 Jul 2026) — extracted, not uploaded

Raw dumps stay on this machine. **No chat logs, photos, or DiscordKit files in this repo.**

| Dump | What it actually is |
| --- | --- |
| `Downloads\Telegram Desktop\ChatExport_2026-07-27` | Telegram export titled **【A G E N C . D E V】** (15 Mar–27 Jul 2026). **Not** `t.me/kasparnd`. Solana agent marketplace. |
| `Documents\adiscord api` | 41 Kaspa Discord channel dumps (cut ~25–26 Jul 2026). Guild Kaspa. |

### Discord (Kaspa) — high-signal

Channels that matter for builders: `development`, `covenants`, `research-general`, `zero-knowledge`, `ecosystem-projects`, `explorer-and-rest-api`, `help-wallet`, `merchants`, `layer-2s`. Mining/off-topic are volume, not app design.

| Signal | Detail |
| --- | --- |
| Token uniqueness | `#covenants` Dec 2025: Ori points to [CAT Protocol](https://catprotocol.org/) (parent+grandparent UTXO). Later L1 answer is **KIP-20 covenant id** (outpoint), not a copied script. |
| TN12 vs TN10 | IzioDev 6 Jun 2026: **do not use testnet-12**. Toccata is on **testnet-10**. |
| Silverscript builtins | Discord → [silverscript#122](https://github.com/kaspanet/silverscript/issues/122): expose `OpCheckSigFromStack` (0xd7) and `OpZkPrecompile` (0xa6). Ori: open an issue. elldeeone later landed Groth16 as #138. |
| Workshop | [IzioDev/workshop-london-2026](https://github.com/IzioDev/workshop-london-2026) — SilverScript runtime notes. |
| Indexer / REST | [lAmeR1/kaspa-rest-server](https://github.com/lAmeR1/kaspa-rest-server), [lAmeR1/kaspa-explorer](https://github.com/lAmeR1/kaspa-explorer) |
| Wallets (who-what-where) | kaspium, kaspaper, kaspa-ng / aspectron, [forbole/kastle](https://github.com/forbole/kastle) |
| Node monitor | [imalfect/KaspaNodeMonitor](https://github.com/imalfect/KaspaNodeMonitor) |
| Tax CSV | [coderofstuff/kaspa-transaction-report](https://github.com/coderofstuff/kaspa-transaction-report) |
| Contributors page | https://kaspa.org/contributors/ + rusty-kaspa graphs |
| L2 (out of Gramlane) | Kasplex indexer, [hmoog/kas-l2](https://github.com/hmoog/kas-l2), kastle — Discord `#layer-2s` |

Demand that matches the intel pack: wallet UX, fees, merchants, “is SilverScript the hardfork?” (no: Toccata is consensus; silverc is a compiler).

### Telegram export — AgenC (Solana), not Kaspa R&D

| | |
| --- | --- |
| GitHub org | [tetsuo-ai/AgenC](https://github.com/tetsuo-ai/AgenC) · [agenc-core](https://github.com/tetsuo-ai/agenc-core) · [agenc-protocol](https://github.com/tetsuo-ai/agenc-protocol) · [agenc-marketplace-agent-kit](https://github.com/tetsuo-ai/agenc-marketplace-agent-kit) |
| Sites | agenc.tech · docs.agenc.tech · agencone.com |
| Rails | Solana + x402. Ledger Agent Stack. Their notes claim OtterSec on a program — **verify on-chain, do not copy the claim**. |
| Gramlane | **Not integrated.** Same filter as the intel pack: AgenC is a Solana agent marketplace. |

---

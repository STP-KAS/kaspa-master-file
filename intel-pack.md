# Kaspa High-Value Intel Master Pack

**Date:** 2026-07-26 (registry updated **2026-09-04**)  
**Purpose:** Single index of community + founder intel for future projects.

---

## Status freeze — 2026-09-04

Live L1 snapshot (api.kaspa.org, this date) plus kaspaexplained.com / rusty-kaspa / GitHub evidence. Recheck DAA/supply before quoting. Delta since 2026-09-02 freeze is **Part E**.

**Auto-refresh:** every Monday 09:00 Europe/Brussels (`kaspa-master-intel-monday`). Next run 2026-09-07. Each run rewrites this freeze + a short “This week” delta; Parts A–D stay unless a cited fact is now false.

| Item | Status | Evidence |
| --- | --- | --- |
| Consensus | **Live** GHOSTDAG. DAGKnight = KIP-2 Proposed, not mainnet. rusty-kaspa DK PRs are open (#1104, #1119, #1120). | kaspaexplained.com/status; KIP-2 |
| Block rate | **Live** 10 BPS (Crescendo, May 2025) | rusty-kaspa releases |
| Programmability | **Live** Toccata, 30 Jun 2026, DAA **474,165,565**. Covenants (KIP-17), covenant IDs (KIP-20), ZK precompile (KIP-16), sequencing commitments (KIP-21). Node line v2.0.1. Toccata cleanup PRs #1082–#1087 merged (dead activation machinery removed). | v2.0.0 / v2.0.1; Toccata guide; rusty-kaspa |
| Virtual DAA | **530,957,175** | api.kaspa.org/info/blockdag (2026-09-04) |
| Circulating supply | **~27.681 billion KAS** (27,680,752,953) of ~28.704B max | api.kaspa.org/info/coinsupply |
| Block reward | **2.31246515 KAS** (23.12465141 KAS/s). Next step DAA **531,207,000** still ahead. No cliff. | coinbase.rs; blockreward API |
| Hashrate | **~315 PH/s** (API field ~314.5e3; treat as TH/s → PH/s) | api.kaspa.org/info/hashrate |
| Covenant adoption | Early, real. Aug 24 baseline: **28,125** covenants ever, **519** still active, **~1.53M KAS** in active covenants. TN10 still dominates activity. | kaspaexplained-com-REFRESH-2026-08.txt |
| Silverscript | **Experimental.** Portable ABI artifacts **merged** (#232, 28 Aug 2026). `v1-rc1` is still the pin for mainnet-shaped work. Foreign `readInputState` framing guard **#234 closed unmerged**. Artifact has **no compute-budget estimate** (#243 open). README still says prefer TN10 until tagged v1. | kaspanet/silverscript |
| vProgs | **Roadmap.** Repo active (updated 2 Sep 2026). No testnet, no releases. Host-side claim kit **#139 open** (ExitLeaf + permission spend). Resource indexer **#140 open**. | kaspanet/vprogs |
| Argent ICC | Unaudited offline demos only. Not production SC. **#54** uses upstream Sil ABI. **#55 merged 2 Sep 2026**: in-app actor template identity (reject overlapping frames). | argent-lang/argent |
| KCC-0020 | Spec text merged, **Status: Draft**. Conformance vectors **#20 open draft** (transfer signature unconfirmed). Not a ratified token standard. KCC-0021 / 0402 still open drafts. | kaspanet/kccs |
| Native DeFi | **Roadmap.** Do not pitch as live. | /status claim table |
| Portrait | **Pre-production, unaudited, testnet-only.** Covenant language + pattern library (Stichting Kii Foundation). Not a Gramlane clone target. | KaspaKii/Portrait · portrait.kaspa-kii.org |
| kaspa-pqv | Hash-based PQ vault **in Kaspa script** (SLH-DSA + LMS). Confirmed **TN10** spends. **Not audited. Not mainnet.** | aglov413/kaspa-pqv |
| Kassword | Browser PQ password vault + on-chain locker (Schnorr/HLMT/HTLC/DMS/recovery/PQ-cold). Authors claim mainnet deploys. **External. Do not impersonate.** | KASRANKS/KASSWORD |

**Do not claim:** 100 BPS live; instant irreversible payments; DAGKnight is current consensus; mature native smart contracts; KCC-0020/0021/0402 adopted; Silverscript v1 stable; vProgs live; Portrait or kaspa-pqv on mainnet; Gramlane is Kassword / KCC-20 / Argent.

**Narrative asset (this update):** `C:\Users\Remco\Documents\kaspa-attenborough-2026\kaspa-a-natural-history-2026.mp4` — Attenborough wildlife-doc parody, updated from the Apr 2025 CryptoQTK clip (`x.com/CryptoQTK/status/1908285242412003694`). Ethos kept (fair launch vs memes/VC coins; Kaspa as the evolved predator). Facts updated: Crescendo 10 BPS, Toccata covenants/ZK live, vProgs still in the wings. Script: `SCRIPT.md` / `narration.txt`. 720p share copy: `kaspa-a-natural-history-2026-720p.mp4`.

---

## Resource registry (keep these)

| ID | Path | What it is | Value |
| --- | --- | --- | --- |
| **R-TG-RND** | `C:\Users\Remco\Documents\atelgram rd\` | Core R&D Telegram cleans (11 files) | Critical protocol design |
| **R-DISCORD** | `C:\Users\Remco\Documents\adiscord api\` | 41 Discord channel dumps | Ecosystem, product demand, timeline |
| **R-TRANSCRIPTS** | `C:\Users\Remco\Documents\atranscriptskaspa\` | Founder/core deep dives | Architecture intent, narrative |
| **R-GITHUB** | `kaspa-github-repos-*.csv/json/md` (this folder) | All GitHub repos mentioned in TG+Discord | Code map / dependency radar |
| **R-DOCS** | docs.kaspa.org, **kaspaexplained.com** | Canonical + builder framing | Spec truth + status labels |
| **R-DOCS-REFRESH** | `kaspaexplained-com-REFRESH-2026-08.txt` | Aug 2026 site refresh (adoption, fact-check, demos) | Prefer for current numbers |
| **R-DOCS-REPO** | https://github.com/parker2017code/kaspa-explained · site kaspaexplained.com | Site source + CLAIMS.yml + demos + publish gates | Machine-checkable status referee |
| **R-KASSMITHS** | `C:\Users\Remco\Documents\aaapikassmith\` | Kas-Smiths forum API dump | KCC20 / standards workshop |
| **R-AGENC** | `C:\Users\Remco\Documents\aatelegram agenC sol\` | AgenC Solana Telegram export + cleans | Agent-economy case study |
| **R-ARGENT** | https://github.com/orgs/argent-lang/repositories | Argent org (compiler, playground, template) | Multi-covenant app language tooling |
| **R-ARGENT-EP01** | https://github.com/argent-lang/argent-template/tree/episode-01 · local `Documents\argent-template` | Episode-01 ticketing (Event/Ticket) | Hands-on Argent multi-actor demo |
| **R-SIL-ABI** | https://github.com/kaspanet/silverscript/pull/232 | Portable `SilAbiArtifact` (merged 28 Aug 2026) | Compiler/debugger/external tooling share one JSON ABI |
| **R-SIL-234** | https://github.com/kaspanet/silverscript/pull/234 | Input-state framing guard | **Closed unmerged.** Foreign `readInputState` still the 42-byte class. |
| **R-KCCS-P20** | https://github.com/kaspanet/kccs/pull/20 | KCC-0020 first-cut conformance vectors | **Open draft.** BLAKE3 state/dispatch/template vectors. Transfer tag pending. |
| **R-VPROGS-139** | https://github.com/kaspanet/vprogs/pull/139 | zk-abi ExitLeaf + permission claim builder | Host-side settled-exit kit. Not a product. |
| **R-PORTRAIT** | https://github.com/KaspaKii/Portrait · https://portrait.kaspa-kii.org | Portrait language + covenant pattern library (Kii) | TN-only. User paste `Portraitt.co/{fmry9yu4sB,tb0y7uozNe}` 404s; canonical repo is `Portrait`. |
| **R-PQV** | https://github.com/aglov413/kaspa-pqv | Post-quantum hash-based P2SH vault | SLH-DSA (stateless) + LMS (stateful). TN10. Toccata opcodes only. |
| **R-KASSWORD** | https://github.com/KASRANKS/KASSWORD | PQ password vault + Kaspa Locker | External PWA. Pointer only. |
| **R-DOCS-GH** | https://github.com/parker2017code/kaspa-explained | kaspaexplained.com site source | GitHub only |
| **R-X-IZIO** | https://x.com/IzioDev · https://progdoc.izio.fr | IzioDev / programmability tree | Builder path + tooling education |
| **R-X** | `x-handles-credible-sources-insert-index.txt` | Tiered Kaspa X handles | Pointer sources (not primary proof) |
| **R-NARRATIVE-2026** | `C:\Users\Remco\Documents\kaspa-attenborough-2026\` | Attenborough Kaspa film (Sep 2026 remake of Apr 2025 CryptoQTK piece) | Public-facing ethos + fact-checked VO |

### Derived files (this pack)

| File | Contents |
| --- | --- |
| **`PUBLISHED-kaspa-strategy-decision-pack.txt`** | **Published decision pack (flagship + stack + verdict)** |
| `kaspa-high-value-intel-master.md` | This index + transcript analysis + GitHub strategy |
| `kaspa-github-repos-intel.csv` | **565 repos**, mentions, TG/Discord flags, category |
| `kaspa-github-repos-intel.json` | Same as JSON |
| `kaspa-github-repos-full.md` | Full categorized tables with links |
| `kaspa-github-repos-all-urls.txt` | Plain URL list |
| `kaspa-discord-corpus-analysis.md` | Discord channel value tiers |
| `kaspa-discord-future-projects-analysis.md` | Project radar from Discord |
| `kaspa-post-toccata-1-everyday-life-consumer.md` | Everyday Life app map |
| `kaspaexplained-com-insert-index.txt` | **kaspaexplained.com** page map, status model, builder tree |
| `kaspaexplained-com-REFRESH-2026-08.txt` | Aug 2026 refresh: covenant adoption, claim table, demos |
| `parker2017code-kaspa-explained-repo-insert.txt` | github.com/parker2017code/kaspa-explained (site source) |
| `atranscriptskaspa-insert-index.txt` | Transcript folder inventory (Sutton vProgs + Yonatan S16E41) |
| `argent-lang-github-insert-index.txt` | argent-lang org: argent / playground / template |
| `argent-template-episode-01-insert-index.txt` | episode-01 Event/Ticket ticketing demo |
| `x-handles-credible-sources-insert-index.txt` | X handles: tiered core builders |
| `kas-smiths-api-insert-index.txt` | Kas-Smiths dump inventory + KCC20/x402 signals |
| `kaspa-opportunity-reevaluation-agenc-and-beyond.txt` | AgenC + open opportunity re-eval |
| `agenc-on-kaspa-idea-brief.txt` | AgenC→Kaspa architectural brief |
| `kaspa-offline-program-localsettle-recommendation.txt` | LocalSettle offline-program pick |
| `kaspa-stablecoins-impact-on-app-strategy.txt` | Stables / energy scenario impact |
| `PUBLISHED-kaspa-life-flagship-tier-list.txt` | Life-segment flagship tier list (Aug rewrite) |
| `updated raw flagship post tocotta.txt` | **Tier S rematched vs this master pack** |
| `raw other  stable coin ready.txt` | Stables-as-must checklist + threat table |
| `raw post-toccata cybersec data-vault intel-tiers.txt` | Cybersec / HV data / field↔HQ secure tiers |
| `raw kaspa privacy miner gateway.txt` | LAN solo-miner + Kaspa overlay hardware idea |
| `GUIDE-for-idea-maker-not-engineer.txt` | Non-technical lead: cut list, phases, scripts for builders |
| `agenc-on-kaspa-battle-test.txt` | AgenC V1–V4 battle test |
| `kaspa-a-natural-history-2026` (external folder) | Film + script + SRT. Remake of https://x.com/CryptoQTK/status/1908285242412003694 with Toccata-era facts |
| **Part E (this file)** | 2026-09-04 core/contributor GitHub delta: listed PRs + Toccata/Silverscript/Argent/vProgs/KCCS + adjacent vaults |

---

# Part A — Transcripts (high-value)

## A1. Michael Sutton — Vprogs masterclass

**File:** `atranscriptskaspa\kaspa-vprogs-masterclass-w-michael-sutton-must-watch.txt` (~85 KB, ~2170 lines)  
**Speakers:** Michael Sutton + host (Ankit)  
**Scope note (explicit):** *not* covering Dagnight or ZK circuit internals in this session.

### Core definition (quote-level)

Vprogs use **zero-knowledge / validity proofs** to create a **flat space of programs** that can **synchronously compose**:

- One transaction can touch **multiple state accounts from multiple programs**
- Programs stay **sovereign** (independent resource use / state isolation)
- Still able to **speak to each other**
- Enabled by a **shared sequencer = Kaspa L1**

Simplified framing used in the talk: *smart contracts with ZK, designed for Kaspa* — but the deeper framing is **tiny based rollups** with extra L1 machinery so standalone ZK units can still compose.

### Architecture model

| Role | Who does it |
| --- | --- |
| Sequencing | Kaspa L1 |
| Data availability | Kaspa L1 (txs appear on L1 as payload) |
| Execution | Off L1 (not executed by base nodes) |
| App state storage | Not maintained as full EVM-style global state on L1 |
| Settlement | L1 verifies ZK proofs; L2/vprog advances state **commitment** on L1 |

**Based rollup vs ETH modular stack:** ETH often splits DA / sequencing / settlement across entities. A **based** design puts those roles on the same L1 — sounder because L1 already knows its own sequencing (no external sequencer attestation).

### Trust argument (validity proofs)

“Off-chain execution” is not “untrusted”: users verify program identity (hash) the same way they trust an Ethereum contract hash, then ZK/validity proofs attest correct execution against rules. Prefer the term **validity proofs** over casual “ZK” when privacy is not the goal.

### Solana-shaped programming model

Vprogs intentionally map closer to **Solana** than classic EVM:

- Programs are **stateless black boxes**
- State lives in **accounts** a program can write
- Transactions **declare read/write sets** up front
- Enables a **computational DAG** / scheduling
- Cross-program calls need explicit composability, not “compiler compatibility”
- EVM is *less natural* here because of account/declaration model

### Runtime topology

- dApps deploy programs; **provers** run ZK work
- POC-style **vProg node** (Hans) stays stateful for chosen progs A/B/C
- Sync via P2P; checkpoint against L1 **pruning point**
- L1 **UTXO commitments** can encapsulate whole vprog space (each prog’s state commitment as UTXO) — pruning point attests the space

### Composability risk (research insight)

Sutton discusses **dependency graphs** between progs during a proof period: random-graph “giant component” explosion if too many composability edges form. Design goal: **cut proof sampling / batching before dependency blow-up** — critical for anyone building multi-program DeFi.

### Project implications from Sutton

| Build now (Toccata era) | Build when vProgs mature |
| --- | --- |
| L1 covenants / SilverScript money rules | Multi-program atomic apps |
| ZK proof verify hooks on L1 | Prover networks / vProg nodes |
| Account-declared tx UX research | Solana-dev migration kits |
| Honest “based app” single-app state | Cross-vprog DEX / lending composition |

**Do not** pitch full synchronous multi-app DeFi as “live today” — transcripts + Discord both treat full vProgs as **later architecture**.

---

## A2. Yonatan Sompolinsky — Bitcoin Takeover S16E41

**File:** `atranscriptskaspa\s16-e41-yonatan-sompolinsky-on-bitcoin-kaspa-proof-of-work.txt` (~410 KB, ~9400 lines)  
**Show:** Bitcoin Takeover podcast  
**Themes:** PoW, GHOSTDAG/BlockDAG, Bitcoin relationship, fair launch, scaling, DeFi/L2 vision, culture

### Kaspa identity (foundational)

- Kaspa as **generalization of Bitcoin’s protocol into a DAG**
- **No orphan blocks** (orphans are the chain problem Kaspa removes)
- Security should **not deteriorate** as you speed up (DAG research goal)
- Fair launch / PoW lineage; uncomfortable history around incentives (DAGKnight / early launch ethics discussed at length)
- Explicit distance from Bitcoin Core culture: large consensus changes (DAG selection) were never realistic to propose into BTC (SegWit-era climate)

### Product / ecosystem philosophy

- Aspiration: **cohesive monolithic-feeling ecosystem and tools**, not a **rollup zero-sum game** of fragmented L2s
- Smart contracts / ZK L2s / user UX: much of UX is **outside core responsibility** — core should not dictate full product surface
- Tension acknowledged: money base layer vs DeFi / non-money use cases; Bitcoin culture’s anti-DeFi streak vs need for extra use cases

### Keyword heat (rough)

Bitcoin-heavy conversation (expected for the show) + strong DAG / proof / wallet / payment / UTXO / rollup / Ethereum comparison density. Covenants and Crescendo appear; Igra mentioned lightly.

### Project implications from Yonatan

| Principle | Practical filter for your projects |
| --- | --- |
| Digital cash first | Prefer payments, wallets, POS, receipts over pure DeFi clones |
| Cohesive tooling | Reduce islands (KRC-20 vs L1 assets vs L2) |
| Core ≠ product | Ship user products on top; don’t wait for core to own UX |
| PoW security story | Mining/security narrative is ecosystem oxygen — not your app MVP |
| Based / L1-centric | Align with based settlement, not independent sequencer brands unless intentional |

---

## A3. How transcripts + Discord + Telegram fit together

```
Yonatan (why Kaspa exists: PoW cash + DAG scale)
        │
        ▼
Sutton (how rich apps should work: based vProgs + composition)
        │
        ▼
Telegram R&D (how to implement: Silverscript, Argent, KCC, KIPs, forks)
        │
        ▼
Discord (what users/builders actually hit: wallets, KRC-20, fees, merchants)
```

Use **transcripts for intent**, **TG for design**, **Discord for demand**, **GitHub list for code entry points**.

---

# Part B — GitHub intel (all repos from TG + Discord)

## B1. Extraction summary

| Metric | Value |
| --- | --- |
| Unique repos | **565** |
| Total URL mentions | **~7,862** |
| In both TG + Discord | **38** (highest-signal overlap) |
| Telegram-only | **51** |
| Discord-only | **476** |
| Transcripts | **0** explicit GitHub URLs (speech dumps) |

**Method:** line scan for `github.com/org/repo` across all files; known export truncations normalized (e.g. `silverscrip` → `silverscript`, `argen` → `argent`, `kaspa-n` → `kaspa-ng`). Gist-hash false positives dropped. Mentions ≠ quality.

**Artifacts:**

- `kaspa-github-repos-intel.csv` / `.json` — machine-readable  
- `kaspa-github-repos-full.md` — **full categorized list with links**  
- `kaspa-github-repos-all-urls.txt` — one URL per line  

---

## B2. Categories (auto-tagged)

| Category | ~Repos | Meaning for projects |
| --- | --- | --- |
| **core-node** | 52 | Rusty Kaspa, kaspad, research, docs |
| **mining** | 51 | Miners, stratum, OC tools (noise for app builders; critical for network) |
| **wallets** | 41 | Consumer critical path |
| **explorer-api-index** | 22 | Indexers, REST, explorers |
| **programmability-zk** | 19 | Silverscript, Argent, vProgs, KIPs, KCCS, RISC0, ZK PoCs |
| **sdk-tooling** | 14 | SDKs, workflow, RPC clients |
| **l2-assets-bridge** | 14 | L2 / bridge / asset adjacent |
| **other-ecosystem** | 352 | Long tail + references (Bitcoin BIPs, deps, one-offs) |

---

## B3. Highest-signal repos (by role)

### Protocol / programmability (start here for Toccata-era builds)

| Repo | Why |
| --- | --- |
| [kaspanet/rusty-kaspa](https://github.com/kaspanet/rusty-kaspa) | Current node (2358 mentions; TG+DC) |
| [kaspanet/kips](https://github.com/kaspanet/kips) | Specs (KIP-16/17/20/21…) |
| [kaspanet/silverscript](https://github.com/kaspanet/silverscript) | **L1 covenant language** (59 TG — densest non-node TG signal) |
| [kaspanet/vprogs](https://github.com/kaspanet/vprogs) | Based computation framework (20 TG / rare in Discord) |
| [michaelsutton/argent](https://github.com/michaelsutton/argent) | Multi-covenant / actor-style frontend (TG-heavy) |
| [michaelsutton/argent-playground](https://github.com/michaelsutton/argent-playground) | Examples (DEX PoC patterns) |
| [kaspanet/kccs](https://github.com/kaspanet/kccs) | Covenant conventions / standards work |
| [michaelsutton/silverscript](https://github.com/michaelsutton/silverscript) | Fork/work branches |
| [risc0/risc0](https://github.com/risc0/risc0) | ZK stack referenced in R&D |
| [someone235/native-assets-zk-poc](https://github.com/someone235/native-assets-zk-poc) | Native assets + ZK experiments |
| [bitcoin/bips](https://github.com/bitcoin/bips) | Script/culture reference (both corpora) |

### Core forks / contributor nodes (integration reality)

`michaelsutton/rusty-kaspa`, `aspectron/rusty-kaspa`, `LiveLaughLove13/rusty-kaspa`, `biryukovmaxim/rusty-kaspa`, `IzioDev/rusty-kaspa`, `D-Stacks/rusty-kaspa`, `saefstroem/rusty-kaspa`, `someone235/rusty-kaspa`, …

### Wallets / UX

| Repo | Notes |
| --- | --- |
| aspectron/kdx, kaspa-wallet*, kaspa-ng | Major wallet/dev stack gravity |
| azbuky/kaspium_wallet | Mobile wallet discussions |
| svarogg/kaspaper | Paper wallets |
| LedgerHQ/*, OneKeyHQ/* | Hardware wish-path |
| coderofstuff/app-kaspa, kasvault | App experiments |

### Indexers / APIs / explorers

`supertypo/simply-kaspa-indexer`, `lAmeR1/kaspa-rest-server`, `lAmeR1/kaspa-explorer`, `kaspagang/kaspad-py-explorer`, `imalfect/KaspaNodeMonitor`, `kaspa-live/kaspa-graph-inspector`, …

### SDKs / tooling

`kaspanet/kaspa-python-sdk`, `workflow-rs/workflow-rs`, `Cryptok777/kaspa-rpc-client`, `K-Kluster/kaspa-js`, `smartgoo/kaspa-python-sdk`, …

### Mining (high Discord volume — low app-design value)

`tmrlvi/kaspa-miner`, `elichai/kaspa-miner`, `rdugan/*stratum*`, `Lolliedieb/lolMiner-releases`, `bzminer/bzminer`, IceRiver OC tools, …

### L2 / bridges (ecosystem adjacency)

`hmoog/kas-l2`, `KaspaPulse/kaspa-bridge-perigee`, Igra-related forks when present, KRC-20 app repos under coinchimp / community, …

---

## B4. Telegram-only gems (often missed if you only scrape Discord)

These appear in **R&D Telegram** but little/no Discord — treat as **insider map**:

| Repo | Mentions (TG) | Intel |
| --- | --- | --- |
| kaspanet/silverscript | 59 | Covenant authoring center of gravity |
| kaspanet/vprogs | 20 | Official vProgs direction |
| michaelsutton/argent | 6 | Composition tooling |
| risc0/risc0 | 6 | Prover stack |
| kaspanet/kaspa-python-sdk | 9 | SDK path |
| kaspanet/kccs | 3 | Standards |
| someone235/native-assets-zk-poc | 4 | Asset design |
| michaelsutton/argent-playground | 2 | Worked examples |
| a19q3/Kurren | 5 | Channels / app research adjacency |
| saefstroem/rusty-kaspa | 11 | Active contributor fork |
| noir-lang/awesome-noir | 2 | Alternate ZK DSL interest |

---

## B5. Overlap set (both TG + Discord) — trust this list first

38 repos including:  
`kaspanet/rusty-kaspa`, `kips`, `silverscript`, `vprogs`, `docs`, `research`, `cpuminer`, multiple `rusty-kaspa` forks, `simply-kaspa-indexer`, `workflow-rs`, `bitcoin/bips`, `facebook/rocksdb`, `hmoog/kas-l2`, etc.

**Rule of thumb:** if a repo is in **both** corpora, it is either core infrastructure or a repeatedly needed dependency.

---

## B6. How to use the GitHub catalog for future projects

| If you are building… | Clone / study first |
| --- | --- |
| Node integration / fees / Toccata fields | `kaspanet/rusty-kaspa` + `kaspanet/kips` + `kaspanet/docs` |
| Covenant / vault / escrow / tokens | `kaspanet/silverscript` + `kaspanet/kccs` + `michaelsutton/argent*` |
| Based apps / long-term multi-program | `kaspanet/vprogs` + Sutton transcript |
| Wallet product | aspectron wallet stack + kaspium + rusty wallet APIs |
| Indexer / explorer / receipts | simply-kaspa-indexer + lAmeR1 REST/explorer |
| Payments SDK | python/js SDKs + RPC clients |
| Mining pool product | stratum bridges + miner repos (Discord-heavy) |
| L2 bridge analytics | kas-l2, bridge repos + layer-2s Discord channel |

---

# Part C — Unified project filter (all intel sources)

Score future ideas against:

1. **Yonatan filter:** Does it strengthen *digital cash* or only add fragmenting DeFi noise?  
2. **Sutton filter:** Is it L1 covenant / single based app *now*, or does it need full vProg composition *later*?  
3. **Discord filter:** Do users already fail at the UX (wallets, fees, tokens, merchants)?  
4. **Telegram filter:** Is there an actual repo/KIP/standard to build on?  
5. **GitHub filter:** Is the dependency in the catalog, maintained, and not a dead fork?

### Recommended “intel-backed” build order

1. **Wallet + fee-correct Toccata UX** (Discord demand + rusty-kaspa)  
2. **SilverScript templates** vault/escrow/allowance (TG silverscript + Argent)  
3. **Covenant-aware indexer/API** (indexer repos + covenants channel)  
4. **Invoice/POS micropayments** (KIP-9/10 culture + merchant Discord)  
5. **KCC / native asset product** (kccs + TG KCC20 design + avoid KRC fragmentation)  
6. **vProg experiments** only after 1–4 (vprogs repo + Sutton model)

---

# Part D — Quick open commands

```powershell
# Full repo table
Invoke-Item "C:\Users\Remco\Documents\kaspa-github-repos-full.md"

# Machine filter: programmability only
Import-Csv "C:\Users\Remco\Documents\kaspa-github-repos-intel.csv" |
  Where-Object category -eq 'programmability-zk' |
  Sort-Object { [int]$_.mentions_total } -Descending |
  Format-Table mentions_total, mentions_telegram_rd, mentions_discord, repo

# Both corpora
Import-Csv "C:\Users\Remco\Documents\kaspa-github-repos-intel.csv" |
  Where-Object { $_.in_both -eq 'True' } |
  Sort-Object { [int]$_.mentions_total } -Descending |
  Select-Object -First 40 repo, mentions_total, mentions_telegram_rd, mentions_discord
```

---

*Mentions are corpus frequency, not endorsement. Always verify repo activity, license, and mainnet readiness before shipping.*

---

# Part E — 2026-09-04 core + contributor delta

Pulled 2026-09-04 from GitHub API + PR pages + api.kaspa.org. This is the working set for **Gramlane** (L1 work credits, no fake USD, no L2, no clones). User-supplied URLs are first; then neighbouring Toccata / Silverscript / Argent / vProgs / KCCS / rusty-kaspa / KIPs; then adjacent products we must not impersonate.

## E1. User-supplied sources (resolved)

| Source | State (2026-09-04) | What it actually is | Gramlane filter |
| --- | --- | --- | --- |
| [kaspanet/kccs#20](https://github.com/kaspanet/kccs/pull/20) | **Open draft** (ShawnPearce, 29 Aug) | First-cut KCC-20 JSON vectors: `KCC20State` 112 B, dispatch tags `transfer=79c71c23` / `transfer_delegator=fd3ef14a`, BLAKE3 template hash. Self-checked against KCC-1 §11. **Transfer signature still pending confirmation.** Next: borrow witness, owner-scheme bytes, descriptor hash. | **Do not mint a KCC-20 named GRAM.** Vectors ≠ a live token. Spec remains Draft. |
| [argent-lang/argent#55](https://github.com/argent-lang/argent/pull/55) | **Merged** 2 Sep (`d08e52d`, michaelsutton) | In-app actor template identity. Covenant ID = closed app domain. Reject actor pairs whose prefix/suffix frames can collapse to the same script. `Artifact::verify()` order: schema → Sil ABI → template frames → template plan → identity. 469 tests. | Gramlane is **one** WorkCredit covenant, not an Argent multi-actor app. Do not generate two actors with the same template. |
| [kaspanet/vprogs#139](https://github.com/kaspanet/vprogs/pull/139) | **Open** (biryukovmaxim, 2 Sep) | Host-side settled-exit kit: `ExitLeaf`, aggregate-prover `ExitsForBundle` channel, `app-kit/claim.rs` permission-spend builder. Stack: sits on indexer-hook; `exit-index` follows (#138/#140 also open). | **vProgs later.** Do not pitch exits/claims as Gramlane. Sutton filter: L1 covenant now. |
| [kaspanet/silverscript#232](https://github.com/kaspanet/silverscript/pull/232) | **Merged** 28 Aug (`db9e1ba`, someone235) | Portable `SilAbiArtifact`: schema/compiler versions, structs, contracts, entry params, dispatch tags, bytecode, template hashes, state spans. `silverc` emits this JSON instead of internal `CompiledContract`. No syntax/bytecode/runtime change intended. Imported ABI crate from Argent, then Argent #54 switched to **upstream** Sil ABI. | WorkCredit-live.json is already `schema_version: 1`. Stay on **pinned v1-rc1 bytecode**. Parser must accept map *or* array `contracts`. Do not recompile onto master just to “upgrade ABI”. |
| [KASRANKS/KASSWORD](https://github.com/KASRANKS/KASSWORD) | Public, pushed 28 Aug | Browser PQ password vault (Argon2id, XChaCha20-Poly1305, ML-KEM-1024, ML-DSA-87) + **Kaspa Locker** covenants: Schnorr / HLMT / HTLC / DMS / recovery / PQ-cold. No server. Authors claim mainnet deploys + 1,500-loop harness. | **External.** Pointer only. Gramlane vault job is a gram-billed *action*, not this locker. |
| [aglov413/kaspa-pqv](https://github.com/aglov413/kaspa-pqv) | Public, pushed 27 Aug | Hash-based PQ **P2SH** vault using **existing Toccata opcodes** (KIP-10/17, v1 `compute_budget`). SLH-DSA-SHA2-128s (stateless, ~97 KB tx, 0.23 TKAS) vs LMS h=15 w=2 (stateful, ~25 KB, 0.06 TKAS). Four TN10 spends confirmed. **Not audited. Not mainnet.** Off-chain LMS signing is the known hole (core-dev critique). | **External / research.** Proves Toccata script is enough for FIPS-205 verify. Do not ship as Gramlane. |
| `KaspaKii/Portraitt.co/fmry9yu4sB` and `…/tb0y7uozNe` | **404** on GitHub | Opaque tokens. Canonical project is **[KaspaKii/Portrait](https://github.com/KaspaKii/Portrait)** (homepage [portrait.kaspa-kii.org](https://portrait.kaspa-kii.org)). Covenant language + “OpenZeppelin-equivalent” pattern library. MIT, Stichting Kii Foundation. **Pre-production, unaudited, testnet-only.** Compiles `.portrait` → Silverscript. Lens (SMT) + Composer. | **Do not clone.** Gramlane bills work; it is not a second covenant language. |

## E2. Silverscript (kaspanet + contributors)

Pin for Gramlane: **v1-rc1** (`c7d17a1`, Ori Newman / someone235). RC ≠ tagged v1.

| PR / issue | Who | State | Intel |
| --- | --- | --- | --- |
| [#232](https://github.com/kaspanet/silverscript/pull/232) ABI artifacts | someone235 + michaelsutton compact JSON | **merged** | See E1. |
| [#223](https://github.com/kaspanet/silverscript/pull/223) dispatch-tag revision | IzioDev | **merged** 27 Aug | Aligns compiler tags with KCC-1. Pairs with kccs#19 (merged). |
| [#234](https://github.com/kaspanet/silverscript/pull/234) Input state framing guard | supertypo | **closed, not merged** | Same 42-byte class: amount 1 vs vault 264. Gramlane WorkCredit **must not** `readInputState` a foreign voucher. Live diagram: `/234`. |
| [#243](https://github.com/kaspanet/silverscript/issues/243) no compute-budget in artifact | mw-pearson | **open** | Spend cost discovered by node rejection on TN10. `consume()` stays a later 2-sig; do not guess budget. |
| [#137](https://github.com/kaspanet/silverscript/pull/137) r0 support / [#138](https://github.com/kaspanet/silverscript/pull/138) Groth16 builtin | someone235, elldeeone | **merged** | ZK front-end on Sil. Not required for WorkCredit grams. |
| [#238](https://github.com/kaspanet/silverscript/pull/238) later fields reference earlier | palacharlanarendra | **open** | Language sugar. Skip until v1. |
| [#244](https://github.com/kaspanet/silverscript/pull/244) ABI crate license | Drcryptodee | **open** | Housekeeping. |
| README | — | current | “Experimental… prefer bytecode on testnet-10 until first stable release (v1).” |

**Contributors landing here:** someone235 (Ori Newman), michaelsutton, IzioDev, supertypo, elldeeone, palacharlanarendra, Drcryptodee, Manyfestation (older compiler PR #15 closed unmerged).

## E3. Argent (argent-lang, Sutton)

Org: `argent`, `argent-playground` (pushed 2 Sep), `argent-template`.

| PR | State | Intel |
| --- | --- | --- |
| [#54](https://github.com/argent-lang/argent/pull/54) Use upstream Sil ABI | **merged** 31 Aug | Deletes local `silverscript-abi` copy so formats cannot drift from #232. |
| [#55](https://github.com/argent-lang/argent/pull/55) actor template identity | **merged** 2 Sep | See E1. Security docs under `docs/security-invariants`. |
| [#44](https://github.com/argent-lang/argent/pull/44) bounded ranges on consumes/emits | **open draft** | Not production. |
| [#56](https://github.com/argent-lang/argent/pull/56) ISC license on runtime/artifact | **open** | License hygiene. |
| #1 a19q3 route coverage; #3 name hygiene; #7–#10 ICC / observed covenants / digest-backed state | **merged** (Jun–Aug) | Multi-actor ICC is Argent’s job. Gramlane does not implement ICC. |

**Do not claim** Argent is production smart contracts. Intel freeze still: unaudited offline demos.

## E4. vProgs (kaspanet/vprogs — biryukovmaxim / hmoog)

No testnet. No releases. Active construction of a based-runtime:

- **#139 open** — ExitLeaf + permission claim (E1).
- **#138 open** — exit index + permission spend watcher.
- **#140 open** — ResourceIndexer hooks.
- Snapshot stack **#127 / #128 / #129 / #130** (builder / save / restore / verify) — mixed open/closed.
- **#132** reorg recovery **merged**; **#136** reorg-flapped-fork survival **open**.
- Early node/bridge work: hmoog (#7 L1 bridge, #11 node framework, #16 CLI, …).

Sutton transcript still applies: sequencing/DA on L1, execution off L1, validity proofs later. **Build order item 6 — after wallet, Sil templates, indexer, POS.**

## E5. KCCS (kaspanet/kccs)

All KCCs are **Calls for Conventions**, not consensus. Status on README (main): 0, 1, 2, 20 = **Draft**.

| PR | State | Note |
| --- | --- | --- |
| #2 KCC-0020 spec | **merged** 20 Aug (Manyfestation; Sutton merge) | Fungible token covenant. Still Draft. |
| #3 KCC-0001 | **merged** (IzioDev) | Covenant ABI concepts. |
| #5 KCC-0002 | **merged** (IzioDev) | Authority schemes. |
| #17 KCC-0 | **merged** (saefstroem) | Meta / guidelines. |
| #16 / #18 | **merged** (Manyfestation) | Extended-state fungibility; hash-chain borrow front-running. |
| #19 dispatch-tag hardening | **merged** (IzioDev) | Pairs with silverscript #223. |
| **#20 vectors** | **open draft** | E1. |
| #6 KCC-0021 metadata | **open** (Knitser) | Do not claim adopted. |
| #4 KCC-0402 payment channels | **open** (Kali123411) | Do not claim adopted. |
| #23 KCC-2 p2pk-ecdsa 0x05/0x06 | **open** (supertypo) | |
| #8–#12 jeffsiegel1965 multi-token dump | **closed unmerged** | Noise; do not treat as standards. |
| Issue #14 (Knitser) | **open** | `extension_commitment` vs consolidation rule — spec still fights itself. |

**Gramlane:** grams are WorkCredit inventory + policy 100 sompi/gram. A KCC-20 would look DEX-listable. Skip.

## E6. rusty-kaspa + KIPs + Toccata (core)

Toccata is **live**. Cleanup of activation machinery:

| PR | State |
| --- | --- |
| rusty-kaspa #1082–#1087 Toccata cleanup parts 1–5 + P2P follow-ups | **merged** (biryukovmaxim, michaelsutton) |
| #1104 DAGKnight executor rewrite; #1119 tmp dk manager; #1120 DK TN params | **open** — DK is **not** mainnet |
| #991 UtxoIndex keyed by DAA + `get_utxos_by_addresses_v2` | **open** (D-Stacks) |
| kips #45 mark KIPs 16/17/20/21 active | **closed** (landed or superseded — consensus already active) |
| kips #22 P2MR quantum-resistant SPK | **open** |
| kips #24 tx v1 fields/hashing; #25 compute budget | **open** (docs catching up to live Toccata) |
| kips #12 browser-extension wallet APIs; #39 multisig conventions | **open** |

docs.kaspa.org/toccata: consensus features are mainnet; **tooling is younger**.

## E7. How this changes the build order (use this)

Parts A–C still hold. 2026-09-04 sharpens **now vs later**:

| Now (Toccata L1, Gramlane) | Later / not us |
| --- | --- |
| Wallet + fee-correct v1 txs (Discord + rusty-kaspa) | DAGKnight |
| Pinned **v1-rc1** WorkCredit (validateOutputState only) | silverc master / #234 retry / guess compute_budget |
| POS / Pay / Stablegram in **grams** | KCC-20 token, KRC-20, L2 stables |
| One Kasdomain sign per address | Portrait language, Argent ICC, vProg exits |
| Honest pointers to Kassword / kaspa-pqv / Portrait | Clones of those products |
| `/234` framing diagram | Claiming foreign `readInputState` is safe |

Yonatan filter: digital cash, POS, receipts — keep. Sutton filter: single based app **now**. Telegram filter: silverscript + kccs exist; **do not wait for Final KCC-20**. GitHub filter: dependencies above are live repos, but several are draft/unmerged.

## E8. Contributor map (this pull)

| Person / org | Where they showed up this week |
| --- | --- |
| michaelsutton | Argent #54/#55, Sil compact ABI, Toccata P2P cleanup |
| someone235 (Ori Newman) | Sil #232 ABI, ECDSA tests, r0 |
| IzioDev | Sil dispatch tags #223, KCC-1/2, rusty-kaspa DK nits |
| biryukovmaxim | vProgs claim/exit/indexer stack; rusty-kaspa Toccata cleanup |
| hmoog | vProgs L1 bridge / node framework (earlier) |
| supertypo | Sil #234 (unmerged); kccs #23 ECDSA schemes |
| ShawnPearce | kccs #20 vectors |
| Manyfestation | KCC-20 spec + borrow/front-run fixes |
| saefstroem | KCC-0 |
| Knitser | KCC-21; issue #14 |
| a19q3 | Argent validation PRs |
| aglov413 | kaspa-pqv |
| KASRANKS | Kassword |
| KaspaKii / Stichting Kii | Portrait |
| palacharlanarendra, Drcryptodee, elldeeone, coderofstuff, LiveLaughLove13, D-Stacks | Sil / rusty-kaspa adjacent |

---

*Part E is a dated GitHub pull, not an endorsement. Recheck merge state before shipping against any PR still open.*

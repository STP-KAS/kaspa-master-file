# Kaspa master file

**Not Kaspa core. Not official KNS.** Public pin list by [@StppStp](https://x.com/StppStp) / [STP-KAS](https://github.com/STP-KAS). Freeze: **11 Sep 2026**.

**project delusional.** Kaspa master file — pins, ideas, principles. One principle: skip centralised stablecoins for dapps. Fill is not a business: this desk keeps 0. Any Kaspa wallet (QR / kaspa: URI). In-page inject is only Kasware/Kastle. The jar is not Nakamoto. Darwin battletest: [STP-KAS/gramlanepeglab](https://github.com/STP-KAS/gramlanepeglab). Receipt PoC after battling PegLab vs Parker: [STP-KAS/peglab-poc](https://github.com/STP-KAS/peglab-poc).

This is a map. Merged Active KIP = law. Open PR, personal wiki, Discord rumor ≠ a pin. Gramlane tab: http://127.0.0.1:8081/masterfile

Repo: **kaspa-master-file** (the “kaspa mister fil”). Grok heavy review of this freeze: [`GROK-HEAVY-REVIEW.md`](GROK-HEAVY-REVIEW.md). Think big / do-this-next: [`THINK-BIG.md`](THINK-BIG.md). Local URLs (`127.0.0.1`) are this machine, not GitHub.

### What this pass did (11 Sep 2026, second look)

Reviewed the freeze after it landed on `main` ([PR #1](https://github.com/STP-KAS/kaspa-master-file/pull/1)). Fixed what was still wrong or missing:

| Found | Change |
| --- | --- |
| `kaspaexplained.com/toccata-status` **Moved** | Point at [`/status`](https://kaspaexplained.com/status) (live referee). |
| Covenant counts had no official-sites row | Add [`/build-on-kaspa`](https://kaspaexplained.com/build-on-kaspa) (84,196 / 687 / ~1.56M KAS). |
| 2026 forum threads not newest-first | MWEB-like (8 Sep) listed first. |
| R&D log stopped at 4 Sep | Add 9–10 Sep: Sil v1.0.0, Argent #59/#60, Sil #249. |
| 402 path missing from this map | Pin [elldeeone/kaspa-x402](https://github.com/elldeeone/kaspa-x402) (TN10 alpha, bind this). [Kali123411/k402](https://github.com/Kali123411/k402) is HTTP 402 + a `kaspa-channel` lock ([kccs#4](https://github.com/kaspanet/kccs/pull/4) still open) — steal the lock, do not treat it as Kaspa’s x402 v2 binding. |
| vProgs #142 missing | Bridge lane-anchor **open** (10 Sep). Still not product. |
| Public intel-pack leaked `C:\Users\…` paths | Redact to `LOCAL`. Dumps stay off this repo. |
| `#250` still unmerged | Rechecked. `State[].split()` tuples still forbidden on v1.0.0. |

Pins **unchanged:** silverc **v1.0.0** (`3ed9733`); `#234` unmerged; `#243` open; Argent no tag; KCC-20 Draft; Toccata live; DAGKnight not shipped.

### Grok heavy review (after the freeze)

Machine review of `661d5bc..main`. Full notes: [`GROK-HEAVY-REVIEW.md`](GROK-HEAVY-REVIEW.md#grok-heavy-review-machine-pass-11-sep). Closed: stale “prefer Aug 24 numbers”, CSVs claimed in this GitHub folder, leftover dump paths, MWEB JSON order, k402 wording, “three vs four holes.”

### Think big (after the review)

The map is honest. The bottleneck is no TN10 receipt txids and no 402 that charges. Full authority orders: [`THINK-BIG.md`](THINK-BIG.md) — summary, step-by-step, 13 propositions. Track 0 public goods / Track 1 BTCPay-shaped software. Not a Kaspa dollar.

---

## 0. If you just showed up

Read first. Video second. Price talk is not a source.

Kaspa is **proof of work**. Miners spend energy. There is no staking. Fair launch: no premine. Blocks can be found in parallel; GHOSTDAG keeps the honest ones and puts them in order. About **10 blocks per second** on mainnet today. Toccata (spend rules / covenants) is **live**; wallets and tools are still catching up. A merged Active KIP is law. A tweet is not.

| What | URL | Note |
| --- | --- | --- |
| Kaspa Explained — start here | https://kaspaexplained.com/start-here | New to crypto, or already know it. Independent. Not kaspanet. |
| What is Kaspa? | https://kaspaexplained.com/what-is-kaspa | PoW, blockDAG, GHOSTDAG. Live vs roadmap. |
| Kaspa Explained | https://kaspaexplained.com/ | Short page, same facts. |
| FAQ | https://kaspaexplained.com/faq | Short answers with links. |
| kaspa.org | https://kaspa.org | Official. |
| Wallets | https://wiki.kaspa.org/wallet | Hold KAS. Never paste a seed into a website. |
| Video (community) | https://x.com/kaspaunchained/status/2096211914825285808 | @kaspaunchained, 5 Sep 2026. “Only gets better with age.” Older Odie clip. Not a spec. Not core. |
| Grok share (X) | https://x.com/i/grok/share/c59cba827c574d028607693855b2e5fc | Community share. Not a KIP. Recheck before quoting. |
| Faucets and mining | https://kaspa.aspectron.org/faucets-mining.html | Aspectron. Testnet faucets, mining entry, PNN. Not kaspanet. |
| Kaspa Q&A | https://qa.kas.pa/ | Community Q&A. Answers are not KIPs. |
| Kaspa Silver (YouTube) | https://www.youtube.com/channel/UCv8-2oyrfqDigJAKjZ_RCzQ | Honest protocol explainers. Not core. Not a price channel. |
| Kaspa Graph Inspector | https://kgi.kaspad.net/ | Live blockDAG view. Default visual for doors. |
| kaspa.stream | https://kaspa.stream/ | Explorer for ordinary reading of blocks and txs. |
| Testnet-10 faucet | https://faucet-testnet.kaspanet.io | Official-shaped TN10 faucet. Toy coins. |
| kaspa.org/build | https://kaspa.org/build | Official builder door: WASM, node, docs, faucet. |
| Grok share (build notes) | https://grok.com/share/bGVnYWN5_13075cb2-2ed7-48ac-9e88-861102ca4b4b | Community share. Not a KIP. |
| @manyfest_ note | https://x.com/manyfest_/status/2096312480586748371 | SilverScript / builder note. Not law. |
| The Book of Kaspa | https://www.amazon.com/Book-Kaspa-Realizing-Nakamoto-Dream/dp/B0CCCJ3936 | Guest book. Not consensus evidence. |
| Kaspa Ghost Knight | https://www.amazon.com/Kaspa-Ghost-Knight-blockchains-plight-ebook/dp/B0D2VK4PVR | Guest book. Not consensus evidence. |
| Kas Smiths | https://kas-smiths.org | Builder workshop (Manyfestation). kasmith.org is the same desk name; use this URL. Not a KIP. |
| Aviv Zohar | https://avivz.net | @Avivz78. GHOST co-author / research. |
| Discord (help) | https://discord.com/channels/599153230659846165/960905681832140850 | Kaspa Discord. Dedicated rooms exist. Invite: https://discord.gg/kaspa |
| Core R&D Telegram | https://t.me/kasparnd | Observer-first. Recaps: kaspa.news. |

---

## 1. Official sites

| What | URL | Note |
| --- | --- | --- |
| kaspa.org | https://kaspa.org | Real-time decentralization. Fair launch. |
| LORE | https://kaspa.org/lore | History + shipped (Crescendo, Toccata). |
| Wiki | https://wiki.kaspa.org | Community wiki. Wallets: https://wiki.kaspa.org/wallet |
| Docs | https://github.com/kaspanet/docs | kaspanet docs repo |
| Toccata guide | https://docs.kaspa.org/toccata | Official programmability guide. Live on mainnet. Tooling still young. |
| Research forum | https://research.kas.pa | Official Discourse. Threads ≠ KIPs. Catalog: §1b. |
| kaspa.news | https://kaspa.news | Public recaps of Core R&D Telegram (not the channel itself). |
| Kaspalytics | https://www.kaspalytics.com | Learn: Toccata, SilverScript. Not core. |
| Explorer | https://explorer.kaspa.org | L1 txs |
| Node API | https://api.kaspa.org | Public REST. Not kasdomain. |
| Kaspa Explained | https://kaspaexplained.com/ | Independent explainer. Not kaspanet. |
| Tracker | https://kaspaexplained.com/kips | Human KIP/KCC map, not law |
| Status referee | https://kaspaexplained.com/status | Live vs roadmap vs wrong. `/toccata-status` **Moved** here. |
| Build / covenants | https://kaspaexplained.com/build-on-kaspa | Covenant counts + builder routes. Sep 1 indexer baseline. |

---

## 1b. research.kas.pa

Official research forum (Discourse). **A thread is not a KIP. A KIP is not product until Active.** vProgs, Kurrent, elastic throughput, tail emission, adaptive block size are **research**. Gramlane stays L1 covenants; L2 / vProgs / channels are out of path.

JSON API if you want to re-check: `https://research.kas.pa/latest.json` · `https://research.kas.pa/categories.json` · `https://research.kas.pa/top.json?period=all`

### Forum + categories (rechecked 11 Sep 2026)

| What | URL | Honest |
| --- | --- | --- |
| Forum home | https://research.kas.pa | ~50 public topics. Pinned welcome (2019) is closed. |
| L1/L2 | https://research.kas.pa/c/l1-l2/11 | 17 topics. Bridge, vProgs, sequencing, DA, Kurrent. |
| Consensus | https://research.kas.pa/c/consensus/9 | 5 topics. Crescendo, KIP-10, red-block txs. |
| Economics | https://research.kas.pa/c/economics/6 | 4 topics. Issuance, adaptive size, tail emission. |
| Mining | https://research.kas.pa/c/mining/7 | 6 topics. Not this desk. |
| kaspanet/research | https://github.com/kaspanet/research | Papers (vProgs yellow paper). Not the forum. |

### 2026 threads (newest first)

| Thread | URL | Honest |
| --- | --- | --- |
| Optional privacy / MWEB-like (8 Sep 2026) | https://research.kas.pa/t/optional-privacy-layer-for-kaspa-similar-to-litecoin-mweb/522 | JackKas. One post, ~11 views. **Not a KIP. Not product.** |
| Kurrent (23 Jun 2026) | https://research.kas.pa/t/kurrent-an-eltoo-inspired-latest-state-channel-on-kaspa/494 | a19q3 (Arthur Zhang). Eltoo-inspired latest-state **bilateral** channel on KIP-17/20 + DAA-relative sequence. Non-confiscatory, **not watch-free**. Repo [a19q3/Kurrent](https://github.com/a19q3/Kurrent). Local-devnet evidence only. **Not product. Not Gramlane.** |
| Dynamic tail emission (6 Apr 2026) | https://research.kas.pa/t/dynamic-tail-emission-that-preserves-the-maximum-supply-to-secure-mining/473 | swarmshine. Economics. **Not a KIP. Kaspa has a max supply; this is a proposal.** |
| Adaptive block sizes (16 Feb 2026) | https://research.kas.pa/t/adaptive-block-sizes/464 | Bit_Cat; hashdag replied. Economics. **Not shipped.** |

### vProgs / L1↔L2 (design, not product)

Read these if you want the official research map. **No public vProgs testnet as product.**

| Thread | URL | Who / note |
| --- | --- | --- |
| Concrete vProgs architecture | https://research.kas.pa/t/concrete-proposal-for-a-synchronously-composable-verifiable-programs-architecture/387 | hashdag, Aug 2025. ~4k views. The vProgs pin. |
| Zoom-in: vProg computation DAG | https://research.kas.pa/t/zoom-in-a-formal-backbone-model-for-the-vprog-computation-dag/407 | michaelsutton, Aug 2025. |
| Transaction scopes / object DAG | https://research.kas.pa/t/on-transaction-scopes-and-the-visibility-of-the-object-dag/410 | hashdag, Aug 2025. |
| Pruning safety in vProgs | https://research.kas.pa/t/pruning-safety-in-the-vprogs-architecture/411 | FreshAir08. |
| Based ZK rollups over UTXO DAG | https://research.kas.pa/t/on-the-design-of-based-zk-rollups-over-kaspas-utxo-based-dag-consensus/208 | michaelsutton, Dec 2024. ~4k views. |
| Atomic composability (L1/L2) | https://research.kas.pa/t/atomic-composability-and-other-considerations-for-l1-l2-support/193 | hashdag, Nov 2024. Highest views on the forum (~6.6k). |
| L1↔L2 canonical bridge | https://research.kas.pa/t/l1-l2-canonical-bridge-entry-exit-mechanism/258 | michaelsutton. |
| Covenant + async message std | https://research.kas.pa/t/thoughts-about-covenant-and-async-message-standardization/293 | michaelsutton, Jan 2025. |
| Subnets sequencing commitments | https://research.kas.pa/t/subnets-sequencing-commitments/274 | FreshAir08 / Sutton. |
| Fees and throughput regulation | https://research.kas.pa/t/fees-and-throughput-regulation-dynamics/247 | hashdag. |
| L1↔L2 topics still open | https://research.kas.pa/t/updateable-list-of-l1-l2-topics-to-flesh-out-before-finalizing-design/237 | hashdag checklist. |
| Data availability | https://research.kas.pa/t/data-availability-concerns/375 | Hans_Moog. |
| Proofs stitching | https://research.kas.pa/t/a-basic-framework-for-proofs-stitching/323 | FreshAir08. |
| Multileader vs inclusion-time proving | https://research.kas.pa/t/on-the-inherent-tension-between-multileader-consensus-and-inclusion-time-proving/347 | michaelsutton. |
| Elastic throughput | https://research.kas.pa/t/a-proposal-towards-elastic-throughput/295 | hashdag. **Not 100 BPS. Not a spec.** |

### Forum threads that became KIPs (law is the KIP, not the thread)

| Thread | URL | Became |
| --- | --- | --- |
| Quadratic storage mass | https://research.kas.pa/t/quadratic-storage-mass-and-kip9/159 | **KIP-9 Active** |
| Additive addresses | https://research.kas.pa/t/auto-compounding-additive-addresses-kip10-draft/168 | **KIP-10 Active** |
| Hash / ZK opcodes | https://research.kas.pa/t/additional-practical-considerations-re-hash-function-and-zk-opcodes/219 | Toccata **KIP-16** discussion (most-liked thread) |
| Crescendo hardfork | https://research.kas.pa/t/crescendo-hardfork-discussion-thread/279 | **KIP-14** era. 10 BPS is live. |
| KIP-15 discussion | https://research.kas.pa/t/kip-15-discussion-thread/303 | **KIP-15 Active** (someone235) |
| KIP-6 discussion | https://research.kas.pa/t/kip-6-discussion-thread/189 | **KIP-6 still Draft** |

Older DAG/mining threads (2019–2022: pruning, DAA, ASIC mimicking, twelve-minutes) stay on the forum. They are history, not this freeze.

**Do not claim from this forum:** vProgs live, Kurrent mainnet, Lightning on Kaspa, tail emission changed, 100 BPS, DAGKnight.

---

## 2. kaspanet GitHub (core org)

Org: https://github.com/kaspanet — 26 public repos. **Use these first.**

| Repo | URL | Status 11 Sep 2026 |
| --- | --- | --- |
| rusty-kaspa | https://github.com/kaspanet/rusty-kaspa | Reference node. Toccata **v2.0.0** (5 Jun 2026), **v2.0.1** (15 Jun). No newer node tag. `dagknight` still unmerged. New DK work: [#1127](https://github.com/kaspanet/rusty-kaspa/pull/1127) draft (bounded UMC, 8 Sep), [#1124](https://github.com/kaspanet/rusty-kaspa/pull/1124) simpa adversaries. **Not shipped.** |
| kips | https://github.com/kaspanet/kips | Improvement proposals |
| silverscript | https://github.com/kaspanet/silverscript | Covenant language. Pin **[v1.0.0](https://github.com/kaspanet/silverscript/releases/tag/v1.0.0)** (Ori / someone235, **9 Sep 2026**, `3ed9733`). Official SemVer v1. Windows zip SHA256 `3e0d660c15a9e7ac90f3960da24d348b076b1891481bfe758db18accc8a102e1`. Language pragma in examples is still `^0.1.0`. `#234` foreign `readInputState` still **closed unmerged**. **New on this pin:** [#249](https://github.com/kaspanet/silverscript/issues/249) `State[].split()` tuple destructure fails (`__inline_*`); fix PR [#250](https://github.com/kaspanet/silverscript/pull/250) **open** (KaspaScopio, 10 Sep). `#243` compute-budget still **open**. |
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

**Proposed / draft / not product:** KIP-2 DAGKnight (Proposed since 2022; rusty `dagknight` still unmerged. Open/draft as of 11 Sep: #1127 bounded UMC, #1124 simpa, plus older #1122 / #1120 / #1119 / #1104). KIP-6 Draft. KIP-3 Rejected.

KIP-21 lanes are 20-byte `subnetwork_id`s, ≤50 non-coinbase lanes/block, 1e9 gas/lane. **Not** Gramlane book stamps MSG1/SEQ1.

100 sompi/gram is **min-relay policy**, not a KIP number.

---

## 4. Interesting GitHubs (not kaspanet)

| Repo | URL | Honest |
| --- | --- | --- |
| argent-lang/argent | https://github.com/argent-lang/argent | Multi-actor layer **above** Silverscript (Sutton). [PR #59](https://github.com/argent-lang/argent/pull/59) merged **8 Sep** (state vectors in `args!`). [PR #60](https://github.com/argent-lang/argent/pull/60) merged **10 Sep** pins sil **v1.0.0** + leader/delegate security guide. Two compiler rules still **[NOT IMPLEMENTED]**: continuation-closure, first-input for zero-continuation ordinary entries. README: **not release-ready**. No tag. |
| KaspaKii/Portrait | https://github.com/KaspaKii/Portrait | Public 1 Sep 2026. Testnet-only, unaudited. |
| STP-KAS/gramlane | https://github.com/STP-KAS/gramlane | This desk. Grams, kasdomain. |
| STP-KAS/project-delusional | https://github.com/STP-KAS/project-delusional | Stack index |
| STP-KAS/kaspa-till | https://github.com/STP-KAS/kaspa-till | Reserved kUSD till. Not a peg. |
| STP-KAS/kns | https://github.com/STP-KAS/kns | Indexer names. Not kasdomain. |
| STP-KAS/kns-spec | https://github.com/STP-KAS/kns-spec | Implementer kit. https://stp-kas.github.io/kns-spec/ KasName on silverc **v1.0.0**. |
| vsmirn0v/KaChat | https://github.com/vsmirn0v/KaChat | Other product. Gramlane does not clone E2E. |
| KASRANKS/KASSWORD | https://github.com/KASRANKS/KASSWORD | Other vault. Pointer only. |
| aglov413/kaspa-pqv | https://github.com/aglov413/kaspa-pqv | Posted to Core R&D **27 Aug 2026**. Hash-based PQ vault, **TN10 only**, unaudited. |
| trillskillz/OpenSilver | https://github.com/trillskillz/OpenSilver | Community SilverScript pattern lib (22 patterns). **Not kaspanet. Not externally audited.** Pins its own silverc, not always v1.0.0. |
| thesheepcat/K | https://github.com/thesheepcat/K | Decentralized microblog. Not this desk. |
| coderofstuff/rusty-kaspa | https://github.com/coderofstuff/rusty-kaspa | Unofficial DAGKnight work. **Not a pin.** |
| coderofstuff/dk-wiki | https://github.com/coderofstuff/dk-wiki | Unofficial wiki. **Not a pin.** |
| parker2017code/kaspa-explained | https://github.com/parker2017code/kaspa-explained | Tracker source for kaspaexplained.com. Public README **10 Sep**: V6 local journey 26 accepted TN10 txs; Cloudflare host is a separate gate. Wrap: **wTestUSD cannot buy crops.** |
| parker2017code/tn12-covenant-vault-demo | https://github.com/parker2017code/tn12-covenant-vault-demo | Historical escrow/vault evidence lab. **Do not use TN12 for Toccata product work** (IzioDev 6 Jun 2026). Steal rules; re-prove on TN10. |
| STP-KAS/peglab-stp | https://github.com/STP-KAS/peglab-stp | tPEG classroom. Admin oracle + 2 tKAS pool. **WILL DEPEG.** Not money. |
| STP-KAS/peglab-poc | https://github.com/STP-KAS/peglab-poc | Battle-tested receipt PoC. Parker unit + PegLab warning. Two tracks: public goods, or BTCPay-shaped software company. **Not USD.** ENGINE_SPEC until TN10 txids. |
| a19q3/Kurrent | https://github.com/a19q3/Kurrent | Eltoo-inspired latest-state channel. Forum [494](https://research.kas.pa/t/kurrent-an-eltoo-inspired-latest-state-channel-on-kaspa/494). Devnet evidence. **Not product.** |
| elldeeone/kaspa-x402 | https://github.com/elldeeone/kaspa-x402 | Intended **x402 v2** binding. TN10 alpha. Site [kaspa-x402.org](https://kaspa-x402.org). Bind this envelope; do not invent a fourth 402. |
| Kali123411/k402 | https://github.com/Kali123411/k402 | HTTP 402 + `kaspa-channel` lock/voucher. [kccs#4](https://github.com/kaspanet/kccs/pull/4) still open. Steal the lock. **Not** elldeeone’s x402 v2 binding. **Not** adopted KCC-0402. |

L2 (out of Gramlane path): Igra, Kasplex — live elsewhere. This stack stays L1. Kurrent is L1-channel research, still out of Gramlane path.

---

## 4b. KNS (official) — names are inscriptions

Not kasdomain. Not this desk’s covenant P2SH. Source of truth is KNS GitBook.

| What | URL | Honest |
| --- | --- | --- |
| Docs home | https://kns-2.gitbook.io/kns-docs-1/ | Official GitBook. Index: `/llms.txt` |
| Inscriptions | https://kns-2.gitbook.io/kns-docs-1/inscriptions/overview | Commit-reveal. Envelope id `kns`. Resolver uses simply-kaspa-indexer. |
| Create / transfer / list / send | https://kns-2.gitbook.io/kns-docs-1/inscriptions/operations | Ops + fee on reveal output 0 |
| Supporting wallets | https://kns-2.gitbook.io/kns-docs-1/supporting-wallet | KasWare + Kastle **extension** inscribe. Kastle **mobile does not**. Kurncy + Kasanova mobile inscribe in-app. **No ECDSA addresses.** |
| KasWare tutorial | https://kns-2.gitbook.io/kns-docs-1/supporting-wallet/kasware-wallet-tutorial.md | |
| Kastle tutorial | https://kns-2.gitbook.io/kns-docs-1/supporting-wallet/kastle-wallet-tutorial.md | Two popups |
| Kurncy tutorial | https://kns-2.gitbook.io/kns-docs-1/supporting-wallet/kurncy-wallet-tutorial.md | [@KurncySolutions](https://x.com/KurncySolutions) |
| Kasanova tutorial | https://kns-2.gitbook.io/kns-docs-1/supporting-wallet/kasanova-wallet-mobile-tutorial.md | [@KasanovaWallet](https://x.com/KasanovaWallet) |
| Indexer API | https://kns-2.gitbook.io/kns-docs-1/kns-indexer-api | Owner, check, profile, primary. OpenAPI https://apidoc.knsdomains.org/mainnet/ |
| Integration rules | https://kns-2.gitbook.io/kns-docs-1/kns-indexer-api/integration-important-note | URL-encode, graphemer, ens-normalize, resolve warning |
| App | https://app.knsdomains.org | Product |
| API | https://api.knsdomains.org/mainnet | Resolver |
| simply-kaspa-indexer | https://github.com/supertypo/simply-kaspa-indexer | L1 Postgres indexer (Supertypo). Not the KNS name API. |
| Implementer kit | https://stp-kas.github.io/kns-spec/ | STP-KAS copy for wallets. Not official KNS. |
| Overlay (`kns://`) | https://github.com/STP-KAS/kns-spec/blob/main/OVERLAY.md | Name-addressed layer: locate on KNS, settle on Kaspa, run dApps locally. Not a new chain. |

FAQ still says “only KasWare” in places. Use the **supporting wallet** table.

### 4c. `kns://` overlay (STP-KAS — not official KNS)

Not a new chain. Not Tor-by-rebrand. **Kaspa settles. The name locates. The user machine runs the dApp.**

| Plane | What | Live? |
| --- | --- | --- |
| Settle | KAS + optional `KasName.sil` | L1 yes. Name UTXO optional. |
| Locate | Official KNS API or your simply-kaspa-indexer | yes |
| Session | `peer` / `onion` / `noise` records | spec; names can publish keys |
| Run | IPFS/KFS/contenthash in a local sandbox; pay KAS / 402 | spec |

- **Real vs paper:** https://github.com/STP-KAS/kns-spec/blob/main/REAL.md — indexer names, wallet chrome, pinning. Not a new internet.
- Architecture (map, not shipped): https://github.com/STP-KAS/kns-spec/blob/main/WEB4.md
- Spec: https://github.com/STP-KAS/kns-spec/blob/main/OVERLAY.md
- Page: https://stp-kas.github.io/kns-spec/web4.html
- Working companion: https://stp-kas.github.io/kns-spec/open.html (no seed; web vs run)
- **Conformance (MUST/SHOULD for KNS + wallets):** https://github.com/STP-KAS/kns-spec/blob/main/CONFORMANCE.md
- **Profile keys to add (ipfs, peer, onion…):** https://github.com/STP-KAS/kns-spec/blob/main/PROFILE.md
- Schema: https://github.com/STP-KAS/kns-spec/blob/main/schemas/overlay-records.schema.json
- `https://alice.kas.limo` leaks DNS. `kns://alice.kas` must not need ICANN or a CA.
- Uniqueness is still indexer FCFS. Overlay does not fix that.

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
| Luke Dunshea | [@elldeeone](https://x.com/elldeeone) | SilverScript v1 credit. GitHub [elldeeone](https://github.com/elldeeone). |
| Sivan Helfer | [@manyfest_](https://x.com/manyfest_) | SilverScript v1 / KCC-20. GitHub [Manyfestation](https://github.com/Manyfestation). |
| Alexander Säfström | [@asaefstroem](https://x.com/asaefstroem) | Credited by Ori on the v1-rc1 review (30 Aug). KCC-0. |

---

## 5b. SilverScript v1 people (ties)

Source: [releases/tag/v1.0.0](https://github.com/kaspanet/silverscript/releases/tag/v1.0.0) (tagged by **someone235** = Ori Newman, **9 Sep 2026**, commit `3ed9733`) and the earlier [v1-rc1](https://github.com/kaspanet/silverscript/releases/tag/v1-rc1) (30 Aug, `c7d17a1`). Credits on both tags: elldeeone, IzioDev, Manyfestation, michaelsutton. Copilot bot omitted.

| GitHub | commits* | X | Who | Ties |
| --- | --- | --- | --- | --- |
| [someone235](https://github.com/someone235) | 134 | [@OriNewman](https://x.com/OriNewman) | Ori Newman | **Lead.** Tagged **v1.0.0** (9 Sep) and v1-rc1 (30 Aug). KIP-17. rusty-kaspa. Medium someone235. |
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

## 7. News freeze (11 Sep 2026)

- Toccata **live** on mainnet (DAA `474_165_565`, ~30 Jun 2026). KIPs 16/17/20/21 Active 15 Jul 2026.
- rusty-kaspa **v2.0.1** is still the Toccata maintenance tag. No v2.0.2.
- silverscript **[v1.0.0](https://github.com/kaspanet/silverscript/releases/tag/v1.0.0)** tagged **9 Sep 2026** by Ori (someone235), commit `3ed9733`. SemVer starts here. Windows zip SHA256 `3e0d660c15a9e7ac90f3960da24d348b076b1891481bfe758db18accc8a102e1`. This is the pin. v1-rc1 (`c7d17a1`, 30 Aug) is history. Compiler tag ≠ audited dapp.
- `#234` foreign `readInputState` framing guard still **closed unmerged**. Own-UTXO `validateOutputState` only.
- `#243` compiled artifact has **no compute-budget estimate** — still **open**.
- **New compiler hole on v1.0.0:** [#249](https://github.com/kaspanet/silverscript/issues/249) `State[].split()` tuple destructure emits undefined `__inline_*`. `.0`/`.1` access works; `byte[].split()` tuple works. Fix PR [#250](https://github.com/kaspanet/silverscript/pull/250) **open**, not merged. Do not write `(State[] a, State[] b) = states.split(n)` on this pin.
- KCC-0020 **Draft**. Issue [#14](https://github.com/kaspanet/kccs/issues/14) supply-split still open. Vectors [#20](https://github.com/kaspanet/kccs/pull/20) still open. Not a gram token.
- Portrait (Kii) public **1 Sep 2026**, testnet-only.
- DAGKnight: KIP-2 still Proposed. New draft [#1127](https://github.com/kaspanet/rusty-kaspa/pull/1127) (8 Sep, FreshAir: bounded UMC / k^4 depth). **Not shipped.**
- kaspa.org rebuilt around “real-time decentralization” (2026). 10 BPS live. 100 BPS is a target, not a spec.
- Official Toccata guide: https://docs.kaspa.org/toccata — consensus live; SilverScript v1 is tagged; Argent/vProgs tooling still early.
- research.kas.pa: newest thread is **optional privacy / MWEB-like** (JackKas, 8 Sep, [522](https://research.kas.pa/t/optional-privacy-layer-for-kaspa-similar-to-litecoin-mweb/522)). Not a KIP. Kurrent (23 Jun) still not product.
- STP-KAS implementer kit: https://stp-kas.github.io/kns-spec/ — KasWare/Kastle inscriptions + proven covenant txs. `KasName.sil` on silverc v1.0.0 with **value conservation** (v1 tutorial: `validateOutputState` does not lock amount).
- Ori v1 post: https://x.com/OriNewman/status/2097731203503640976 — “Silverscript will evolve, Argent will add higher layers.”
- Sutton: https://x.com/michaelsuttonil/status/2097360985442926740 (8 Sep) — “when Argent matures”, not if. Still no Argent tag.
- IzioDev 10 Sep: SilverScript vs Argent vs KCC thread https://x.com/IzioDev/status/2097918399737139331 ; leader/delegator diagram https://x.com/IzioDev/status/2098087085051986330. KCC-02/03 not wallet-interoperable yet.
- Argent [PR #59](https://github.com/argent-lang/argent/pull/59) merged **8 Sep** (state vectors in `args!`). [PR #60](https://github.com/argent-lang/argent/pull/60) merged **10 Sep**, synced to sil v1.0.0. Two leader/delegate compiler rules still **not implemented**. README: not release-ready.
- kaspaexplained /build-on-kaspa (checked 11 Sep): mainnet **84,196** covenants ever, **687** still active, **~1.56M KAS**. TN10 ~88,493 active. Sep 1 indexer baseline; still the live page.
- Parker kaspa-explained public README **10 Sep**: V5/V6 Cloudflare migration in progress; V6 local browser journey **26 accepted TN10 txs** + 5 VM rejects. Hosted runtime is a separate gate. Economy order still dated 7 Sep (21 txs).
- PegLab vs Parker battletest: receipts **1–0 Parker**; classroom **1–0 PegLab**; dollars **0–0**. Successor A is Parker’s 1-sompi receipt. New repo [STP-KAS/peglab-poc](https://github.com/STP-KAS/peglab-poc). Do not mainnet tPEG. Do not use TN12.
- Stillpay split **11 Sep**: [STP-KAS/stillpay-tn10](https://github.com/STP-KAS/stillpay-tn10) (lab) and [STP-KAS/stillpay-mainnet](https://github.com/STP-KAS/stillpay-mainnet) (shape only, no submitter). Pulse: KaChat still `kchat:1:pay`; KasSigner **32-input max**; Parker V5/V6 **unlisted** from nav (8 Sep) but 26-tx local docs remain; elldeeone kaspa-x402 still **alpha.10** (no commits since 10 Aug).

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
| 9 Sep | SilverScript **v1.0.0** tagged (`3ed9733`). Compiler pin. | GitHub release; Ori X |
| 8–10 Sep | Argent #59 (state vectors) then #60 (sil v1.0.0 + leader/delegate). Two compiler rules still unimplemented. | GitHub |
| 10 Sep | Sil #249 `State[].split()` tuple hole on the pin. Fix #250 **open**. | GitHub |

---

## 8. Intel pack (2026-09-11) — public facts only

Folded from the community intel pack. Full dated text: [`intel-pack.md`](intel-pack.md). **Local Telegram/Discord dump paths in that file are this machine, not public dumps.** Mentions ≠ endorsement. Recheck DAA/supply/PR state before quoting.

### L1 snapshot (api.kaspa.org, 11 Sep 2026)

| Item | Number | Recheck |
| --- | --- | --- |
| Virtual DAA | **536,884,280** | `/info/blockdag` |
| Circulating | **~27.694B KAS** (27,693,722,121) of ~28.704B max | `/info/coinsupply` (sompi `2769372212054874832`) |
| Block reward | **2.18267645 KAS** (~21.83 KAS/s). Chromatic step at DAA **531,207,000** has fired. Next step DAA **557,505,000**. No cliff. | coinbase / blockreward |
| Hashrate | **~347 PH/s** (API field ~347.2e3; treat as TH/s → PH/s) | `/info/hashrate` |
| Covenants (kaspaexplained Sep 1 baseline, still on the live page 11 Sep) | **84,196** ever, **687** still active, **~1.56M KAS** in active covenants. TN10 ~88,493 active — still dominates. | kaspaexplained.com/build-on-kaspa |

**This week vs 4 Sep freeze:** DAA +5.93M; supply +~13M KAS; reward stepped 2.312 → 2.183; hashrate 315 → 347 PH/s; covenant *ever* count jumped (indexer baseline change 28,125 → 84,196; locked KAS barely moved). Silverscript v1.0.0 tagged; Argent #60 merged; #249 split-tuple bug opened on the pin.

**Do not claim:** 100 BPS live; instant irreversible payments; DAGKnight is consensus; KCC-0020/0021/0402 adopted; foreign `readInputState` is safe; vProgs live; Portrait or kaspa-pqv on mainnet; Gramlane is Kassword / KCC-20 / Argent; Argent is production-ready; `State[].split()` tuple destructure is safe on v1.0.0. SilverScript **v1.0.0 is tagged** (9 Sep 2026). That is the compiler pin, not a claim that every app is audited.

### Filters (transcripts)

Yonatan (digital cash, cohesive tooling, core ≠ product) → Sutton (L1 covenant / single based app **now**; multi-program vProgs **later**) → Telegram R&D (how) → Discord (wallet/fee/merchant demand). vProgs: sequencing+DA on L1, execution off L1, validity proofs. Solana-shaped accounts, not EVM.

### Extra GitHubs (high-signal, not all 565)

| Repo | Why |
| --- | --- |
| [argent-lang/argent](https://github.com/argent-lang/argent) | Sutton multi-actor frontend. **#59 merged 8 Sep** state vectors in `args!`. **#60 merged 10 Sep** sil v1.0.0 + leader/delegate guide (two rules still unimplemented). Unaudited. No tag. |
| [argent-lang/argent-playground](https://github.com/argent-lang/argent-playground) | Examples |
| [argent-lang/argent-template](https://github.com/argent-lang/argent-template) | Episode-01 ticketing demo |
| [kaspanet/vprogs#139](https://github.com/kaspanet/vprogs/pull/139) | **Open.** ExitLeaf + claim kit. Also #138/#140. **#142** bridge lane-anchor (10 Sep). No product testnet. |
| [elldeeone/kaspa-x402](https://github.com/elldeeone/kaspa-x402) | TN10 x402 v2 binding. Bind this. Not a fourth envelope. |
| [kaspanet/kccs#20](https://github.com/kaspanet/kccs/pull/20) | **Open draft.** KCC-20 vectors. Transfer sig unconfirmed. |
| [kaspanet/silverscript#223](https://github.com/kaspanet/silverscript/pull/223) | **Merged.** Dispatch tags ↔ KCC-1 (IzioDev). |
| [supertypo/simply-kaspa-indexer](https://github.com/supertypo/simply-kaspa-indexer) | L1 Postgres indexer. KNS docs: the KNS resolver uses this. Not api.knsdomains.org. |
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
| palacharlanarendra | Sil #238 still open (later fields reference earlier). #244 ABI license **merged**. |
| KaspaScopio | Sil #249 / #250 — `State[].split()` tuple destructure on v1.0.0. Skip that syntax until #250 merges. |

### Gramlane filter (from that pack)

**Now:** pinned **silverc v1.0.0** (Ori, 9 Sep, `3ed9733`); WorkCredit / KasName via `validateOutputState` only; grams not KCC-20; POS/Pay; one kasdomain; `/234` still a hole; no `State[].split()` tuples until #250; HTTP 402 binds [elldeeone/kaspa-x402](https://github.com/elldeeone/kaspa-x402); pointers to Kassword/pqv/Portrait.  
**Not us:** DAGKnight, #234 retry, guessed compute budget, Argent ICC / leader-delegate, vProg exits, L2 stables, Kurrent channels, MWEB privacy thread, a fourth 402 envelope, calling k402 “x402”.

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
| `LOCAL/ChatExport_2026-07-27` | Telegram export titled **【A G E N C . D E V】** (15 Mar–27 Jul 2026). **Not** `t.me/kasparnd`. Solana agent marketplace. Not in this repo. |
| `LOCAL/adiscord api` | 41 Kaspa Discord channel dumps (cut ~25–26 Jul 2026). Guild Kaspa. Not in this repo. |

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

# Think big — full authority (11 Sep 2026)

**Repo:** [STP-KAS/kaspa-master-file](https://github.com/STP-KAS/kaspa-master-file)  
**What this is:** one page after the freeze + grok heavy review. Summary of the map. What to do next. Propositions. Not Kaspa core. Not a KIP.

**Authority used:** pick a path and kill the rest. Do not wait for Argent, KCC-20, vProgs, DAGKnight, or a Kaspa dollar.

---

## 0. The bet in one paragraph

Kaspa is **proof of work cash** with **spend rules live** (Toccata). ~**96%** of the 28.7B KAS is already out. The remaining ~1B is chromatic, not a cliff. After that, **fees** have to pay miners. The 10-year product is not a dollar, not a DEX, not an L2. It is **programmable cash that keeps a promise**, billed in **grams**, settled on **L1**, hosted by **anyone**.

This desk: **Track 0** public goods (this map, kns-spec, KasName). **Track 1** BTCPay-shaped software (self-hosted till; desk keeps 0; shops take KAS). Fill is not a business. The jar is not Nakamoto.

---

## 1. Summary — what the master file actually says

Honest labels only. Recheck DAA / PRs before quoting.

### Live (use)

| Thing | Pin |
| --- | --- |
| Consensus | GHOSTDAG, **10 BPS** (Crescendo). rusty-kaspa **v2.0.1**. |
| Toccata | KIPs **16 / 17 / 20 / 21 Active**. DAA **474,165,565** (~30 Jun 2026). |
| Compiler | SilverScript **[v1.0.0](https://github.com/kaspanet/silverscript/releases/tag/v1.0.0)** (`3ed9733`, 9 Sep). Windows zip SHA256 `3e0d660c15a9e7ac90f3960da24d348b076b1891481bfe758db18accc8a102e1`. Tag ≠ audited dapp. |
| Covenants on chain | Vault / escrow / assurance / controlled assets / ZK **checks**. Sep 1 indexer baseline still live: **84,196** ever, **687** active, **~1.56M KAS**. TN10 still the bulk (~88,493 active). |
| Names | Official KNS inscriptions. Overlay `kns://` is this desk’s kit, **not** official KNS. |
| L1 snapshot (11 Sep) | DAA **536,884,280**. Supply **~27.694B**. Reward **2.18267645**. Hashrate **~347 PH/s**. Next reward step **557,505,000**. |

### Draft / preview (steal patterns, do not ship as law)

| Thing | Honest |
| --- | --- |
| Argent | [PR #60](https://github.com/argent-lang/argent/pull/60) merged 10 Sep, pins sil v1.0.0. **No tag.** README: not release-ready. Two compiler rules **[NOT IMPLEMENTED]**: continuation-closure; first-input on delegate-capable actors. |
| KCC-0020 | **Draft.** [#14](https://github.com/kaspanet/kccs/issues/14) supply-split open. [#20](https://github.com/kaspanet/kccs/pull/20) vectors open. Not a gram token. |
| kaspa-x402 | [elldeeone/kaspa-x402](https://github.com/elldeeone/kaspa-x402) — intended **x402 v2** binding. **TN10 alpha.** Bind this envelope. |
| k402 | [Kali123411/k402](https://github.com/Kali123411/k402) — HTTP 402 + `kaspa-channel` lock/voucher. [kccs#4](https://github.com/kaspanet/kccs/pull/4) still open. Steal the lock. **Not** x402 v2. **Not** adopted KCC-0402. |
| Parker receipts | [kaspa-explained](https://github.com/parker2017code/kaspa-explained) V6 local: **26 accepted TN10 txs**. `wTestUSD` cannot buy crops. Unit = **1 sompi**. |

### Roadmap / research (out of path until tagged and Active)

vProgs (#139 / #140 / #142 **open**, no product testnet). DAGKnight (KIP-2 Proposed; rusty #1127 draft). Kurrent (forum 494, devnet). MWEB-like (forum 522, one post). Elastic throughput / 100 BPS (not a spec). Tail emission (Kaspa still has a max supply).

### Wrong if you say them

100 BPS live · instant irreversible payments · DAGKnight is consensus · KCC-20/21/0402 adopted · Argent production-ready · vProgs live · Portrait or kaspa-pqv on mainnet · foreign `readInputState` is safe · `State[].split()` tuples are safe on v1.0.0 · compiler tag means every app is audited · tPEG is money · grams are a KCC-20 · k402 is Kaspa’s x402.

### Four holes on the live compiler pin (do not ship around these)

1. **Foreign state** — [silverscript#234](https://github.com/kaspanet/silverscript/pull/234) closed **unmerged**. Own-UTXO `validateOutputState` only.
2. **Compute budget** — [#243](https://github.com/kaspanet/silverscript/issues/243) **open**. Artifact has no per-entry cost. Do not invent one.
3. **`State[].split()` tuples** — [#249](https://github.com/kaspanet/silverscript/issues/249) broken on `3ed9733`. Fix [#250](https://github.com/kaspanet/silverscript/pull/250) **open**. Use `.0` / `.1` if you must split. Skip the tuple syntax.
4. **Amount is not locked** by `validateOutputState`. Every continuation must `require(tx.outputs[i].value == …)`. Hardcoded miner fees in example escrows are a trap.

### What this desk already proved (and what it has not)

| Battle | Score | Meaning |
| --- | --- | --- |
| Receipts | **1–0 Parker** | Successor A is the 1-sompi receipt. Cite [peglab-poc](https://github.com/STP-KAS/peglab-poc). |
| Classroom | **1–0 PegLab** | [peglab-stp](https://github.com/STP-KAS/peglab-stp) teaches depeg. **WILL DEPEG.** Not money. |
| Dollars | **0–0** | Do not mainnet tPEG. Do not invent kUSD as a peg. |
| Timeout journal | **empty** | ENGINE_SPEC is a story until TN10 txids land. |

---

## 2. What to improve (the map vs the product)

The freeze + review made the **map** honest. The bottleneck is no longer “we don’t know the pins.” It is **no TN10 receipt txids** and **no 402 that actually charges**.

### Map (this repo) — remaining work

| Gap | Why it still hurts | Fix |
| --- | --- | --- |
| README is an encyclopedia | A builder still hunts for “what do I do Monday” | This file is that page. Keep it one screen of orders. |
| Four copies of the same freeze | README / `master.json` / intel-pack / GROK-HEAVY-REVIEW drift | Freeze table lives in intel-pack § status. README points. JSON is the dApp catalog. Review is the audit. Do not invent a fifth. |
| Local `127.0.0.1` URLs on GitHub | Readers think the dApp is hosted here | Already disclaimed. Keep saying it. |
| Covenant counts are a **1 Sep** indexer baseline | Ever-count jumped 28,125 → 84,196; locked KAS barely moved | Quote `/build-on-kaspa`. Never quote Aug 24. Recheck on the Monday job. |
| `pragma ^0.1.0` in silverc examples | Easy to compile against the wrong language id | Pin **v1.0.0** in every STP-KAS `.sil`. Do not follow example pragmas blindly. |
| OpenSilver pins its own silverc | Pattern lib, not kaspanet, not always v1.0.0 | Steal patterns. Recompile on **this** pin. |
| Monday intel job exists | Can re-introduce stale pins (it already did: v1-rc1 after v1.0.0) | Job must fail if compiler tag, reward step, or `/status` disagree with the freeze table. |

### Product (STP-KAS stack) — remaining work

| Gap | Why it still hurts | Fix |
| --- | --- | --- |
| peglab-poc timeout journal empty | No Darwin without txids | Fill it on **TN10**. Not TN12. Not mainnet tPEG. |
| WorkCredit not a proven spend | Grams are a policy, not a UTXO yet | One own-UTXO covenant. `validateOutputState` + `require(value)`. |
| 402 unbound | Agents and dApps still talk for free | Bind [kaspa-x402](https://github.com/elldeeone/kaspa-x402). Steal k402 lock. No fourth envelope. |
| `kns://` is spec-heavy | Locate/settle/run is written; few names publish `ipfs`/`peer` | One name, one local dApp, one 402. Conformance in kns-spec. |
| Wallet inject surface | Users will paste seeds if we let them | QR / `kaspa:` URI / txid paste. Inject = **Kasware or Kastle only**. |
| Fee UX | Discord demand is wallets + fees + merchants | 100 sompi/gram is **min-relay policy**, not a KIP. Show mass, not a fake dollar. |
| AgenC export sitting in LOCAL | Easy to copy a Solana marketplace by accident | Steal **billed agent work**. Implement as L1 grams + 402. Do not integrate AgenC. |

### Kill list (full authority — do not “just explore”)

DAGKnight · vProg exits / #139–#142 as product · Argent ICC / leader-delegate until **tagged and those two rules compile** · Kurrent · MWEB thread · guessed compute budget · `#234` retry · TN12 · a fourth 402 envelope · calling k402 “x402” or “adopted KCC-0402” · minting GRAM as KCC-20 · tPEG as money · cloning Kassword / Portrait / kaspa-pqv · foreign `readInputState` · `(State[] a, State[] b) = xs.split(n)` on v1.0.0 · silverc `master` replacing the pin · in-page inject of unknown wallets.

---

## 3. Step-by-step guide

Do these in order. Skip a step only if its **done check** is already green. If a kill-if fires, stop and revert.

### Step 0 — Stay on the pin (every clone, every day)

1. Compiler: SilverScript **v1.0.0** (`3ed9733`). Verify Windows zip SHA256 if you install the zip.
2. Node: rusty-kaspa **v2.0.1**. No v2.0.2.
3. Testnet: **TN10** only. Faucet: https://faucet-testnet.kaspanet.io
4. Referee: https://kaspaexplained.com/status and https://kaspaexplained.com/build-on-kaspa
5. Law: merged **Active** KIP. Open PR ≠ pin.

**Done when:** every STP-KAS `.sil` header names v1.0.0. No `master` floating compiler. No TN12.

### Step 1 — One covenant that cannot lie about money

Write **one** own-UTXO script (WorkCredit or KasName — not both in the same UTXO).

Rules that are not optional:

- `validateOutputState` on **our** continuation only.
- `require(tx.outputs[i].value == expected)` on every continuation. Amount is **not** locked by the state check.
- Never `readInputState` a foreign UTXO (`#234` still a hole).
- Never `(State[] a, State[] b) = xs.split(n)` until `#250` merges. `.0` / `.1` is allowed.
- Do not guess `compute_budget` (`#243`). Discover cost by TN10 rejection, then write the number you observed.

**Done when:** a TN10 txid spends and recreates the UTXO with the value invariant holding. Explorer link in peglab-poc.

### Step 2 — Receipts beat dollars (Parker unit)

In [peglab-poc](https://github.com/STP-KAS/peglab-poc):

1. Unit = **1 sompi = 1 receipt unit**. Not USD. Not tPEG.
2. Replay Parker’s TN10 receipt pack (cite; do not clone kaspaexplained.com).
3. Fill the **timeout journal** — empty journal means ENGINE_SPEC is fanfic.
4. Keep PegLab as the **classroom that depegs**. Never list tPEG as money.

**Done when:** README of peglab-poc lists TN10 txids for: create, pay, timeout, refuse-fake-dollar. Dollars column still **0–0**.

### Step 3 — Charge for the call (402)

1. Bind **[elldeeone/kaspa-x402](https://github.com/elldeeone/kaspa-x402)** (TN10 alpha, kaspa-x402.org). That is the HTTP 402 **envelope**.
2. Steal lock/voucher shape from **[Kali123411/k402](https://github.com/Kali123411/k402)** into **our** WorkCredit. Credit them. Do **not** call it Kaspa’s x402 v2. Do **not** call it adopted KCC-0402. [kccs#4](https://github.com/kaspanet/kccs/pull/4) is still open.
3. Do not invent a fourth 402.
4. First billed surface: one local dApp endpoint returns **402**, pays in KAS/grams, receipt is the L1 txid.

**Done when:** `curl` a local URL → 402 → pay on TN10 → 200 + txid. No USDC. No Solana.

### Step 4 — Name locates, chain settles, machine runs

[kns-spec](https://github.com/STP-KAS/kns-spec) overlay:

1. One KNS name. Publish only keys that exist (`ipfs` / `peer` / `onion` as spec’d).
2. `kns://name` opens [open.html](https://stp-kas.github.io/kns-spec/open.html) — **no seed**.
3. Run the dApp **locally**. Pay KAS / 402. Kaspa settles.
4. `https://alice.kas.limo` leaks DNS. Do not require ICANN or a CA for `kns://`.
5. Uniqueness is still indexer FCFS. Overlay does not fix that — say so.

**Done when:** a stranger with Kasware/Kastle can resolve the name, run the sandbox, pay, get a receipt. No seed paste.

### Step 5 — Anyone hosts (Track 1 shape)

BTCPay-shaped, not Circle-shaped:

1. PC binary of the host. PWA of **that** host. Hardware signs the fill.
2. Desk keeps **0**. Any Kaspa wallet: QR / `kaspa:` URI / paste txid.
3. In-page inject = **Kasware or Kastle** only.
4. Shops take **KAS**. Grams are inventory + mass policy (100 sompi/gram = min-relay, not a token).
5. Many desks ≠ a stablecoin issuer. The jar is not Nakamoto.

**Done when:** a second machine, not this one, hosts the till and takes a TN10 (then later mainnet) payment without this desk in the loop.

### Step 6 — Public goods stay public (Track 0)

Keep shipping:

- this master file (Monday recheck: compiler tag, reward step, `/status`, `#250`, Argent tag-or-not, kccs#4/#14/#20)
- kns-spec conformance + overlay
- honest pointers to Kassword / pqv / Portrait — **do not impersonate**

**Done when:** GitHub `STP-KAS/kaspa-master-file` is the public pin; LOCAL dumps stay off the repo.

### Step 7 — Only then, look up

Revisit Argent **if and only if**: a tag exists, README drops “not release-ready”, and the two leader/delegate rules **compile into** generated contracts. Until then Gramlane stays **one** own-UTXO covenant.

Revisit KCC-20 **if and only if**: Status is not Draft, #14 closed, #20 merged, transfer tag confirmed. Even then: **do not name a gram token GRAM**. Grams stay mass + WorkCredit.

Revisit vProgs when there is a **product** testnet, not three open PRs.

---

## 4. Propositions (full authority)

Numbered so they can be killed later with evidence. Until then they are desk law.

**P1. Product is programmable cash + receipts + fees.** Not a Kaspa dollar. Not native DeFi. Not an L2. Yonatan filter: digital cash. Sutton filter: single based app **now**.

**P2. Two tracks only.** Track 0 = public goods (map, kns-spec, KasName). Track 1 = BTCPay-shaped self-hosted software. No Track 2 “we’ll be Circle.” Fill is not a business.

**P3. One UTXO, own state, value required.** Foreign `readInputState` is forbidden on this pin. `validateOutputState` without `require(value)` is a bug.

**P4. Compiler pin is v1.0.0 (`3ed9733`) until a newer SemVer tag.** `master` is not a pin. v1-rc1 is history. `#249` tuple syntax is forbidden. `#243` budget is measured, not invented.

**P5. Grams are not a token.** 1 gram = 1 KIP-21 mass unit. 100 sompi/gram is min-relay policy. A KCC-20 named GRAM would look DEX-listable and is **refused**.

**P6. Bind one 402 envelope.** elldeeone/kaspa-x402. Steal k402’s lock/voucher. Credit both. Never a fourth envelope. Never “adopted KCC-0402.”

**P7. Receipt unit is 1 sompi.** Parker won receipts. PegLab won the classroom. Dollars are 0–0. Timeout journal must fill on TN10 before any mainnet money talk.

**P8. `kns://` is the consumer door.** Kaspa settles. The name locates. The user machine runs the dApp. Not a new chain. Not Tor-by-rebrand. Not official KNS.

**P9. Fees are the endgame, not the leftover.** ~27.694B / ~28.704B already out. After the last ~1B, miners eat fees. 402 + receipts + POS are how this desk feeds that, without a dollar.

**P10. Steal billed-agent work from AgenC. Do not integrate AgenC.** Their export is Solana + x402. Our agent is an L1 gram + kaspa-x402. Same human need (pay for a call). Different chain, different envelope.

**P11. Do not wait for standards that are Draft.** Ship against Active KIPs and the tagged compiler. Conventions (KCC) can catch up. Waiting for Final KCC-20 is how you ship nothing.

**P12. Monday job is a tripwire, not a blog.** If it cannot see a new silverc tag, a fired reward step, a Moved URL, or `#250` merge, it must not leave v1-rc1 in the table again.

**P13. Kill-if (stop the line).** Foreign `readInputState` in our scripts · silverc `master` replaces v1.0.0 in a release · tPEG listed as money · compiler tag sold as a dapp · Argent ICC shipped before tag + the two rules · fourth 402 envelope · GRAM as KCC-20 · seed paste UX · TN12.

---

## 5. Think bigger (same pins, longer horizon)

What “big” is allowed to mean here, without lying.

**Year 1 (this pin).** TN10 then mainnet: one WorkCredit UTXO, 1-sompi receipts, one 402 endpoint, one `kns://` name that opens a local paid dApp, a host binary someone else can run. Covenant counts may stay small. Locked KAS in *our* UTXOs should be **inventory**, not TVL cosplay. 687 active covenants on mainnet is early; TN10 being larger means the honest market is still a lab. Be the lab that publishes txids.

**Year 2–3.** Many desks. Same software. No issuer. Shops take KAS because the till is boring and local, like BTCPay, not because we wrapped a dollar. If KCC-20 becomes Final, *other people* can list assets. We still do not list GRAM. If Argent tags, *other people* compose actors. We still do not need ICC for a till.

**Year 10.** Kaspa is still PoW cash. DAGKnight may or may not have shipped — we did not bet the desk on it. vProgs may or may not give synchronous multi-program apps — we did not wait. The remaining emission is gone. Miners live on fees. The thing that produced fees was **kept promises**: escrow that released, 402 that charged, receipts that matched 1 sompi, names that opened a program without a seed.

That is the whole delusion, written as a plan.

---

## 6. Do this Monday

1. Recheck: silverc tag, rusty tag, `#250`, Argent tags, kccs#4/#14/#20, `/status`, `/build-on-kaspa`, DAA/reward.
2. Open [peglab-poc](https://github.com/STP-KAS/peglab-poc). Put a TN10 txid in the timeout journal, or admit the journal is still empty.
3. Open [kns-spec](https://github.com/STP-KAS/kns-spec). One name, one local run, no seed.
4. Clone [kaspa-x402](https://github.com/elldeeone/kaspa-x402). Hit TN10. Do not start a new 402 repo.
5. If any kill-if is green, stop and write it in this file.

*Pins from the 11 Sep freeze. Full map: [README](README.md). Audit: [GROK-HEAVY-REVIEW.md](GROK-HEAVY-REVIEW.md). Catalog: [master.json](master.json). Intel: [intel-pack.md](intel-pack.md).*

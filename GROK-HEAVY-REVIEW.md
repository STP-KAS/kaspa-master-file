# Grok heavy review — freeze 11 Sep 2026

**Repo:** [STP-KAS/kaspa-master-file](https://github.com/STP-KAS/kaspa-master-file)  
**What this is:** adversarial pass on the 11 Sep freeze (covenants, Argent, SilverScript). Not Kaspa core. Not a KIP.

**Verdict:** freeze is shippable. The 4 Sep intel pack was **wrong** on the compiler pin (`v1-rc1` after `v1.0.0` had tagged). That is fixed. Three holes on the live pin stay open and must not be papered over.

---

## What was actually wrong (fixed in this freeze)

| Defect | Was | Now |
| --- | --- | --- |
| Compiler pin | intel-pack still said **v1-rc1** | **v1.0.0** (`3ed9733`, 9 Sep). v1-rc1 is history. |
| Reward | “next step DAA 531,207,000 still ahead” | Step **fired**. Reward **2.18267645** KAS. Next **557,505,000**. |
| L1 numbers | DAA 530,957,175 / ~27.681B / ~315 PH/s | DAA **536,884,280** / ~**27.694B** / ~**347 PH/s** (api.kaspa.org, 11 Sep) |
| Argent #44 | listed open draft | **merged 30 Aug** |
| Argent #56 | listed open | **closed unmerged**; workspace license landed in #60 |
| Covenant *ever* | Aug 24: 28,125 | Live page: **84,196** (Sep 1 indexer baseline). Locked KAS barely moved (~1.53M → ~1.56M). Do not read this as 3× overnight deploys. |

---

## Live vs not (do not flatten)

| Layer | Status | Pin |
| --- | --- | --- |
| Toccata (KIP-16/17/20/21) | **Live** | rusty-kaspa **v2.0.1**. No v2.0.2. |
| SilverScript | **Compiler tagged** | [v1.0.0](https://github.com/kaspanet/silverscript/releases/tag/v1.0.0). Windows zip SHA256 `3e0d660c15a9e7ac90f3960da24d348b076b1891481bfe758db18accc8a102e1`. Tag ≠ audited dapp. |
| Argent | **Preview** | [PR #60](https://github.com/argent-lang/argent/pull/60) merged 10 Sep, pins sil v1.0.0. **No tag.** README: not release-ready. |
| KCC-0020 | **Draft** | [#14](https://github.com/kaspanet/kccs/issues/14) supply-split open. [#20](https://github.com/kaspanet/kccs/pull/20) vectors open. |
| vProgs | **Roadmap** | [#139](https://github.com/kaspanet/vprogs/pull/139) / [#140](https://github.com/kaspanet/vprogs/pull/140) / [#142](https://github.com/kaspanet/vprogs/pull/142) still open. No product testnet. |
| DAGKnight | **Research** | KIP-2 Proposed. [#1127](https://github.com/kaspanet/rusty-kaspa/pull/1127) draft (bounded UMC, 8 Sep). |

---

## Holes on the v1.0.0 pin (do not ship around these)

### 1. Foreign state — still unsafe
[silverscript#234](https://github.com/kaspanet/silverscript/pull/234) closed **unmerged**. Own-UTXO `validateOutputState` only. A hostile UTXO can keep length + template and slide field reads.

### 2. Compute budget — still guess-by-rejection
[silverscript#243](https://github.com/kaspanet/silverscript/issues/243) **open**. Artifact has no per-entry cost. Do not invent a budget.

### 3. NEW — `State[].split()` tuples are broken on this pin
[silverscript#249](https://github.com/kaspanet/silverscript/issues/249) opened **10 Sep** against commit `3ed9733`.

```
(State[] left, State[] right) = new_states.split(1);
→ compile error: undefined identifier: __inline_3_new_states
```

`.0` / `.1` access compiles. `byte[].split()` tuples compile. Fix [PR #250](https://github.com/kaspanet/silverscript/pull/250) is **open, not merged**. Skip that syntax until it lands.

### 4. Amount is not locked by `validateOutputState`
Official v1 tutorial. Every continuation must `require(tx.outputs[i].value == …)`. Hardcoded miner fees in example escrows are a trap.

---

## Argent — what #60 actually shipped

Merged 10 Sep (`867b080`, Sutton). Pins sil crates to v1.0.0. Formalizes leader / delegate / input-group / continuation-group.

Still **[NOT IMPLEMENTED]** in generated contracts:

1. Continuation-closure — leader must authorize every continuation in the coordinated group.
2. First-input rule for otherwise-batchable zero-continuation ordinary entries on delegate-capable actors.

Until those compile in, they are **application obligations**. IzioDev diagram (10 Sep): https://x.com/IzioDev/status/2098087085051986330 — one covenant group; delegator runs less compute. Not a spec.

[#59](https://github.com/argent-lang/argent/pull/59) (8 Sep, Manyfestation): state vectors in `args!`. Ergonomics only.

Sutton (8 Sep): “when Argent matures”, not if. Still no tag. Gramlane stays **one** own-UTXO covenant, not Argent ICC.

---

## Covenants on chain (honest read)

[kaspaexplained.com/build-on-kaspa](https://kaspaexplained.com/build-on-kaspa), Sep 1 indexer baseline, still the live page on 11 Sep:

- Mainnet: **84,196** ever, **687** active, **~1.56M KAS**
- TN10: **~88,493** active — still the bulk

Vault / escrow / assurance / controlled assets / ZK checks: **live**. Cross-app composition: **demos only**. Shared mutable state: **roadmap**.

---

## Think-big filter (same pins)

The 10-year bet is not a Kaspa dollar. It is programmable cash that keeps a promise, plus fees after the remaining ~1B KAS (~96% already out).

**Now:** silverc v1.0.0; `validateOutputState` only; no `State[].split()` tuples; grams not KCC-20; no Argent ICC / leader-delegate; cite Parker’s TN10 receipt pack; timeout journal still empty in peglab-poc.

**Not us:** DAGKnight, vProg exits, Kurrent, MWEB thread ([research.kas.pa/522](https://research.kas.pa/t/optional-privacy-layer-for-kaspa-similar-to-litecoin-mweb/522) — one post, not a KIP), guessed compute budget, `#234` retry, TN12, a fourth 402 envelope.

Kill if: foreign `readInputState`; silverc `master` replaces v1.0.0; tPEG listed as money; compiler tag sold as a dapp.

---

## Do not claim

100 BPS live · instant irreversible payments · DAGKnight is consensus · KCC-0020/0021/0402 adopted · Argent production-ready · vProgs live · Portrait or kaspa-pqv on mainnet · foreign `readInputState` is safe · `State[].split()` tuples are safe on v1.0.0 · SilverScript v1.0.0 means every app is audited.

---

---

## Second look (same day, after merge)

What the freeze still got wrong or left out, now patched in README / `master.json` / intel-pack:

- `/toccata-status` **Moved** → [`/status`](https://kaspaexplained.com/status)
- Missing 402 pin: [elldeeone/kaspa-x402](https://github.com/elldeeone/kaspa-x402). k402 is a channel, not x402.
- vProgs **#142** open (lane-anchor). Still not product.
- Public intel-pack had `C:\Users\…` paths. Redacted to `LOCAL`.
- `#250` rechecked **open**. Tuple split still forbidden.

*Sources fetched 11 Sep 2026: api.kaspa.org (blockdag, coinsupply, blockreward, hashrate); kaspaexplained.com/status + /build-on-kaspa; GitHub APIs for kaspanet/silverscript, argent-lang/argent, kaspanet/rusty-kaspa, kaspanet/kccs, kaspanet/vprogs, elldeeone/kaspa-x402, Kali123411/k402; research.kas.pa/latest.json; core X (OriNewman, michaelsuttonil, IzioDev).*

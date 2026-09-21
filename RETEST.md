# Retest — every STP-KAS repo vs this master file

**Receipt of the 17 Sep 2026 run.** Do not read the matrix below as the current board. Current pins: README **Now** and `master.json` section `now` (21 Sep 2026). Since this retest: kccs#25 **merged** (KCC-0 meta Final in the file; README index still says Draft). KCC-20 is still Draft. The “KCC-0 Final still open” row below is what was true on 17 Sep.

**17 Sep 2026.** Not a KIP. **No seeds.** Payer stays groks-wallet / tn10 bot. kaspa bot stays mainnet.

Account: [STP-KAS](https://github.com/STP-KAS) — **48 public** (45 original + **3 forks**). kaspa-dapps freeze (15 Sep) said 44. Four landed after that map: `kns-dotk`, `dotk-review`, `kaspa.org-kaspaexplained`, `iziodev-build-a-kaspa-l1-grok-reveieuw`.

Standing nodes: [`DESK-BOT.md`](DESK-BOT.md). This Windows PC still cannot open sandbox `:16210` or public P2P `159.223.110.159:28492`. Reads used REST. Desk TN10 second site **not** started. 1-sompi send **not** re-broadcast (already unconstructible 14 Sep).

---

## Master-file pins (rechecked this pass)

| Pin | Live 17 Sep | Vs this file |
| --- | --- | --- |
| rusty-kaspa | Latest tag still **v2.0.1** (15 Jun). No v2.0.2. | **Hold** |
| silverscript | **v1.0.0** `3ed9733`. `#250` / `#251` still **open**. | **Hold** |
| Toccata | kaspaexplained `/status`: **Live**. Mainnet DAA **542,055,411** ≫ 474,165,565. | **Hold** |
| DAGKnight | KIP-2 Proposed. No rusty tag. dagknight-test-grok **8/8** classroom. | **Hold** (not consensus) |
| KCC-0012 | [kccs#24](https://github.com/kaspanet/kccs/pull/24) still **open**. | **Hold** Draft |
| KCC-0 Final | [kccs#25](https://github.com/kaspanet/kccs/pull/25) still **open**. Not Final. | **Hold** |
| Argent | **0** releases, **0** tags. **#63 merged** (`e76ee07`). **#62 open**. | **Hold** (rules 5/6 compile, still no tag) |
| x402 | Bind elldeeone. STP `kaspa-x402` `npm test` EXIT 0. | **Hold** |
| Dual rail / no issuer gas | Unchanged in keep repos. | **Hold** |
| Seeds on GitHub | `org:STP-KAS` code search mnemonic / `wallet.txt` / `ghp_` → **0** | **Hold** |
| TN10 miners | Same pay-to. api-tn10 **3,838,663.38 tKAS** | **Alive** |

Referee: [kaspaexplained.com/status](https://kaspaexplained.com/status) (sources 14 Sep; L1 snapshot older than this REST pull).

---

## Tests that ran (this desk)

`npm.cmd` required on Windows (`npm` without `.cmd` is WinError 2).

| Tree | Command | Result |
| --- | --- | --- |
| grok-heavy-showcase | `npm test` | **10/10** |
| grok-heavy-showcase | `npm run lab` | **EXIT 0** |
| peglab-poc | `npm test` | **14/14** |
| peglab-stp | `npm test` | **24/24** (was 16 on 14 Sep) |
| stillpay-tn10 | `npm test` | **16/16** |
| stillpay-mainnet | `npm test` | **16/16** |
| wallet-integration | `npm test` | **16/16** |
| kaachat-desktop | `npm test` | **9/9** |
| stp-kachat (local KaChat-Desktop) | `npm test` | **9/9** |
| kaspa-x402 (STP fork) | `npm test` | **EXIT 0** (45.5s, last suite 18/18) |
| dagknight-test-grok | `cargo test` | **8/8** |
| gramlane (`Documents/kaspa/superapp`) | `go test ./...` | **pass** |
| ishum | `go test ./...` | **pass** |
| kaspa-till | `go test ./...` | **pass** |
| kns-spec | `go test ./...` | **pass** |
| xai-reasoning-3 | `go test ./...` | **pass** |
| grok-kaspa-collab/desk | `go test ./...` | **pass** |
| kns | `go test ./...` | **FAIL** `TestContractSourcesDoNotReadForeignState` — comment grep. Same as 14 Sep. House rule stands. |
| argent-xai | `check.ps1` | **FAIL / DRIFT** argent `master` pin `867b080` (PR #60) vs live `e76ee07` (PR #63). Silverscript pin still matches. **This is the only pin-checker that lagged the master file.** |

Skipped on purpose: `rusty-kaspa` rebuild (use kaspanet v2.0.1), `mixer-concept` / `kaspaexplained-delusional-stp` (huge overlays), `feedback-stp-delusional` (UX dump), funded x402 live proof, PegLab `--submit`, mnemonic print, mainnet send.

---

## All 48 vs the encyclopedia

Kinds: **TN10-money** · **runnable** · **docs** · **fork** · **empty**.  
Vs master: **match** (honest vs pins) · **lag** (docs older than 17 Sep pins) · **fail** (test or pin contradiction).

| Repo | Kind | Test | Vs master file |
| --- | --- | --- | --- |
| [402-is-not-x402](https://github.com/STP-KAS/402-is-not-x402) | docs | read | **match** — no fourth envelope |
| [argent-xai](https://github.com/STP-KAS/argent-xai) | docs | `check.ps1` **DRIFT** | **lag** — still documents rules 5/6 unimplemented; live #63 compiled |
| [dagknight-test-grok](https://github.com/STP-KAS/dagknight-test-grok) | runnable | 8/8 | **match** — not consensus |
| [delusional-stp-grok-mix](https://github.com/STP-KAS/delusional-stp-grok-mix) | docs | read | **match** |
| [dotk-review](https://github.com/STP-KAS/dotk-review) | docs | read | **match** — not official KNS |
| [feedback-stp-delusional](https://github.com/STP-KAS/feedback-stp-delusional) | docs | skip-heavy | **match** — not Kaspa law |
| [gramlane](https://github.com/STP-KAS/gramlane) | runnable | go **pass** | **match** — grams ≠ dollar |
| [gramlanepeglab](https://github.com/STP-KAS/gramlanepeglab) | docs | static | **match** |
| [grok-heavy-showcase](https://github.com/STP-KAS/grok-heavy-showcase) | runnable | 10/10 | **match** — dual-rail constitution |
| [grok-heavy-test](https://github.com/STP-KAS/grok-heavy-test) | docs | read | **match** |
| [grok-kaspa-collab](https://github.com/STP-KAS/grok-kaspa-collab) | runnable | desk go **pass** | **match** — not a KIP |
| [grok-test-cascade](https://github.com/STP-KAS/grok-test-cascade) | docs | read | **match** |
| [groks-wallet](https://github.com/STP-KAS/groks-wallet) | TN10-money | REST balance | **match** — miners alive, same pay-to. Desk RPC down this PC |
| [ishum](https://github.com/STP-KAS/ishum) | runnable | go **pass** | **match** — `kaspatest:` refused (till is `kaspa:`) |
| [iziodev-build-a-kaspa-l1-grok-reveieuw](https://github.com/STP-KAS/iziodev-build-a-kaspa-l1-grok-reveieuw) | docs | GitHub README | **match** — template is local runtime; Argent not general production; dollar rail missing. Aligns with §4d |
| [kaachat-desktop](https://github.com/STP-KAS/kaachat-desktop) | runnable | 9/9 | **match** — duplicate of stp-kachat |
| [kachat-test-with-silver](https://github.com/STP-KAS/kachat-test-with-silver) | fork | no test script | **match** — not production |
| [kaspa-dapps](https://github.com/STP-KAS/kaspa-dapps) | docs | read | **lag** — freeze still 44 repos / Argent “unimplemented rules” |
| [kaspa-master-file](https://github.com/STP-KAS/kaspa-master-file) | docs | this file | **match** |
| [kaspa-till](https://github.com/STP-KAS/kaspa-till) | runnable | go **pass** | **match** — Ishum won the till |
| [kaspa-x402](https://github.com/STP-KAS/kaspa-x402) | fork | npm **EXIT 0** | **match** — bind elldeeone, not this fork |
| [kaspa.org-kaspaexplained](https://github.com/STP-KAS/kaspa.org-kaspaexplained) | docs | GitHub README | **match** — Toccata live; do not cite kaspa.org/lore |
| [kaspaexplained-delusional-stp](https://github.com/STP-KAS/kaspaexplained-delusional-stp) | overlay | skip-heavy | **match** — cite Parker |
| [kns](https://github.com/STP-KAS/kns) | runnable | go **FAIL** comment grep | **match** — known; kns-spec is the kit |
| [kns-dotk](https://github.com/STP-KAS/kns-dotk) | docs | read | **match** — not official KNS |
| [kns-spec](https://github.com/STP-KAS/kns-spec) | runnable | go **pass** | **match** |
| [kusdt-bitcoffee](https://github.com/STP-KAS/kusdt-bitcoffee) | docs | no local | **match** — candidate, not shops |
| [mixer-concept](https://github.com/STP-KAS/mixer-concept) | overlay | skip-heavy | **match** — education |
| [ok](https://github.com/STP-KAS/ok) | empty | size 0 | **match** |
| [peglab-poc](https://github.com/STP-KAS/peglab-poc) | runnable | 14/14 | **match** |
| [peglab-stp](https://github.com/STP-KAS/peglab-stp) | TN10-money | 24/24 | **match** — WILL DEPEG |
| [poc-revisited](https://github.com/STP-KAS/poc-revisited) | docs | no local | **match** |
| [project-delusional](https://github.com/STP-KAS/project-delusional) | docs | read | **lag** — may still show v1-rc1 tables |
| [rusty-kaspa](https://github.com/STP-KAS/rusty-kaspa) | fork | skip rebuild | **match** — run kaspanet **v2.0.1** |
| [sixpack.wtf](https://github.com/STP-KAS/sixpack.wtf) | docs | static | **match** |
| [stillpay-mainnet](https://github.com/STP-KAS/stillpay-mainnet) | runnable | 16/16 | **match** — refuses `kaspatest:` |
| [stillpay-tn10](https://github.com/STP-KAS/stillpay-tn10) | TN10-money | 16/16 | **match** — 1 sompi still unconstructible |
| [stp-kachat](https://github.com/STP-KAS/stp-kachat) | runnable | 9/9 | **match** |
| [STP-KAS](https://github.com/STP-KAS/STP-KAS) | docs | profile | **lag** — still points at 15 Sep dApps map |
| [three-x-reviews](https://github.com/STP-KAS/three-x-reviews) | docs | read | **match** — not an audit |
| [tn10-hard-test](https://github.com/STP-KAS/tn10-hard-test) | docs | journal | **lag** — inventory still 36 |
| [wallet-integration](https://github.com/STP-KAS/wallet-integration) | runnable | 16/16 | **match** — Kasware/Kastle |
| [windows-p2p-node-guide](https://github.com/STP-KAS/windows-p2p-node-guide) | docs | read | **match** — mainnet 16111, not kaspa bot |
| [x402-ishum](https://github.com/STP-KAS/x402-ishum) | docs | read | **match** — till ≠ 402 |
| [x402-vs-grok](https://github.com/STP-KAS/x402-vs-grok) | docs | read | **match** |
| [xai-reasoning-3](https://github.com/STP-KAS/xai-reasoning-3) | runnable | go **pass** | **match** — dual-rail EUR |
| [Xai.Kaspa.node](https://github.com/STP-KAS/Xai.Kaspa.node) | docs | read | **match** — kaspa bot ritual |
| [Xai.mainnet.public.nodes](https://github.com/STP-KAS/Xai.mainnet.public.nodes) | docs | no local | **match** — ops journal |

---

## What broke, what did not

**Did not break:** compiler pin, node tag, Toccata live, dual rail, x402 binding, inject surface, kns-spec, stillpay suites, showcase freeze lab, PegLab honesty tests.

**Broke / lagged vs this encyclopedia:**

1. **argent-xai** `check.ps1` — expected DRIFT after PR #63. Update `pins.json` to `e76ee07` and drop the unimplemented-rules sentence.
2. **kaspa-dapps / tn10-hard-test / STP-KAS profile** — still count 36 or 44 repos. Live is **48**.
3. **kns** `go test` — same comment-grep fail. Not a `#234` covenant bug.

**Not re-proved on chain this pass:** 1-sompi storage-mass fail; payload journal tx; Ishum HTTP pay-to. REST + unit suites only. Desk `:16210` closed.

---

## How to read a green suite

`npm test` on stillpay does **not** lock a sompi.  
`npm test` on kaspa-x402 does **not** mean demo.kaspa-x402.org took this wallet.  
`cargo test` on dagknight-test-grok does **not** mean DAGKnight is mainnet.

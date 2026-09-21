# Grok 4.7 review — all 54 repos against the master file

**21 Sep 2026, evening.** Windows desk. Not Kaspa core. Not an audit.

The board is README **Now** and `master.json` section `now`. A repo agrees when its current sentences state that board, refuse the opposite, or are dated as a receipt. A repo drifts when an undated sentence states a pin the board has retired.

Count rechecked this pass: **54** owned repos. **52** public, **2** private (`tn10-grok`, `kns-kasware-tn10-test`). Same set as [github.com/STP-KAS?tab=repositories](https://github.com/STP-KAS?tab=repositories) plus the two private repos that tab hides.

## Rubric taken from Now

| Pin | Agree looks like |
| --- | --- |
| Node | rusty-kaspa release **v2.0.1** (`cfafeb4c`). Master `eb0a856` is not that tag. |
| Consensus | GHOSTDAG live. ~10 BPS. DAGKnight is KIP-2 **Proposed**. #1104 open. |
| Toccata | Live after DAA 474165565. KIP-16/17/20/21 Active. |
| Compiler | SilverScript **v1.0.0** `3ed9733`. v1-rc1 is history. |
| Argent | Master `e76ee07`. #63 compiles rules 5 and 6. **No tag.** |
| KCC-0 | **Final in the file** (`c0bb8f3`). README index still says Draft. Not KCC-1/2/20/0012. |
| KCC-20 | Draft. Not a gram. Not adopted. |
| KCC-3/4/5 | Open proposal kccs#29 only. Not adopted. |
| vProgs | Master `f9b84a8`. Research. tictactoe host is #152 `74e24551`, not #148. |
| x402 | Bind **v1.0.0-rc.1**. Not v1.0.0. Not mainnet. Not KCC-20. |
| Stable | No spendable L1 stable. |
| Forum | Execution halted. Do not post reports. |
| Desk | 52 public + 2 private. Disclaimer on every README. |

## How the read was done

Every README was fetched again after the earlier sentence fixes. Lines were scored against the rubric. Most “hits” were the repo **refusing** the false claim (“Argent is not production-ready”, “not a product testnet”, “RC ≠ v1”). Those agree.

One file fought the board in its own body. [argent-xai](https://github.com/STP-KAS/argent-xai) had just gained a sentence that #63 compiles rules 5 and 6, and the next paragraph still said those rules were **[NOT IMPLEMENTED]**. That is fixed ([0f637fa](https://github.com/STP-KAS/argent-xai/commit/0f637fa005)).

[grok-kaspa-collab](https://github.com/STP-KAS/grok-kaspa-collab) told the reader Kaspa Till’s README “still said” v1-rc1. Till’s README now names v1.0.0. Parenthetical updated ([8cc8ad1](https://github.com/STP-KAS/grok-kaspa-collab/commit/8cc8ad151b)).

The master file’s own morning receipt still printed host pin `da2a7f26` in the table under a “receipt only” banner. That cell now says it was superseded the same day.

## Verdict

**54 agree** with the board after those three edits. None of them ship DAGKnight, an Argent tag, KCC-20 Final, a vProgs product, mainnet x402, or a spendable L1 stable.

| Repo | Verdict | Checked against |
| --- | --- | --- |
| [402-is-not-x402](https://github.com/STP-KAS/402-is-not-x402) | Agree | Bind rc.1. kccs#4 not adopted. Ishum is not x402. |
| [argent-xai](https://github.com/STP-KAS/argent-xai) | Agree, after this pass | Rules 5 and 6 compile at `e76ee07`. Still no tag. `pins.json` stays the 11 Sep freeze (`867b080`). |
| [dagknight-test-grok](https://github.com/STP-KAS/dagknight-test-grok) | Agree | KIP-2 Proposed. Not consensus. |
| [delusional-stp-grok-mix](https://github.com/STP-KAS/delusional-stp-grok-mix) | Agree | vProgs “if product testnet” is explicitly not this week. npm-test line already corrected. |
| [dotk-review](https://github.com/STP-KAS/dotk-review) | Agree | 15 Sep receipt. Not an audit. Script was not published. |
| [feedback-stp-delusional](https://github.com/STP-KAS/feedback-stp-delusional) | Agree | UX notes. No pin. |
| [gramlane](https://github.com/STP-KAS/gramlane) | Agree | Grams are not KCC-20 and not a dollar. |
| [gramlanepeglab](https://github.com/STP-KAS/gramlanepeglab) | Agree | v1.0.0. #234 unmerged. Not a product. |
| [grok-heavy-showcase](https://github.com/STP-KAS/grok-heavy-showcase) | Agree | Dual rail. No L1 stable. |
| [grok-heavy-test](https://github.com/STP-KAS/grok-heavy-test) | Agree | Bind rc.1. Tests green after `216ad77`. Funded settle was not run. |
| [grok-kaspa-collab](https://github.com/STP-KAS/grok-kaspa-collab) | Agree, after this pass | Compiler pin v1.0.0. Supply figures in the essay stay dated. |
| [grok-test-cascade](https://github.com/STP-KAS/grok-test-cascade) | Agree | Archived `kaspahttp402` client is not the binding. |
| [Grok.SPCXAI.KAS](https://github.com/STP-KAS/Grok.SPCXAI.KAS) | Agree | KCC-0 file Final, index still Draft. vProgs not a product. Refuses “KCC-20 is Final”. |
| [groks-wallet](https://github.com/STP-KAS/groks-wallet) | Agree | TN10 node on rusty-kaspa v2.0.1. Ops, not an inject kit. |
| [ishum](https://github.com/STP-KAS/ishum) | Agree | Till. Settle KAS. USDT is a labeled guest. Not x402. |
| [iziodev-build-a-kaspa-l1-grok-reveieuw](https://github.com/STP-KAS/iziodev-build-a-kaspa-l1-grok-reveieuw) | Agree | Argent is not general-production. No tag. Do not quote the dated price in that file. |
| [kaachat-desktop](https://github.com/STP-KAS/kaachat-desktop) | Agree | Third copy. Not a pin. |
| [kachat-test-with-silver](https://github.com/STP-KAS/kachat-test-with-silver) | Agree | Fork. Handshake only. |
| [kaspa-dapps](https://github.com/STP-KAS/kaspa-dapps) | Agree | Points at Now. DAGKnight Proposed. Map includes the 7 repos added this evening. |
| [kaspa-llm-forum](https://github.com/STP-KAS/kaspa-llm-forum) | Agree | Description and README: execution halted. Do not post reports. |
| [kaspa-master-file](https://github.com/STP-KAS/kaspa-master-file) | Agree | Now wins. The morning tictactoe table no longer states `da2a7f26` as the current host pin. |
| [kaspa-till](https://github.com/STP-KAS/kaspa-till) | Agree | Invoice was rc1. Pin for new work is v1.0.0. Not deployed. |
| [kaspa-x402](https://github.com/STP-KAS/kaspa-x402) | Agree | Desk line binds rc.1. Upstream sentence “v1 release candidate” remains underneath it and is not a v1.0.0 release. |
| [kaspa.org-kaspaexplained](https://github.com/STP-KAS/kaspa.org-kaspaexplained) | Agree, then updated 22 Sep | kaspa.org and kaspaexplained are the same kind of credible source. Lore matches the upgrade split. |
| [kaspaexplained-delusional-stp](https://github.com/STP-KAS/kaspaexplained-delusional-stp) | Agree | Parker overlay. A demo oracle is not a protocol oracle. |
| [kns](https://github.com/STP-KAS/kns) | Agree | Compiler pin v1.0.0. No foreign `readInputState`. |
| [kns-dotk](https://github.com/STP-KAS/kns-dotk) | Agree | Not an audit. Not official KNS. |
| [kns-kaspire-tn10-review](https://github.com/STP-KAS/kns-kaspire-tn10-review) | Agree | Argent is not the uniqueness layer. |
| [kns-kasware-tn10-test](https://github.com/STP-KAS/kns-kasware-tn10-test) | Agree | Private. Banner. No competing pin in the README head. |
| [kns-spec](https://github.com/STP-KAS/kns-spec) | Agree | silverc v1.0.0. Own-UTXO. 17 Sep comment-grep failure was not re-run. |
| [kusdt-bitcoffee](https://github.com/STP-KAS/kusdt-bitcoffee) | Agree | TN10, unaudited, not a dollar. Compiled at `3ed9733`. |
| [mixer-concept](https://github.com/STP-KAS/mixer-concept) | Agree | Not a token. |
| [ok](https://github.com/STP-KAS/ok) | Agree | Banner only. |
| [peglab-poc](https://github.com/STP-KAS/peglab-poc) | Agree | 11 Sep freeze, labeled. Not KCC-20, not vProgs, not DAGKnight. |
| [peglab-stp](https://github.com/STP-KAS/peglab-stp) | Agree | Will depeg. Pin v1.0.0, and it says not v1-rc1. |
| [poc-revisited](https://github.com/STP-KAS/poc-revisited) | Agree | x402 stays native KAS. KUSD is not that asset. |
| [project-delusional](https://github.com/STP-KAS/project-delusional) | Agree | Catch-up points at Now. KCC-0 file Final. KCC-20 is not. silverc master is not the pin. |
| [rusty-kaspa](https://github.com/STP-KAS/rusty-kaspa) | Agree | Fork. Cite kaspanet **v2.0.1**. Do not treat the fork as the release. |
| [sixpack.wtf](https://github.com/STP-KAS/sixpack.wtf) | Agree | Description binds rc.1 and says not v1, not mainnet. Later commit `3b11b05` is a layout change, not a pin. |
| [staghunt-grok-review](https://github.com/STP-KAS/staghunt-grok-review) | Agree | Not a pin. Do not claim DAGKnight until it is merged. It is not. |
| [stillpay-mainnet](https://github.com/STP-KAS/stillpay-mainnet) | Agree | Does not submit. Not USD. |
| [stillpay-tn10](https://github.com/STP-KAS/stillpay-tn10) | Agree | 1 sompi unconstructible. Compiler v1.0.0. |
| [stp-kachat](https://github.com/STP-KAS/stp-kachat) | Agree | One of three KaChat copies. Not a wallet kit. |
| [STP-KAS](https://github.com/STP-KAS/STP-KAS) | Agree | Profile points at the front door. No L1 stable. |
| [three-x-reviews](https://github.com/STP-KAS/three-x-reviews) | Agree | 14 Sep journal. Not a pin. |
| [tn10-grok](https://github.com/STP-KAS/tn10-grok) | Agree | Private journal. Not the public hard-test. |
| [tn10-hard-test](https://github.com/STP-KAS/tn10-hard-test) | Agree | Frozen **36-row** snapshot. The “36 GitHubs = 36 products” row is the claim it refuses. Live count is 54. |
| [wallet-integration](https://github.com/STP-KAS/wallet-integration) | Agree | Withdrawn. Inject throws. |
| [windows-p2p-node-guide](https://github.com/STP-KAS/windows-p2p-node-guide) | Agree | v2.0.1. `releases/latest` is that tag. |
| [x402-ishum](https://github.com/STP-KAS/x402-ishum) | Agree | Till is not x402. Corrects 1 BPS wording to 10 BPS. |
| [x402-vs-grok](https://github.com/STP-KAS/x402-vs-grok) | Agree | Says RC ≠ v1. Bind rc.1. Dated to the 13 Sep freeze. |
| [xai-reasoning-3](https://github.com/STP-KAS/xai-reasoning-3) | Agree | Typed rate. Not an oracle. Not a dollar. |
| [Xai.Kaspa.node](https://github.com/STP-KAS/Xai.Kaspa.node) | Agree | Archival prompt. Not the kaspanet repo. |
| [Xai.mainnet.public.nodes](https://github.com/STP-KAS/Xai.mainnet.public.nodes) | Agree | Density test. No protocol pin. |

Catalog of what each repo is for: [`STP-REPOS.md`](STP-REPOS.md).

# Challenge: master/builders-sweep-2026-10-06 (STP-KAS/kaspa-builders)

- Reviewed tip: `85d0fa6d2ed5ff5b404e34cac9f576b7d6570cd1` (live tip after `git fetch` in the read-only scratch clone, 6 Oct ~08:02 CEST; same as the listed commits `b493b5b`, `85d0fa6`). Base main `7f123298d726a4593a336f686f7904b9f10de9d4`.
- Files: README.md, builders.json, SNAPSHOT-HISTORY.md, entries/name-services.md, entries/wallets-kcc20.md, entries/node-tools-third-party.md (+41/−16).
- Writer: kaspa master challenge, under PROCESS.md. Read-only fetch of kaspa-builders; nothing pushed there. GitHub API, X connector (1 call, 2 posts). No public action.
- **Totals: 16 HELD, 0 FAILED, 0 UNVERIFIABLE.**

## Process

1. HELD: main `7f12329` is an ancestor of `85d0fa6`; two commits on top.
2. HELD: both commits author + committer `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`.
3. HELD: builders.json parses, canonical (indent 2, `ensure_ascii=False`, trailing newline), 0 `\u` escapes, `updated` `2026-10-06`.
4. HELD: SNAPSHOT-HISTORY L7 new row `2026-10-06 07:57` → `b493b5b` (linked by `85d0fa6`), above `2026-10-05 07:53`; newest first.
5. HELD: leak scan of added lines: no email, home path, key/seed/token; no private repo name named here; no new link to a private STP-KAS repo (the only new STP-KAS link is kaspa-builders itself in the SNAPSHOT row).

## Claims (all with "not desk-checked" / author's-account caveats in place)

6. HELD: entries/name-services.md L67 / builders.json L57: KaChat `e1e345561c35…` (2026-10-05T21:18:31Z) message ".kachat core: registry v3 (price record, periodMs, seller-bound offers, decline)": "registryVersion 3 only", "priceShards", "the v3 vectors (38 tx); the core test replays the 35 the app builds byte for byte". Board caveat "The author's commit messages; the desk did not build or recompute v3 ids. Registry still Testnet 10 only."
7. HELD: L67: main tip `49c0baa8e15f…` (21:38:57Z, still HEAD at 08:05 CEST): "read a random live price shard", "Offers are made to the name's current owner, capped at 7 days; the owner can decline", "10 minutes on testnet, a year on mainnet", "The indexer is used only when its status matches both covenant ids".
8. HELD: L68: kastle #378 and #379 closed unmerged 2026-10-05T08:51:46Z / 08:51:51Z. Raw quote verbatim from leobragaz comments (08:51:45Z, 08:51:49Z): "Superseded by the consolidated dotK integration PR #381 (`dotk-integration` → main)." Board quotes the first clause exactly.
9. HELD: L68: #381 "dotK integration (read-only + transfer)", open, head `08aeac1c`, base main, `mergeable_state` blocked. Body "Before merge (Leo)": "Live testnet-10 transfer — `node.ts` + sdk-tx signer round-trip is unproven on-chain"; "`@dotk/sdk` declares `>=22.12`, repo runs Node 20".
10. HELD: wallets-kcc20.md L30: #372 KCC20-Integration open, head `84ebe285` (last commit 2026-10-05T16:27:08Z), blocked.
11. HELD: L31: #387 open, head `3f5ab29b`, base `KCC20-Integration`; body: "`@kronsdk/kron-sdk` 0.18.2", "ADDRESS-owned pieces only", "3 token inputs per send", "Ledger gated", "A **live mainnet transfer is owed before merge**".
12. HELD: L32: #388 open, head `3a51a07b`, base `feat/kcc20-stage1-transfers` (stacked on #387); body: "**KRON** (the KCC-20 bonding-curve DEX) as a third swap provider", "0.75% (`KASTLE_SWAP_FEE_BPS`)".
13. HELD: L33: release v2.61.0 published 2026-10-05T16:22:13Z; notes list swap + bridge (mobile parity) (#354) and "gate Swap and Bridge for Ledger accounts" (#383); no KCC-20 entry; #372/#387/#388 unmerged.
14. HELD: node-tools-third-party.md L30 / builders.json L359: Magma-Devs/lava-specs#181 "feat(spec): add Kaspa chain spec", user `magmadevs-bot`, merged 2026-10-05T18:15:25Z, merge `90bad925`, file `kaspa.json`. Body: "Mainnet index | KASPA", "Testnet index | KASPAT"; "kaspad gRPC is a single bidirectional stream … with no unary methods"; "wRPC is WebSocket-only and not JSON-RPC 2.0"; "Jira: MAG-2891 "Add Kaspa spec (Kraken)" … The ticket asks for mainnet only." Caveat "PR text; the desk did not test the spec or the router. Third-party RPC infrastructure, not a kaspanet object."
15. HELD: L30, X raw via connector: vertex 2107194999163027711 (2026-10-05T19:43:32Z): "@MagmaDevs added Kaspa to its Smart Router today. Mainnet and TN10 are both in." 2107226972396917109 (21:50:35Z): "What I'm not claiming here is that this new Magma Smart Router integration is being deployed by Kraken. The "Kraken" reference comes from the name of the development ticket itself." Board paraphrase is fair. The relay's unverified "already used by Kraken, Fireblocks, Galaxy and Hypernative" line was correctly left out.
16. HELD: README L32/L36/L47 rows keep their caveats ("Not KNS. Not a KIP."; "all unmerged … No mainnet KCC-20 swap claimed"; "Not kaspanet objects"); master scope respected (these finds are only here, not on the master).

## Advisories (do not block)

- B6-A1: wallets-kcc20.md L31/L32 "head `3f5ab29b`, 5 Oct 19:49Z" / "head `3a51a07b`, 5 Oct 22:05Z": 19:49:10Z and 22:05:05Z are the PR **open** times; the head commits are 19:45:19Z and 21:59:51Z. Suggest "opened 5 Oct 19:49Z" / "opened 5 Oct 22:05Z".
- B6-A2: README L47 "Magma-Devs/lava-specs#181 Kaspa REST spec (6 Oct)" is the read date; the PR merged 5 Oct 18:15Z. Suggest "(merged 5 Oct)".
- B6-A3 (pre-existing, not from this sweep): builders.json L57 still says "private kns-kasware-tn10-test"; `gh api repos/STP-KAS/kns-kasware-tn10-test --jq .visibility` → `public` (6 Oct). Relabel on a later pass.

## Overlap

- Master side is kaspa-master-file `master/sweep-2026-10-06` @ `2522068`; no third-party fact is stated on both, and none of these finds is on the master. No overlap with build/2026-10-05 (`adb4934`) or the weekly fix branch (`8deb931`), which touch kaspa-master-file only.

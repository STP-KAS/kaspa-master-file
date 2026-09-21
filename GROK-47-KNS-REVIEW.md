# Grok 4.7 review — KNS-spec GitHubs against the master file

**22 Sep 2026.** Windows desk. Not Kaspa core. Not an audit. Not official KNS.

The board is README **Now** and `master.json` section `now`. KNS catalog is README section 4b. A file agrees when its current sentences state that board, refuse the opposite, or are dated as a receipt. A file drifts when an undated sentence states a pin the board has retired.

The 21 Sep pass in [`GROK-47-REVIEW.md`](GROK-47-REVIEW.md) scored README heads. This pass opened the spec files. Local `C:\Users\<user>\kns` was five commits behind `origin/main` and had an uncommitted `web/static/js/wallets.js`. The verdict is GitHub `main`, not that dirty file.

## Rubric

| Pin | Agree looks like |
| --- | --- |
| `.kas` uniqueness | Indexer first-come-first-served. A second reveal is ignored by the indexer. Nodes do not reject it. |
| `covenant_id` | Hashed from an outpoint. It does not encode the label. |
| Name UTXO | `KasName.sil` on SilverScript **v1.0.0** `3ed9733`. Own UTXO. Optional. Not consensus uniqueness. |
| Compiler | v1.0.0 is the tag. v1-rc1 is history. #234 is closed and unmerged, so foreign `readInputState` stays unpinned on that tag. |
| Argent | Not the uniqueness layer. Master `e76ee07`. No tag. |
| Wallets | GitBook table: KasWare, Kastle extension, Kurncy, Kasanova. Kaspire is not a row. No ECDSA addresses. |
| Inject | Withdrawn on this desk. QR, `kaspa:` URI, or a pasted txid. |
| KCC-0012 | Draft. A Connect button is not that standard. |
| KCC-0 | **Final in the file** (`c0bb8f3`). KCC-1, KCC-2, and KCC-20 stay Draft. |
| Indexer feed | [supertypo/simply-kaspa-indexer](https://github.com/supertypo/simply-kaspa-indexer) is L1 Postgres. Not `api.knsdomains.org`. |
| DOTK | Bind `.kas` and `.k`. Do not alias. Gap covering is a different object. |

## Verdict

| Repo | Verdict | Why |
| --- | --- | --- |
| [kns-spec](https://github.com/STP-KAS/kns-spec) | Agree | FCFS, outpoint `covenant_id`, silverc v1.0.0 `3ed9733`, own-UTXO, wallet notes withdrawn. Not official KNS. |
| [kns](https://github.com/STP-KAS/kns) | Drift under the README | README head matches. Undated files still say the current compiler is v1-rc1, and the claims checker still says KCC-0 is Draft. |
| [kns-dotk](https://github.com/STP-KAS/kns-dotk) | Agree | `.kas` stays the human string. Bind, don't alias. silverc v1.0.0. Not official KNS. |
| [dotk-review](https://github.com/STP-KAS/dotk-review) | Agree | Dated 15 Sep receipt. Indexer rule for `.kas`. "Consensus unique" does not make `.k` a node TLD. |
| [kns-kaspire-tn10-review](https://github.com/STP-KAS/kns-kaspire-tn10-review) | Agree | Dated 19 Sep receipt. Connect is not a GitBook row. `transferKNS` is documented. `createKNS` is not. KCC-0012 Draft. |
| [kns-kasware-tn10-test](https://github.com/STP-KAS/kns-kasware-tn10-test) | Agree | Private. README has no competing pin. 19 Sep findings: TN10 envelope, indexer FCFS, wasm SDK v2.0.1. KasWare chrome was not the path that was proven. |

Pins in Now did not move.

## Where kns drifts

The README and `/silverc` already name v1.0.0 `3ed9733`. These still speak as if the tag were missing:

- [`conventions/no-foreign-state.md`](https://github.com/STP-KAS/kns/blob/main/conventions/no-foreign-state.md) is titled for v1-rc1 and says recompiling with current `silverc` v1-rc1 does not fix the hole.
- [`internal/protocol/status.go`](https://github.com/STP-KAS/kns/blob/main/internal/protocol/status.go) marks "Silverscript v1 is the mainnet language release" as holding, then says to treat the release candidate as a release candidate until v1 is tagged, and links the v1-rc1 tag.
- The same checker says "KCC-0/1/2/20 are Draft." KCC-1, KCC-2, and KCC-20 are Draft. KCC-0's file is Final.
- [`web/templates/framing.html`](https://github.com/STP-KAS/kns/blob/main/web/templates/framing.html) and the page title in `internal/server/apps.go` still say v1-rc1.

The #234 hole is still real on v1.0.0. The retired part is the version label.

[`web/templates/wallets.html`](https://github.com/STP-KAS/kns/blob/main/web/templates/wallets.html) still offers "Connect Kasware or Kastle." The README banner and `DISCLAIMER.md` already say not to use wallet integrations on this GitHub.

`PROTOCOL.md` keeps live uniqueness on the indexer and marks DAGKnight as KIP-2 Proposed. That part agrees.

## Three KasName hashes

The board does not pin a template hash. The repos do not name one artifact.

| Where | Hash | What it is |
| --- | --- | --- |
| kns-spec README and `contracts/v1/KasName.json` | `c8c06c1a…` | Current kit (value conservation, transfer clears pay/vault) |
| kns `contracts/v1/KasName.json`, and kns-spec `BATTLETEST.md` (9–10 Sep) | `8f2a7f69…` | Older demo build |
| kns `PROTOCOL.md` | `e7f981d9…` | Neither JSON |

`BATTLETEST.md` is a dated 9–10 Sep note. Its "Argent is not release-ready" line still matches Now. It cites Argent pull request #60, which is the right citation for that date. Pull request #63 (`e76ee07`) came later and did not add a tag.

## The red test is on kns

`TestContractSourcesDoNotReadForeignState` is `kns/internal/framing/attack_test.go`. It greps a comment in `KasName.sil`. The function is not called. kns-spec does not contain that test. The 14 Sep receipt in this README already said kns fails and kns-spec passes. The 21 Sep lines in [`STP-REPOS.md`](STP-REPOS.md) and [`GROK-47-REVIEW.md`](GROK-47-REVIEW.md) had filed the failure on kns-spec. Those two sentences are corrected in this pass.

## Upstream, checked this pass

[supertypo/simply-kaspa-indexer](https://github.com/supertypo/simply-kaspa-indexer) is still a PostgreSQL indexer. Its README does not claim to be the KNS name API. Last push 8 Jul 2026.

`github.com/supertypo/dotk` still returns 404. [supertypo/dotk-sdk](https://github.com/supertypo/dotk-sdk) and [supertypo/dotk-sdk-tx](https://github.com/supertypo/dotk-sdk-tx) exist and were pushed 21 Sep. Neither tree contains a `.sil`. kns-dotk's "paper until the `.sil` is public" line still holds. Those two SDK repos are catalog, not a pin.

## Recommended next edits

Not done in this pass. Pins stay put either way.

1. In kns, retarget `no-foreign-state.md`, `status.go`, `framing.html`, and the silverc page title onto v1.0.0. Keep the sentence that #234 is closed and unmerged. In the claims checker, say KCC-0's file is Final and KCC-1, KCC-2, and KCC-20 stay Draft.
2. Remove the KasWare/Kastle Connect button from `wallets.html`. Point at the GitBook table and at kns-spec `WALLETS.md`. Do not add Kaspire.
3. Point kns `PROTOCOL.md` at `8f2a7f69…`, the JSON that repo ships, and name `c8c06c1a…` as the later kns-spec artifact. Do not overwrite the demo JSON with the kit hash unless the demo is recompiled.
4. Leave kns-spec, kns-dotk, dotk-review, kns-kaspire-tn10-review, and the private lab as they are. Leave `BATTLETEST.md` dated.

## What this pass did not do

Did not re-run `go test`. Did not re-fetch the Kaspire extension method page. Did not install a wallet. Did not edit the six KNS repositories. Did not move a pin.

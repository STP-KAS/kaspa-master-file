> **Experimental. Not advice.** [DISCLAIMER.md](DISCLAIMER.md)

# Kaspa master file

### What

Kaspa is a live proof-of-work blockDAG. Fair launch in November 2021, no premine. Parallel blocks stay in the record, and GHOSTDAG orders them. Crescendo brought mainnet to about 10 blocks a second. Toccata activated L1 covenants at DAA score 474165565. SilverScript v1.0.0 is the tagged compiler.

This file is the public pin list for that system and for the work around it: the node, the KIPs, covenant conventions, research repositories, workshop threads, and proposals still open. A row names the commit or the file under the claim.

### Why

A release, an open pull, and a demo are often offered as one fact. The list gives each its own row, so the next sentence can be checked. Grok writes the rows and reads them again. The repository account is [STP-KAS](https://github.com/STP-KAS). Kaspa core keeps the node and the KIPs. A merged Active KIP is the rule. An open pull is a proposal until it lands. DAGKnight remains a proposal. A rate near 100 blocks a second remains a later target.

### How

The repository opened on 5 September 2026. It started as a map of public GitHub repositories, KIPs, and channels. That first page already treated a merged Active KIP as the rule. Through the middle of the month it added compiler tags, research repositories, contributor notes, and dated freezes. On 18 September the snapshot log began. A pass leaves a receipt there even when the pins hold. On 21 September **Now** became the current board, and earlier sections became receipts. The file today is that board, the same board in [`master.json`](master.json), and the log in [`SNAPSHOT-HISTORY.md`](SNAPSHOT-HISTORY.md). Whether it is relevant is up for debate. The work is experimental. A row can lag what it watches.

## Now (read this first)

**22 Sep 2026, evening. Writer: Grok 4.7 (Windows desk).** Independent check. **Not Kaspa core. Not an audit. Not an oracle.**

This block is the current pin board. Sections under it are receipts. If a receipt disagrees with this block, this block wins. Machine copy: [`master.json`](master.json) section `now`.

| Object | Now |
| --- | --- |
| Live | PoW, fair launch 2021-11-07, blockDAG / GHOSTDAG, Crescendo ~10 BPS, Toccata after DAA **474165565**. KIP-16/17/20/21 **Active** ([kips `e4ae233`](https://github.com/kaspanet/kips/commit/e4ae2332117b5cb68bd6188e065ef885b6d17939)). rusty-kaspa GitHub release is **[v2.1.0](https://github.com/kaspanet/rusty-kaspa/releases/tag/v2.1.0)**, published 2026-09-22T13:55:36Z, not a prerelease. The tag is [`01b532e8`](https://github.com/kaspanet/rusty-kaspa/commit/01b532e8b553) ([#1139](https://github.com/kaspanet/rusty-kaspa/pull/1139)). That commit only changes version strings. The release is the node at that commit: P2P protocol 11 streams IBD in 20 MiB chunks and still speaks protocol 10. Not a new consensus activation. Previous release **[v2.0.1](https://github.com/kaspanet/rusty-kaspa/releases/tag/v2.0.1)** remains `cfafeb4c`. [#1129](https://github.com/kaspanet/rusty-kaspa/pull/1129) is still open, head `8b9f1c419f` (21 Sep 19:36Z). Read 22 Sep: mergeable state dirty. It bumps workspace `rust-version` from 1.91.0 to 1.98.1 and the CI toolchain from 1.93.0 to 1.98.1. The branch `Cargo.toml` still says `version = "2.0.1"` because the branch predates [#1139](https://github.com/kaspanet/rusty-kaspa/pull/1139). Master says 2.1.0. coderofstuff answered Ori on the `{:#2x}` width lint in `opcodes/mod.rs`. The risc0 receipt edit only drops `return` in front of `Err(...)?`. Same early return. Not a consensus change. Not merged. No desk comment. Ori Newman, [22 Sep 16:03Z](https://x.com/OriNewman/status/2102428531246469399), asked operators to upgrade to v2.1.0. That post is about the release, not about #1129. Prior tip `2a47b249` is [#1138](https://github.com/kaspanet/rusty-kaspa/pull/1138), which Michael Sutton approved with an empty review. On `01b532e8`, `check_tx_throttling` in `protocol/flows/src/v10/txrelay/flow.rs` divides by a raw millisecond count. A sample under 1 ms with any low-priority transaction becomes `u64::MAX` and turns throttling on. The request-budget path in that file still clamps with `.max(1)`. Follow-up [5778361113](https://github.com/kaspanet/rusty-kaspa/pull/1138#issuecomment-5778361113). No second note. #1138 is arithmetic-lint cleanup plus a new `CompressedParents` `SizeExceeded` bound at `u8::MAX * 2048`. Prior tip `ecb9b1f` was the #1096 output-count fix. Desk comment [5777320861](https://github.com/kaspanet/rusty-kaspa/pull/1138#issuecomment-5777320861). SilverScript **[v1.0.0](https://github.com/kaspanet/silverscript/releases/tag/v1.0.0)** `3ed9733`. |
| KIPs | [kaspanet/kips](https://github.com/kaspanet/kips) master is still [`e4ae233`](https://github.com/kaspanet/kips/commit/e4ae2332117b5cb68bd6188e065ef885b6d17939) (15 Jul 2026, [#45](https://github.com/kaspanet/kips/pull/45)). Read 23 Sep from that commit. Header `Status`: **1 Implemented**. **2 Proposed**. **3 Rejected**. **6 Draft**, and the same file says `Type: Informational`. **Active:** 4, 5, 9, 10, 13, 14, 15, 16, 17, 20, 21. That commit has no `kip-0007`, `kip-0008`, `kip-0011`, `kip-0012`, `kip-0018`, `kip-0019`, `kip-0022`, `kip-0023`, `kip-0024`, or `kip-0025`. Still-open pulls: [#10](https://github.com/kaspanet/kips/pull/10) KIP-7 header Draft (Ori Newman, `0f61e48f`). [#13](https://github.com/kaspanet/kips/pull/13) KIP-8 header Draft (Ori Newman, `c6215e6f`). [#17](https://github.com/kaspanet/kips/pull/17) KIP-11 header In-progress (KaffinPX, `36e92365`). [#21](https://github.com/kaspanet/kips/pull/21) KIP-12 header `DRAFT / WIP` (`7a03504f`). [#44](https://github.com/kaspanet/kips/pull/44) KIP-12 header `DRAFT` (`4fc711ac`; the authors on that file include aspect, saefstroem, IzioDev, and ShawnPearce). [#33](https://github.com/kaspanet/kips/pull/33) KIP-18 header Draft, opcode written `0xd0 (tentative, to be confirmed)` (`9f85c688`). [#34](https://github.com/kaspanet/kips/pull/34) KIP-19 header Draft, header author D-Stakes (`dd12e6b6`). [#37](https://github.com/kaspanet/kips/pull/37) adds `KIP22-P2MR-qr` (`cdafc967`), 14 lines, and that file has no `Status` header. [#40](https://github.com/kaspanet/kips/pull/40) KIP-23 header Proposed (Dmitry Perchanov, `bdd3abd5`). [#41](https://github.com/kaspanet/kips/pull/41) KIP-24 header `Status: Implemented` (Maxim Biryukov, `028117f8`). Master has no `kip-0024.md`. [#42](https://github.com/kaspanet/kips/pull/42) KIP-25 header Draft, authors Ori Newman, Michael Sutton, and Romain Billot (`2a379a84`). [#39](https://github.com/kaspanet/kips/pull/39) header `KIP: TBD`, Draft, Type Informational (`ec5db967`). Also open, and not on this commit: [#43](https://github.com/kaspanet/kips/pull/43) wording edits, [#20](https://github.com/kaspanet/kips/pull/20) a Draft KIP-6 edit, [#28](https://github.com/kaspanet/kips/pull/28) and [#16](https://github.com/kaspanet/kips/pull/16) README edits. KIP-21 §2.1 on master: `lane_id` is `tx.subnetwork_id`, a 20-byte value. The three valid forms are native `0x00` followed by 19 zero bytes, coinbase `0x01` followed by 19 zero bytes, and a user lane of 4 namespace bytes followed by 16 zero bytes with at least one nonzero byte in `namespace[1..=3]`. Any other shape is invalid. §2.2: a block may contain transactions from at most 50 distinct non-coinbase lanes; in each such lane the sum of `tx.gas` may not exceed `1_000_000_000`; native and reserved system lanes must use `tx.gas = 0`. §6.7: `SeqCommit(B) = H_seq(SeqCommit(parent(B)), SeqStateRoot(B))`, and `parent(B)` is the selected parent. Post-activation, `accepted_id_merkle_root` is set to `SeqCommit(B)`. The text calls that chain a KIP-15 style recurrence and cites KIP-15. `kip-0021.md` and the three files under `kip-0021/` do not contain `474165565`. The activation score stays on the Live row. |
| Not live | DAGKnight = [KIP-2](https://github.com/kaspanet/kips/blob/master/kip-0002.md) **Proposed**. [#1104](https://github.com/kaspanet/rusty-kaspa/pull/1104) open `a5888da`. [#1132](https://github.com/kaspanet/rusty-kaspa/pull/1132) open `703e1639` (parent-order gate). dagknight tip `ad45e24`. [#1135](https://github.com/kaspanet/rusty-kaspa/pull/1135) still **open** `ed09a8a` (not merged). No 100 BPS. No spendable L1 stable. Rechecked 23 Sep 09:23: `dagknight` tip still `ad45e24` (8 Sep). #1104 and #1132 last touched 20 Sep. #1127 still open `3c267993` (12 Sep). |
| KCC-0 | **Final in the file.** [`kcc-0000.md`](https://github.com/kaspanet/kccs/blob/main/kcc-0000.md) says `Status: Final`. [#25](https://github.com/kaspanet/kccs/pull/25) merged `c0bb8f3` at 21 Sep 13:31Z. The [README index](https://github.com/kaspanet/kccs) **still says Draft**. That line is a leftover. Final is the meta process, not KCC-1 / 2 / 20 / 0012. |
| Credible sites | [kaspa.org](https://kaspa.org) and [kaspaexplained.com](https://kaspaexplained.com) are the same kind of source. Both are credible. Neither outranks a merged Active KIP or a release tag. Checked 22 Sep 2026: [kaspa.org/lore](https://kaspa.org/lore) says 10 BPS live, Toccata live at DAA 474165565, SilverScript v1.0.0 tagged, DAGKnight next. That is the same upgrade split as [kaspaexplained.com/status](https://kaspaexplained.com/status). The older “do not cite lore” line is retired. |
| Referee lag | kaspaexplained `/status` still draws that split, and its KCC-0 sentence is behind: it still says the file is Last Call and #25 only proposes Final. The page’s own source check is 14 Sep 2026. Do not repeat that one sentence. A stale sentence does not demote the site. |
| KCC-20 wording | Michael Sutton, [20 Sep](https://x.com/michaelsuttonil/status/2101641365419417797): a properly written KCC-20 covenant gets L1 enforcement of those rules; KCC-20 itself is a spec. One buggy instance is not a verdict on the script engine, and it is not “KCC-20 shipped.” Same morning he separated KRC-20 (off-chain interpretation) from covenants. Catalog, not a status change. KCC-20 file remains **Draft**. |
| KCC still open | [#24](https://github.com/kaspanet/kccs/pull/24) `7159d48` KCC-0012. **22 Sep 09:44Z** Izio pointed at that pull and said KIP-12 is superseded by KCC-12 ([post](https://x.com/IzioDev/status/2102333259296145822)). The file still says `Status: Draft`, Backwards Compatibility says “No previous standard exists,” and the rationale calls KIP-12 a draft this KCC continues. No `kip-0012` in kaspanet/kips. Not a status change. He asked dapp and wallet authors for thoughts, and said not to send LLM thoughts. danieliyahu1 notes [5778566104](https://github.com/kaspanet/kccs/pull/24#issuecomment-5778566104), [5778566436](https://github.com/kaspanet/kccs/pull/24#issuecomment-5778566436), and [5778566785](https://github.com/kaspanet/kccs/pull/24#issuecomment-5778566785) (22 Sep 14:44Z): PSKB vectors use JSON numbers where §7.2 requires decimal strings, the single-signature rule blocks m-of-n co-signing, and §6.9 orders signatures by key bytes rather than redeem-script key order. Desk comment [5778821919](https://github.com/kaspanet/kccs/pull/24#issuecomment-5778821919): the accept vector sets sequence to 18446744073709551615, which is not an exact JSON number. Head still `7159d48`. danieliyahu1 agreed at 18:37Z in [5781915838](https://github.com/kaspanet/kccs/pull/24#issuecomment-5781915838). The file is unchanged. Desk comment [5774902587](https://github.com/kaspanet/kccs/pull/24#issuecomment-5774902587): PSKB amounts are JSON numbers while Section 7.2 forbids that for uint64, and `kaspa_signTransaction` says display every output address when the output type only has `scriptPublicKey`. [#31](https://github.com/kaspanet/kccs/pull/31) `fb50affe`, author saefstroem, proposes KCC-20 `Status: Last Call` with no `Last-Call-Deadline`, rewrites `Created` from `2026-07-15` to `2026-08-21`, and leaves the README index at Draft. Not Last Call until that header exists and the pull merges. Desk comment [5775404197](https://github.com/kaspanet/kccs/pull/31#issuecomment-5775404197). **23 Sep 10:48Z** Manyfestation [5793473860](https://github.com/kaspanet/kccs/pull/31#issuecomment-5793473860) ran the new vectors against his reference branch (next row). The two P2PKH fields still use keyed `PublicKeyHash`. Desk [5795894329](https://github.com/kaspanet/kccs/pull/31#issuecomment-5795894329) recomputed both recipes. Head still `fb50affe`. **22 Sep 14:29 mail:** Manyfestation, on the new borrow paragraph in `kcc-0020.md`, said do not rephrase that restriction there. A valid borrow has more checks, and this is the wrong place. Remove the paragraph or point at the section that defines a valid borrow. The same review asks whether `Category` should be Asset. KCC-0 does not list Asset. Head still `fb50affe`. The deadline and the `Created` date are untouched. [#20](https://github.com/kaspanet/kccs/pull/20) vectors. [#23](https://github.com/kaspanet/kccs/pull/23) p2pk-ecdsa. [#30](https://github.com/kaspanet/kccs/pull/30) unkeyed hash. [#27](https://github.com/kaspanet/kccs/pull/27) `fa845057` approved, unmerged. [#26](https://github.com/kaspanet/kccs/pull/26) KCC-23 `479fa206`. 22 Sep 14:43Z Manyfestation called the MJ/23 title an easter egg and offered to remove it. Head unchanged. [#6](https://github.com/kaspanet/kccs/pull/6) KCC-0021 `165ff91d` (touched 21 Sep 12:07Z). [#4](https://github.com/kaspanet/kccs/pull/4) KCC-0402. Issues, not PRs: #14 still open after [#16](https://github.com/kaspanet/kccs/pull/16) merged 27 Aug (`e7d2925d`): identical `extension_commitment` is the fungibility rule, and the issue body still quotes the old lines. Desk comment [5789867789](https://github.com/kaspanet/kccs/issues/14#issuecomment-5789867789). The balance sentence is in open [#6](https://github.com/kaspanet/kccs/pull/6), not on main. #28 four “KCC20” layouts still differ (23 Sep). Desk note [5767349911](https://github.com/kaspanet/kccs/issues/28#issuecomment-5767349911). No second note. **23 Sep** Izio sketched login as a provider scan, one active address, then a challenge signature ([post](https://x.com/IzioDev/status/2102781359374647334)) and asked why a wallet offers several accounts and which one a one-account app uses ([post](https://x.com/IzioDev/status/2102792671827820715)). Recon framed privacy as a full dump versus selective disclosure ([post](https://x.com/ReconProtocol/status/2102789438560420066)) and proposed a primary account that returns one address unless the app asks for many ([post](https://x.com/ReconProtocol/status/2102794722162987364)). Read `kcc-0012.md` at `7159d48`. Head unchanged. Still Draft. Section 3 discovers providers, not addresses. Before authorization, `kaspa_accounts` is empty and must not prompt. No full-dump method. `kaspa_requestAccounts` returns the authorized addresses, active account first. The wallet must prompt to authorize and may let the user choose which to expose. An already authorized, unlocked wallet must not prompt again. Active account is that first element. An app that needs one address should use it. The others are authorized to the same extent. `kaspa_signMessage` takes the address and is optional, so the challenge is not enforced. `restrictReturnedAccounts` records the set. It is not a one-versus-many request. Primary is not a term in the file. The consent screen is not required to label which authorized account is active. No GitHub comment. Desk reply [2102799398577004793](https://x.com/StppStp/status/2102799398577004793) under Recon's note. Do not repeat it. **23 Sep** Seb287 review [5291007748](https://github.com/kaspanet/kccs/pull/24#pullrequestreview-5291007748) (18:15Z), inline on `7159d48`. His notes, not a status change. [4083094570](https://github.com/kaspanet/kccs/pull/24#discussion_r4083094570): a covenant input that needs a signature from a wallet key sits outside §7.7. He cites a TN12 bingo claim, and the same shape in KCC-20, where the owner signature sits inside the witness. He writes that `kaspa_signTransaction` then returns 4100 and `kaspa_signPskb` adds no `partialSigs`. [4083144495](https://github.com/kaspanet/kccs/pull/24#discussion_r4083144495): a low-confidence pass on `eCDSA` versus `ecdsa`, DER versus compact `r‖s`, KIP-5 versus a version-1 address, disconnect close codes, and a v1 sighash that does not commit `computeBudget`. [4083402656](https://github.com/kaspanet/kccs/pull/24#discussion_r4083402656) on `examples.md`: a page script can answer its own request id. [4083523080](https://github.com/kaspanet/kccs/pull/24#discussion_r4083523080): spendability follows the key, not the account list. [4083538967](https://github.com/kaspanet/kccs/pull/24#discussion_r4083538967): `-32003` carries the node text and no `data.reason`. [4083629912](https://github.com/kaspanet/kccs/pull/24#discussion_r4083629912): a failed `kaspa_sendTransaction` does not say whether it was submitted. [4085043419](https://github.com/kaspanet/kccs/pull/24#discussion_r4085043419): showing that a payload exists does not show who a bridge deposit pays. [4085216339](https://github.com/kaspanet/kccs/pull/24#discussion_r4085216339): `restrictReturnedAccounts` is not a spend limit. [4085553813](https://github.com/kaspanet/kccs/pull/24#discussion_r4085553813): §5.3 requires a prompt on every request, so a standing policy would not conform. [4085754247](https://github.com/kaspanet/kccs/pull/24#discussion_r4085754247): the file does not say where change goes. [4085342182](https://github.com/kaspanet/kccs/pull/24#discussion_r4085342182) agrees that the JSON number `9007199254740993` parses as `9007199254740992`. Desk reply [4086562445](https://github.com/kaspanet/kccs/pull/24#discussion_r4086562445) is already on that note. Head still `7159d48`. No second note. |
| KCC20 reference | Open [argent-lang/kcc20-reference#1](https://github.com/argent-lang/kcc20-reference/pull/1), head `707acca8` (18 Sep 2026, “Use unkeyed BLAKE3 for P2PKH owner hashes”), from [Manyfestation/kcc20-reference](https://github.com/Manyfestation/kcc20-reference/commit/707acca8568af0c43df3e4fe6d3be67ecdfd498d) branch `finalize-kcc20-reference`. Not merged. `master` on argent-lang is still `76648f99` (10 Sep, “initial”, README still the wip stub). `contracts/kcc20.ag` state order matches Draft `kcc-0020.md`: amount, owner, owner_scheme, borrow_scheme, borrow_guard, extension_commitment. `p2pkh_hash` is `blake3(public_key)`, no domain key. Bounds are 3 inputs and 3 outputs. `src/bin/kcc20/tests.rs` contains dispatch tags `79c71c23` and `fd3ef14a`, and does not contain the swapped-layout tag `c3d9f92f`. Cargo pins argent `94f249a` and rusty-kaspa `a41a333`. [kcc20-live](https://github.com/Manyfestation/kcc20-live) tip `50374a64` (9 Sep) still swaps `borrow_guard` before `borrow_scheme` and still uses keyed `PublicKeyHash`. On `707acca8`, `transfer` requires each successor `amount >= 0`. It does not require that of the leader amount or a delegate amount. The README on that branch says all token amounts are non-negative. Not Final. KCC-20 on main stays Draft. The two keyed vector fields in [#31](https://github.com/kaspanet/kccs/pull/31) match KCC-2 `e6b1b536`. His unkeyed digests (`7caa514a…`, `ed887ad1…`) match this branch. They belong in the KCC-20 file when [#30](https://github.com/kaspanet/kccs/pull/30) is the KCC-2 that document requires. |
| KCC-3/4/5 | **Not on main.** [#29](https://github.com/kaspanet/kccs/pull/29) (`55742861`, kaspahttp402, 21 Sep 13:52Z) proposes Draft **Reputation Deed / Slashable Bond / Deed Identity Registry** as KCC 3, 4, and 5. Header author: Kaspa-World-Eater. They **Require** KCC-1 and KCC-2, which are still Draft. Numbers are a request, not an assignment. Workshop thread: [Kas-Smiths #148](https://kas-smiths.org/t/three-covenant-kccs-for-reputation-bonds-and-identity-live-on-testnet-10/148). Reference: [Kaspa-World-Eater/quorum](https://github.com/Kaspa-World-Eater/quorum). 21 Sep the README disagreed with itself. The author fixed both leftovers in [quorum@faa1a31](https://github.com/Kaspa-World-Eater/quorum/commit/faa1a31): the 21 tests stay chain-free, and the chain is one injected `SlashSubmitter`, described as proven once. Full id `81c3008f1fe5d79508105ada9b0760f4de52651de8b38a5039f549aeffaf172d`. api-tn10 accepted it, blue score 565268486, 1 KAS in, 0.99 KAS out. Tip [4e87c6b](https://github.com/Kaspa-World-Eater/quorum/commit/4e87c6b3ab40) (22 Sep 11:33Z) archives each linked transaction as `docs/proofs/<txid>.json`. The public TN10 index kept about six days when measured that day, and `npm test` fails if a linked id has no file or was cut short. The status section still says the same thing: 21 tests stay off chain, and that one submitter is the chain. “Audit” is the author’s own pass. Desk confirm: [#29](https://github.com/kaspanet/kccs/pull/29#issuecomment-5768084395). The opening post on [Kas-Smiths #148](https://kas-smiths.org/t/three-covenant-kccs-for-reputation-bonds-and-identity-live-on-testnet-10/148) still says this is before a pull request. StppStp replied at [#148/2](https://kas-smiths.org/t/three-covenant-kccs-for-reputation-bonds-and-identity-live-on-testnet-10/148/2) (22 Sep 20:39Z): the pull is already open and these stay Draft. Not adopted. Not a stable. |
| Kas-Smiths | [kas-smiths.org](https://kas-smiths.org). Workshop, opened 2 Jul 2026. Discourse 2026.8.0. Sole admin and moderator: Manyfest. Sign-in is X. Read 23 Sep: 44 topics, 363 posts, 111 users. Latest post is still 386. Categories: General, Asset Standards, Product Use Cases, Meta. A thread is not a KIP. The law is the merged KCC file. Daily public mirror: [Manyfestation/kas-smiths-public-archive](https://github.com/Manyfestation/kas-smiths-public-archive), tip [`4d6f67d`](https://github.com/Manyfestation/kas-smiths-public-archive/commit/4d6f67d23194) pushed 23 Sep 07:43Z, before posts 383–386. There is no GitHub user `kasmasmith` (July brand thread: pronounced KASMYTH). StppStp replied on [#147/2](https://kas-smiths.org/t/wallet-integration-protocol/147/2) (22 Sep 20:37Z): daniel's one-wallet ask is KCC-12 Draft, [#24](https://github.com/kaspanet/kccs/pull/24), and the two holes are already on that pull. StppStp replied on [#148/2](https://kas-smiths.org/t/three-covenant-kccs-for-reputation-bonds-and-identity-live-on-testnet-10/148/2) (22 Sep 20:39Z): the three drafts are already [#29](https://github.com/kaspanet/kccs/pull/29), not waiting on a pull, and stay Draft. Still open with no reply: [#141](https://kas-smiths.org/t/kcc-01-discussion-thread/141) (Ori, 29 Aug, on `int` / `bool` encoding and the array-of-records sentence in KCC-1). [#142](https://kas-smiths.org/t/wallet-utxo-covenant-id-lookup/142): Izio had said covenant UTXO lookup waits on the UTXO-index storage rework. 23 Sep posts [384](https://kas-smiths.org/t/wallet-utxo-covenant-id-lookup/142/4), [385](https://kas-smiths.org/t/wallet-utxo-covenant-id-lookup/142/5), and [386](https://kas-smiths.org/t/wallet-utxo-covenant-id-lookup/142/6): Daniel asked whether a wallet lookup by covenant id and a UTXO lookup by covenant id are both planned. Izio pointed at KCC-2, `owner_type` plus an owner pubkey, and said ownership can compose. Daniel said he will read KCC-2. Post 386 is the latest. Post [380](https://kas-smiths.org/t/kaspa-as-an-immutable-seal/31/4) on [#31](https://kas-smiths.org/t/kaspa-as-an-immutable-seal/31) (22 Sep 20:22Z) is a Causfy product note, not a KCC. [#147/3](https://kas-smiths.org/t/wallet-integration-protocol/147/3) (post 383): Daniel said he saw the pull and commented. No new desk post. [#8](https://kas-smiths.org/t/fungible-token-covenant-specification-kcc20/8) last post 11 Sep: Manyfest said the KCC-20 spec is maturing toward finalization. The file is still Draft. |
| This desk | STP-KAS owns **52 public + 2 private** repos (21 Sep). Private: `tn10-grok`, `kns-kasware-tn10-test`. Every README was read: [`STP-REPOS.md`](STP-REPOS.md). All 54 have a disclaimer and the experimental banner. [kaspa-llm-forum](https://github.com/STP-KAS/kaspa-llm-forum) commit `fc746db` (21 Sep 09:04Z): **execution halted. Do not post reports. The clock does not run.** **22 Sep 18:54:** do not post on X. Keep the X monitor. **23 Sep training:** watch and learn across kaspanet and the core contributors' public repos. No GitHub comment, no Kas-Smiths post, and no X post unless a checked defect would be lost by staying silent. Default is to record the fact on this board and stay quiet. Evening re-read: vprogs #152 `f61b46f4`, #153 `3496a8c5`, #154 `f84525b5`, #156 `30c5d021`, #157 `cd35f913`, #158 `77d81eb0`, all still draft. Tictactoe tip still `93b75901`. Kas-Smiths StppStp replies are [#147/2](https://kas-smiths.org/t/wallet-integration-protocol/147/2) (post 381) and [#148/2](https://kas-smiths.org/t/three-covenant-kccs-for-reputation-bonds-and-identity-live-on-testnet-10/148/2) (post 382, latest bump 22 Sep 20:39Z). **23 Sep 08:34:** this Windows desk has no `kaspad.exe` and no listener on 16111 or 16211. The Linux daily automation cannot run that scan and did not invent a report. This machine only. Not a public-network outage. **23 Sep learn:** vprogs #158 `dc0f5e84`; drafts #160 `63549226`, #161 `7dec23b9`, #163 `ea7b823`. Tictactoe tip `75950635` locks vprogs `ea7b823` in both Cargo.lock files. onlykas tip `f0a47bf9`. Kas-Smiths latest post 386. No new public reply. **23 Sep 21:55 re-read,** bottom of this file upward. kas-odds tip `876f064`. onlykas tip `ce8d282` pins image `8b324ee`. quorum tip `4e87c6b`. Kas-Smiths 44 / 363 / 111, latest post still 386. Seb287 reviewed kccs#24. Head still `7159d48`. Desk reply `4086562445` is already on his uint64 note. No second note. vprogs drafts, the tictactoe lock `ea7b823`, kips `e4ae233`, and rusty-kaspa `01b532e8` held. |
| vProgs | Master still [`f9b84a8`](https://github.com/kaspanet/vprogs/commit/f9b84a863a7c7c20586a9cf947550475e894f72e) (28 Jul). No release. **22 Sep ~08:32Z:** [#148](https://github.com/kaspanet/vprogs/pull/148) **closed unmerged** 07:30Z (closed head `78501881`; the old draft head was `da2a7f26`). Resume work is [#154](https://github.com/kaspanet/vprogs/pull/154), head `f84525b5`, 25 commits, base [#153](https://github.com/kaspanet/vprogs/pull/153). **22 Sep 10:53Z** Maxim marked #153 and #154 **draft**. Same heads. [#153](https://github.com/kaspanet/vprogs/pull/153) is one commit `3496a8c5` (cancel the lane-proof fetch on shutdown), base #147. [#152](https://github.com/kaspanet/vprogs/pull/152) is still **draft**: closed 07:29Z, reopened 07:30Z, head **`f61b46f4`** (22 Sep 12:58Z, `Merge settle-resume into reorg-safety`). It contains the gap retry `0309fd37` and #154 `f84525b5`. The earlier divergence is closed. Still draft. The demo tip `cc52b322` still pins `291d4f29` and does not contain this merge. [#156](https://github.com/kaspanet/vprogs/pull/156) does: its head is `30c5d021`. `74e24551...59b30920` **diverged**, then the demo lock caught up at 09:14Z (see tictactoe). **22 Sep 11:12Z:** [#156](https://github.com/kaspanet/vprogs/pull/156) draft, head `30c5d021`. [#158](https://github.com/kaspanet/vprogs/pull/158) draft head `77d81eb0` (23 Sep 08:12Z), still based on [#157](https://github.com/kaspanet/vprogs/pull/157) `cd35f913`. Third commit on `62882ad9`: finalization persists the canonical bits it freezes, and restore replays them, so an orphan below the restored base stays orphaned. Still draft. It fixes [#112](https://github.com/kaspanet/vprogs/issues/112): restore was reading sub-base ids as orphaned, and a rollback to genesis skipped canonical filtering. [#157](https://github.com/kaspanet/vprogs/pull/157) was marked **draft** at 14:06Z. Head still `cd35f913`, base `30c5d021`: the bridge finalizes below the pruning point cited in headers after a confirmation window, instead of waiting for an IBD-only notification. Fixes vprogs#113. Desk check on rusty-kaspa **v2.1.0** `01b532e8`: `on_pruning_point_utxoset_override` still has one caller, IBD `sync_new_utxo_set`; proto still says via IBD. Comment [5780327987](https://github.com/kaspanet/vprogs/pull/157#issuecomment-5780327987). Merging #157 without #158 activates #112. A malformed carrier input is journaled as a rejection instead of panicking the guest. Stack: #147 `74ee1b7d` → #153 → #154 → #152 → #156. Unchanged this morning: #149 `51b56aab`, #131 `004a5948`, #134 `add37bed`, #136 `d2da8ad0`, #140 `28f0aee9`. [vprogs#114](https://github.com/kaspanet/vprogs/issues/114) is still open (body refreshed 22 Sep 14:17Z): a restored read-only batch can forward the disk value instead of the in-batch chain. Draft [#160](https://github.com/kaspanet/vprogs/pull/160) `63549226` says Fixes #114. Not on master. The write-up caps it to non-proving and observer nodes. [vprogs#107](https://github.com/kaspanet/vprogs/issues/107) still open: `Resource::data_mut` still ignores `AccessType::Read` on `guest-hardening`. Tictactoe `ResourceExt` papers over it; config `Init`/`Update` `write_new_state` does not. Desk comment [5788133052](https://github.com/kaspanet/vprogs/issues/107#issuecomment-5788133052). Research only. Desk comment [5774935036](https://github.com/kaspanet/vprogs/pull/152#issuecomment-5774935036): `reform_committed_gap` returns 0 on `LaneProofFailed` and does not run again, so a timeout is treated as a dead block for the life of the process. **23 Sep:** master still [`f9b84a8`](https://github.com/kaspanet/vprogs/commit/f9b84a863a7c7c20586a9cf947550475e894f72e). [#158](https://github.com/kaspanet/vprogs/pull/158) head [`dc0f5e84`](https://github.com/kaspanet/vprogs/commit/dc0f5e847f7d) (23 Sep 08:42Z) writes the frozen-bit rows in the same commit as the pruning deletions. Still draft, still Fixes #112, base `pp-finalization-window`. [#157](https://github.com/kaspanet/vprogs/pull/157) still draft `cd35f913`. [#161](https://github.com/kaspanet/vprogs/pull/161) draft [`7dec23b9`](https://github.com/kaspanet/vprogs/commit/7dec23b96040) says Fixes #159. [#163](https://github.com/kaspanet/vprogs/pull/163) draft [`ea7b823`](https://github.com/kaspanet/vprogs/commit/ea7b823eb47e) says Fixes #107. None of those drafts are on master. |
| tictactoe | Tip [`75950635`](https://github.com/biryukovmaxim/vprog-tictactoe/commit/759506353) (23 Sep 14:33Z). [`ff29266b`](https://github.com/biryukovmaxim/vprog-tictactoe/commit/ff29266b7) points host and guest at kaspanet/vprogs branch `fix/g2-access-read-enforcement`. `Cargo.toml` names that branch. Both `Cargo.lock` files pin rev `ea7b823`, draft [#163](https://github.com/kaspanet/vprogs/pull/163). The lock is the pin. It is not a floating branch tip. Rusty pin is still `eb0a856`, behind release v2.1.0 `01b532e8`. Prior tip `93b75901` (22 Sep 13:33Z) locked `guest-hardening#291d4f29` and re-seeded the exit-index mirror on a warm restart. Not a product testnet. |
| x402 dispatch | Bind the RC1 tag, not `main`. On `main`, `docs/versioning-policy.md` says the escrow covenant uses four-byte **KCC-01** dispatch tags and was compiled with SilverScript `3ed9733`. That is not KCC-20, and it does not flip KCC-1 to Final. `kaspa:mainnet` in that doc is a reserved profile name. README: components use `kaspa:testnet-10`. |
| Argent | Master `e76ee07`. Tag list empty. [#62](https://github.com/argent-lang/argent/pull/62) open. #63 merged (rules 5 and 6 compile). |
| x402 | Bind tag **[v1.0.0-rc.1](https://github.com/elldeeone/kaspa-x402/releases/tag/v1.0.0-rc.1)** (`040b1ec`, 13 Sep, prerelease). `GET releases/latest` returns **404** because the tag is a prerelease. `main` is ahead: `25893d68` (14 Sep, #14). Still not v1.0.0. Still not mainnet. Not KCC-20. Not quorum. |
| SilverScript holes | Still open on v1.0.0: #243, #249, #250, #251. Also open: [#252](https://github.com/kaspanet/silverscript/issues/252) (`-N` index crash), [#253](https://github.com/kaspanet/silverscript/issues/253) (debugger ignores `signature_script_hex`), [#254](https://github.com/kaspanet/silverscript/issues/254) (`state:` sugar can encode the wrong layout), [#255](https://github.com/kaspanet/silverscript/issues/255) (PR: per-entry compute-budget estimate). |
| Code read | Five passes, 21 Sep night: [`GROK-47-THINKING.md`](GROK-47-THINKING.md). #249 is the tuple arm calling `lower_scalar_expr` after the inliner; `.0`/`.1` already splits each leaf. `validateOutputState` emits `OpTxOutputSpk`, not `OpTxOutputAmount`. Spec transfer tag `79c71c23`, kcc20-live transfer tag `c3d9f92f`. Strict §8.1 decoder rejects at encoded offset 44. #23 wants `0x05`/`0x06`; #30 reserves `0x05`–`0x7f`. Pins in this table did not move. |
| KNS review | 22 Sep file read: [`GROK-47-KNS-REVIEW.md`](GROK-47-KNS-REVIEW.md). Six KNS-spec repos. Uniqueness stays indexer FCFS. kns README agrees. Undated files under it still say v1-rc1 is current, and the claims checker still says KCC-0 is Draft. Three KasName template hashes. The comment-grep test is on kns, not kns-spec. Pins in this table did not move. |
| Three passes | 22 Sep evening. [`GROK-47-THREE-PASSES.md`](GROK-47-THREE-PASSES.md). Release pin is v2.1.0. GHOSTDAG `k = 124` recomputed (`P(X > 123) = 0.011`, `P(X > 124) = 0.0088`). Kas-Smiths still 44 / 356 / 111. |
| saefstroem | [saefstroem](https://github.com/saefstroem). KIP-16 header author (the file spells Safstrom). Active opcode `OpZkPrecompile` `0xa6`. Merged rusty-kaspa [#775](https://github.com/kaspanet/rusty-kaspa/pull/775) (KIP-16), [#953](https://github.com/kaspanet/rusty-kaspa/pull/953) (ZK SDK; the v2.1.0 tag contains crate `kaspa-txscript-zk-sdk` at `crypto/txscript/zk-sdk`), [#861](https://github.com/kaspanet/rusty-kaspa/pull/861) (`OpTxInputDaaScore`). KCC-0 is his [#17](https://github.com/kaspanet/kccs/pull/17), Final via [#25](https://github.com/kaspanet/kccs/pull/25). Open drafts: kccs [#24](https://github.com/kaspanet/kccs/pull/24) and [#31](https://github.com/kaspanet/kccs/pull/31). [stroemnet](https://github.com/saefstroem/stroemnet) tip [`e60dc3e`](https://github.com/saefstroem/stroemnet/commit/e60dc3e815c6) (17 Jul 2026), MIT. README: unaudited, testnet only. Channels in `ChannelId`: Kaspa TN10 byte 0 (hand-built HTLC in `kaspa_txscript`, SHA256 preimage, exactly 2 inputs and 2 outputs, CLTV, output 0 must be at least the spent input minus `10_000_000` sompi (`SOLVER_REWARD`) on both the claim path and the refund path, channel default lock 180s (the script timelock is an argument)), Ethereum Sepolia byte 1 (`contracts/ethereum` `StroemHTLCV1.sol`), Igra Galleon byte 2 (iKAS, 18 decimals, synthetic clock, lock 3600s). Swap id and destination sit in an `OpFalse`/`OpIf` branch, so execution does not take them. Not mainnet. Not KCC-20. Not a `.sil` file. [stroemwallet](https://github.com/saefstroem/stroemwallet) is a fork of `kasware-wallet/extension`, last push 8 Mar 2026. `mcp-http` (pushed 22 Sep) is an HTTP MCP server, not a Kaspa object. |
| kdapp | [michaelsutton/kdapp](https://github.com/michaelsutton/kdapp) tip [`eade853`](https://github.com/michaelsutton/kdapp/commit/eade8531e523) (2 Jul 2025). Version `0.0.1`. ISC. README calls it alpha. An episode is an off-node interpreter: the command rides in a transaction payload (`4-byte prefix`, `4-byte nonce`, then the command), the generator grinds the nonce until 10 chosen bits of the tx id match, and the engine keeps a rollback stack for a DAG reorg. `EPISODE_LIFETIME` is `2592000` DAA scores. At 10 scores per second that distance is three days. The workspace pins rusty-kaspa tag [v1.0.0](https://github.com/kaspanet/rusty-kaspa/releases/tag/v1.0.0) (31 Mar 2025). The tic-tac-toe example defaults to testnet-10 and takes `--kaspa-private-key`. This desk does not run it. [rusty-kaspa#954](https://github.com/kaspanet/rusty-kaspa/pull/954) is still open on base `toccata`, behind, last update 1 May 2026, no comments. It is not a pull against master. |
| danieliyahu1 | [kas-odds](https://github.com/danieliyahu1/kas-odds) tip [`876f064`](https://github.com/danieliyahu1/kas-odds/commit/876f06491a0f) (23 Sep 08:01Z). Commits since `851e114` count a homepage visit when the app loads (`POST /api/visit`), not when a client fetches `/`. The covenant file is not in those commits. SilverScript file `covenant/kasodds.sil`, pragma `^0.1.0`. [pins.json](https://github.com/danieliyahu1/kas-odds/blob/main/covenant/pins.json) binds compiler source `3ed9733` (the v1.0.0 tag) and template hash `ade3453c61ac5858b344b22ccf373e7e44ab18c14506f49b69e29f763057e27a`. The rusty line says release v2.0.1 and sourceCommit `a41a333`, which is [#1067](https://github.com/kaspanet/rusty-kaspa/pull/1067), 8 commits ahead of tag `cfafeb4c`. The wasm URL is still the v2.0.1 zip. Each player locks `stake >= 1 KAS`. The joiner doubles it. Two committed bits are revealed in sequence. The creator wins when `(creator_choice + joiner_choice) % 2` differs from `creator_even`. A pot of at least 100 KAS pays `gross_pot / 100` to the game wallet and the remainder to the winner. Smaller pots pay the winner the whole pot. Default profile is testnet-10. `network.js` also has a mainnet profile. The covenant comment calls it a testnet-10 MVP. [onlykas](https://github.com/danieliyahu1/onlykas) tip [`ce8d282`](https://github.com/danieliyahu1/onlykas/commit/ce8d28202093) (23 Sep 19:40Z) pins image `8b324ee`. `isSwitchingNetwork` keeps the background listener quiet while an action is opening the wallet's network switcher. The commits since `95eb87d` are frontend and `kasware.ts`. `membership.sil` is not in those commits. The fee `(price + 50) / 100`, zero under 1 KAS, and the `25920000` DAA lifetime stay as read on 22 Sep. The app still names Kasware. This desk does not use Kasware. |
| kaspa-xmss | [biryukovmaxim/kaspa-xmss](https://github.com/biryukovmaxim/kaspa-xmss) tip `e36538f` (3 Jul 2026). Unaudited XMSS^MT research: two height-12 trees, 2^24 signatures, BLAKE3/192, signatures about 3.06 KB, verify by hashing inside `TxScriptEngine`. The covenant skip window can step to the first leaf of the next bottom tree and no further. rusty-kaspa is pinned to branch `master`, not a tag. Not a live post-quantum signature. |
| Do not weld | Argent tag, KCC-20 Final, Manyfestation `finalize-kcc20-reference` = adopted KCC-20, argent-lang/kcc20-reference = that branch, KCC-3/4/5 adopted, DAGKnight shipped, vProgs product, tictactoe = vProgs live, x402 mainnet, quorum = a convention, the kccs README “Draft” cell = KCC-0 still Last Call, v2.1.0 = a consensus upgrade, stroemnet = a Kaspa product, the Igra Galleon channel = a Kaspa chain, kdapp tic-tac-toe = the vprogs guest, kdapp = SilverScript, kas-odds = a mainnet product, kaspa-xmss = a shipped signature, native-assets-zk-poc = a Kaspa asset. |

### What this pass did (21 Sep 2026 — Grok Build study of biryukovmaxim/vprog-tictactoe)

**Receipt only.** Later the same day the host pin moved to `74e24551`. On 22 Sep that commit diverged from #152. See **Now**.

**Writer:** Grok Build (this Windows desk). **I** read the tree and all **93** commits on `master` (GitHub currently shows 93; an older counter said 60). Independent desk check. **Not Kaspa core. Not an audit. Not a product testnet.**

[biryukovmaxim/vprog-tictactoe](https://github.com/biryukovmaxim/vprog-tictactoe) is Max’s **guest demo**: RISC0 tic-tac-toe with stakes over the vprogs battery (account resources, deposit/withdraw, Create/Join/Turn/Timeout, ttd DA, encoder-wasm, privkey web). Created 29 Aug 2026. Tip **`a758a9b`** (21 Sep tn10 CUDA runbook). **Do not weld** this onto kaspanet/vprogs as “vProgs shipped.”

| Check | Honest object |
| --- | --- |
| Object | Guest program + `ttd` runner wrapper + simnet e2e + Vite web. L1 follow/prove/settle live in vprogs, not here. |
| Host pin | **Receipt of that morning.** Workspace `Cargo.lock` then said `settle-resume` = [#148](https://github.com/kaspanet/vprogs/pull/148) `da2a7f26`. **Superseded the same day, and again on 22 Sep.** See **Now**. |
| Guest pin | `guest/` is excluded from the workspace. `guest/Cargo.lock` still [biryukovmaxim/vprogs](https://github.com/biryukovmaxim/vprogs) **`bridge-live-lane#128dd05f`** (last guest pin [a9a44da](https://github.com/biryukovmaxim/vprog-tictactoe/commit/a9a44da), 16 Sep). Host `[patch]` does **not** apply to `just build-guest`. |
| Docs vs code | `AGENTS.md` / `guest/src/lib.rs` still say local path / branch `guest-batteries`. README now: tn10 **exercised** in a private CUDA runbook [`a758a9b`](https://github.com/biryukovmaxim/vprog-tictactoe/commit/a758a9b) — **not** a public product. |
| #23 | Open. Root cause: eager signer resolve before `Deposit` births the user. Fix is in [bd989be](https://github.com/biryukovmaxim/vprog-tictactoe/commit/bd989be) (`run.rs` lazy `resolve_pending`). Issue not closed. Vendored encoder wasm `0.1.5.tgz` last git write 16 Sep — self-transfer guard is in crate source, not the tarball. Companion: duplicate access-list ids still **panic** the guest (upstream vprogs). |
| Limits that remain | No `CancelGame` (open-game stake can sit). Timeout is permissionless; config `Update` can change `turn_ttl` mid-match. Exit rent `50_000_000` / `outpoint_index = 1` hardcoded. Warm-restart unseeded spend **hides** a family. `on_exits_reverted` does not clear `LatestSettlement`. Aggregate-prover still panics on a reorg past a proven block (runbook). `.cargo/config.toml` defaults `RISC0_DEV_MODE=1` (stub receipts). |
| Web | In-page **privkey paste**, memory only, cleared on reload. Claims are fee-bearing mempool txs (own collateral), not `/inject`. Single covering UTXO per carrier. |

Sourced comments went onto separate commits + #23, then rollup [#24](https://github.com/biryukovmaxim/vprog-tictactoe/issues/24). Earlier notes now also `@biryukovmaxim`. Match vision: pot is **in-guest** credit; L1 is deposit/withdraw/claim; pre-commit cascade + both-players Write-set = Sutton single based app **now**. **If that is annoying, kick this desk out of the thread — I will apologise.** A mention is not a summons.

Canonical JSON: [`master.json`](master.json) `updated` **2026-09-21**.

### What this pass did (20 Sep 2026 — @kaspaunchained intern roundup, catalog)

Community explainer, **not core, not a KIP, not a pin.** [@kaspaunchained](https://x.com/kaspaunchained) [20 Sep 14:14 UTC](https://x.com/kaspaunchained/status/2101676311244915028): KCC20 / Argent / DAGKnight / vProgs / x402. **Do not round up.** Pins **hold.** This encyclopedia is **not an oracle.**

| Item in the tweet | Honest object |
| --- | --- |
| 1 / KCC20 “reference mostly done” | Spec [kcc-0020.md](https://github.com/kaspanet/kccs/blob/main/kcc-0020.md) is **Draft**. Manyfest [kcc20-live](https://github.com/Manyfestation/kcc20-live) is an **offline Argent demo** (last GitHub 9 Sep, argent pin `94f249a`). **Not** [argent-lang/kcc20-reference](https://github.com/argent-lang/kcc20-reference) (WIP). **Not** silverscript example `kcc20.sil`. **Not** KaspaKaha frozen template. |
| Field order | Spec: `amount, owner, owner_scheme, borrow_scheme, borrow_guard, extension_commitment`. `kcc20-live` `.ag` swaps `borrow_guard` / `borrow_scheme`. KCC-1 §8.1: declaration order **is** the ABI. Different dispatch type string. |
| 2 / Argent template | [argent-template](https://github.com/argent-lang/argent-template) **local runtime only**. Izio 16 Sep getting-started already catalogued §4d. No tag. |
| 3 / DAGKnight | [#1104](https://github.com/kaspanet/rusty-kaspa/pull/1104) head still `a5888da`. Merge fence: parent-order / `sort_unstable` vs paper. Outsider test [#1132](https://github.com/kaspanet/rusty-kaspa/pull/1132). **Not shipped.** |
| 4 / vProgs | Prototype. Open stack [#146](https://github.com/kaspanet/vprogs/pull/146)→[#147](https://github.com/kaspanet/vprogs/pull/147)→[#148](https://github.com/kaspanet/vprogs/pull/148) draft head **`da2a7f26`** (settler resume; 60s VCC livelock). Max’s [vprog-tictactoe](https://github.com/biryukovmaxim/vprog-tictactoe) is a **guest demo** pinned at that #148 head on the host side — **not** a product testnet. hmoog 45 commits vs Max 34. |
| 5 / x402 TN10 | Bind [elldeeone/kaspa-x402](https://github.com/elldeeone/kaspa-x402) **v1.0.0-rc.1**. Real x402 v2. **Not** KCC-20 borrow. Mainnet blocked. |

Canonical JSON: [`master.json`](master.json) `updated` **2026-09-20**.

### What this pass did (20 Sep 2026 — 24h monitor / kccs#24 head)

| Track | Delta | Honest |
| --- | --- | --- |
| kccs#24 | Head **7159d48** (was `06400c3`). Amend aligned with review comments ~15:53Z. | Still Draft / not Final. |
| kccs#27 | Head still `fa845057`. saefstroem **APPROVED** ~16:08Z. | Still open ready / not Final. |
| rusty / DK / Argent / SS / vProgs | Tips: rusty master `01b532e8` is release **v2.1.0**. DK `ad45e24`, Argent `e76ee07`, SS `3ed9733`, vprogs `f9b84a8` hold. | No tip/tag/merge/Final. |
| ALWAYS | kaspaexplained sitemap lastmod **2026-09-20**; kaspa.stream still `9f4088ca…`. X skipped (not enrolled). | Explainer touch only. |

Canonical JSON: [`master.json`](master.json) `updated` **2026-09-20**.

### What this pass did (20 Sep 2026 — rusty master eb0a856)

| Track | Delta | Honest |
| --- | --- | --- |
| rusty-kaspa | Master tip **eb0a856**. [#1136](https://github.com/kaspanet/rusty-kaspa/pull/1136) merged IBD 20 MiB chunks. [#1137](https://github.com/kaspanet/rusty-kaspa/pull/1137) merged `RejectCoinbase`. | Node tip moved. No new node tag. |
| DAGKnight | Tip still `ad45e24`. #1104/#1121/#1122 unchanged. | Not shipped. |
| vProgs | #147 → `1d449964`. [#148](https://github.com/kaspanet/vprogs/pull/148) draft restart-resume. | Research only. |
| kaspa.stream | app-version `9f4088ca…` (was `7ab5ce0…`). | Explorer deploy; no changelog. |

Canonical JSON: [`master.json`](master.json) `updated` **2026-09-20**.

### What this pass did (19 Sep 2026 — Grok Build check of tn10 bot #1134)

**Writer:** Grok Build (this Windows desk). **Not** tn10 bot. **Not Kaspa core. Not an audit. Not a security credential.** Data + sources only.

tn10 bot filed operator research on rusty-kaspa **[#1134](https://github.com/kaspanet/rusty-kaspa/issues/1134)** (comment [5743081389](https://github.com/kaspanet/rusty-kaspa/issues/1134#issuecomment-5743081389) is attribution). Title says “Full Audit.” Treat it as a **farm journal + threat sketch**, not a third-party audit.

| Check | Result |
| --- | --- |
| Pins | **Hold.** rusty **v2.0.1** still latest GitHub release (15 Jun). No v2.0.2 node tag. |
| Code anchors that hold | `RouteIsFull` display `"route is full"`; `SubmitBlock` `DropIfFull` queue `max(10, bps*2)`; default `rpcmaxclients` **128**; genesis hashes match `genesis.rs`; `kaspa-testnet` coinbase tag; `IsInIBD` when `!enable_unsynced_mining && !is_synced`. |
| Path drift | IBD TODO lives at `protocol/flows/src/v5/ibd/flow.rs` (~L71), not `protocol/flows/src/ibd/flow.rs`. |
| Explorer cited in #1134 | [explorer-tn10.kaspa.org](https://explorer-tn10.kaspa.org/) **Deployment Paused**. Live read: [tn10.kaspa.stream](https://tn10.kaspa.stream/) + [api-tn10.kaspa.org](https://api-tn10.kaspa.org/). |
| Public REST ~16:13–16:16 UTC | network `kaspa-testnet-10`; indexer rusty **2.0.1** `isSynced true`; DAA **~574,951,408**; hashrate **~16.2–16.7 MH/s** (`/info/hashrate` is TH/s); **tips ~11,238–11,242** (18 Sep journal had **3,612**); mempool **~312** (18 Sep **~7,804**); reward **2.060 tKAS**; sink parents **61**. Mainnet DAA **~544,141,402**. |
| “Farm not majority” | **Not REST-backed.** Claimed ~9 MH/s vs public ~16 MH/s is **~56%**. `found=1734` / 5 min at 10 BPS is **~58% of block slots** if those finds are unique. Local `Found a block` ≠ selected-parent coinbase (desk 18 Sep: 10 local accepts, public REST **404**). |
| Faucet pay-from | api-tn10 **4,098,361 tKAS** / 1,184,824 txs (18 Sep **~4,127,127**). Still **>1M**, so the farm sweep rule does **not** fire. |
| Desk this pass | rusty **v2.0.1** TN10 kaspad restarted; **header IBD, 0 bodies**, P2P **16211**, RPC localhost **16210**. **No miner until tip-following.** No `--mine-when-not-synced`. |

**Agree with tn10 bot (as operator notes, not Core law):** gate mining on tip-following; `RouteIsFull` is backpressure not a consensus bug; restart-as-recovery for a stuck IBD syncer is painful; TN10 and mainnet are isolated genesis/ports/prefixes; tKAS has no value.

**Grok Build metric vs tn10 bot metric:** public REST selected-parent / DAA / tip count / mempool / pay-from delta / clean-address coinbase vs sandbox `found` / `submitted_ok` / `route_full` / `tip_follow` on the farm’s own node. Why: the 18 Sep desk pass already showed unsynced submits can look like a farm and still miss the live DAG.

### What this pass did (18 Sep 2026 — DK / Argent / SilverScript / KCC catch-up)

Relevance-checked GitHub delta since 17 Sep freeze. **Pins hold** (no new tag, no DK merge, no KCC Final).

| Track | Delta | Honest |
| --- | --- | --- |
| DAGKnight | Open ready cluster still unmerged: [#1104](https://github.com/kaspanet/rusty-kaspa/pull/1104), [#1127](https://github.com/kaspanet/rusty-kaspa/pull/1127) (ready 12 Sep), [#1131](https://github.com/kaspanet/rusty-kaspa/pull/1131), [#1132](https://github.com/kaspanet/rusty-kaspa/pull/1132), [#1124](https://github.com/kaspanet/rusty-kaspa/pull/1124). Last `dagknight` tip still **8 Sep**. | Not shipped. |
| Argent | Tip still `e76ee07` (#63, 14 Sep). [#62](https://github.com/argent-lang/argent/pull/62) module loading open (updated 17 Sep). No tag. | Preview / unaudited. |
| SilverScript | Tip still `3ed9733` / v1.0.0. Open holes #243 #249 #250 #251. | No second tag. |
| KCC | [#24](https://github.com/kaspanet/kccs/pull/24) KCC-0012 activity **18 Sep** (still Draft, no public wallet impl). [#27](https://github.com/kaspanet/kccs/pull/27) kcc-1↔kcc0 compliance open 18 Sep. [#26](https://github.com/kaspanet/kccs/pull/26) KCC-23 MJ Metadata open 16 Sep. | Not Final / not adopted. |
| vProgs | Review cluster 16–17 Sep: [#138](https://github.com/kaspanet/vprogs/pull/138), [#144](https://github.com/kaspanet/vprogs/pull/144), [#145](https://github.com/kaspanet/vprogs/pull/145), [#146](https://github.com/kaspanet/vprogs/pull/146). | Research only. |

Canonical JSON: [`master.json`](master.json) `updated` **2026-09-20** (20 Sep intern-roundup catalog; 19 Sep #1134 pass still above).

### What this pass did (17 Sep 2026 — @kaspaunchained covenants thread)

Community explainer, **not core, not a KIP.** Stack sketch matches this map: Toccata covenants **live**; SilverScript **compiler**; Argent **above** Silverscript. Follow-ups: [docs.kaspa.org/programmability/covenants](https://docs.kaspa.org/programmability/covenants), [kaspanet/silverscript](https://github.com/kaspanet/silverscript), [argent-lang/argent](https://github.com/argent-lang/argent). **Do not round up:** Argent still **no tag**, README still not release-ready. Pins **unchanged.**

| Post | URL | Honest |
| --- | --- | --- |
| Covenants / SilverScript / Argent | https://x.com/kaspaunchained/status/2100571472561586192 | 17 Sep 13:04 UTC. Readable stack. “Argent … compiled to run directly on Kaspa’s L1” is the *compiler* path, not a product stamp. |
| Docs pointer | https://x.com/kaspaunchained/status/2100572500442980776 | 17 Sep 13:08 UTC. Points at official covenants docs. |

| Piece | Operator 17 Sep 2026 |
| --- | --- |
| kaspa bot mainnet archival (1 public) | **Up** — `159.223.110.159:28492` |
| tn10 bot node | **Up** — RPC `127.0.0.1:16210` (Grok Bot sandbox) |
| TN10 miners | **Alive** — same pay-to `kaspatest:qzffl5xy9np46gkttyuftqnv2w04pr8g3wsp7c3vv8se3txtelx6q7c0v0ldx` |

**project delusional.** Kaspa master file — pins, ideas, principles. One principle: skip centralised stablecoins for dapps. Fill is not a business: this desk keeps 0. Any Kaspa wallet (QR / kaspa: URI). In-page inject is only Kasware/Kastle. The jar is not Nakamoto. Darwin battletest: [STP-KAS/gramlanepeglab](https://github.com/STP-KAS/gramlanepeglab). Receipt PoC after battling PegLab vs Parker: [STP-KAS/peglab-poc](https://github.com/STP-KAS/peglab-poc).

This is a map. Merged Active KIP = law. Open PR, personal wiki, Discord rumor ≠ a pin. Gramlane tab: http://127.0.0.1:8081/masterfile

Repo: **kaspa-master-file** (the “kaspa mister fil”). Grok heavy review of this freeze: [`GROK-HEAVY-REVIEW.md`](GROK-HEAVY-REVIEW.md). Think big / do-this-next: [`THINK-BIG.md`](THINK-BIG.md). Grok collab (core idea, commercial uses, beyond crypto): [STP-KAS/grok-kaspa-collab](https://github.com/STP-KAS/grok-kaspa-collab). Local URLs (`127.0.0.1`) are this machine, not GitHub.

### What this pass did (17 Sep 2026 — memory + Argent getting-started)

Grok Build cross-session memory enabled. Indexed **64** Grok Build sessions on this machine + public Grok Ask shares already in this file + Grok Bot TN10/daily prompts. Folded into [`CRYPTO-FINANCE.md`](CRYPTO-FINANCE.md). **No seed phrases.** Grok Ask chats that were never shared are not on this disk.

| Found | Change |
| --- | --- |
| Izio getting-started | [16 Sep thread](https://x.com/IzioDev/status/2100178860700512752): Git+Rust → `git clone https://github.com/argent-lang/argent-template` → `./setup` → [video](https://www.youtube.com/watch?v=xZsuvcc9qPk). Examples: [playground/ag](https://github.com/argent-lang/argent-playground/tree/master/ag), [argent/examples](https://github.com/argent-lang/argent/tree/master/examples). PR apps to argent-playground. Discord `#development`. Docs should teach **how to use**, not how Argent operates. **Not a tag. Not product.** Catalog: §4d. |
| Argent **PR #63** | **Merged 14 Sep** (Izio → Sutton). Leader/delegate **rules 5 and 6 now compile** into generated `.sil` (`OpCovOutputCount(c) == OpAuthOutputCount(l)`; `OpCovInputIdx(c, 0) == this.activeInputIndex`). Old “[NOT IMPLEMENTED]” pin is **stale**. Still **no tag**. README still not release-ready. Gramlane still one own-UTXO. |
| Argent **PR #62** | **Open** (module loading rework). Next claimed step: AST-to-AST pipeline. |
| argent-lang org | **4** public repos (was 3). New: [kcc20-reference](https://github.com/argent-lang/kcc20-reference) — README `# kcc20-reference (wip)`, [PR #1](https://github.com/argent-lang/kcc20-reference/pull/1) open. **Not** adopted KCC-20. |
| Sil `#250` / `#251` | Rechecked **still open**. |
| Thread noise | zKAS merge-mine / `$kasdistro` replies. **Not pins.** vProgs still a framework without a product testnet (Maksim Biriukov in-thread). |

Pins **unchanged except Argent rules 5/6:** silverc **v1.0.0**; rusty **v2.0.1**; Toccata **live**; DAGKnight **not shipped**; KCC-0012 **Draft**; `#234` unmerged; `#250`/`#251` open; Argent **no tag**.

### What this pass did (17 Sep 2026 — retest every STP-KAS repo)

`gh api users/STP-KAS/repos` → **48 public** (3 forks). Matrix: [`RETEST.md`](RETEST.md). REST via kaspa bot / tn10 bot authority. No seeds. No desk `:16210` (closed). No competing mainnet node.

| Found | Vs master file |
| --- | --- |
| Pins | **Hold.** rusty **v2.0.1**; silverc **v1.0.0**; Toccata live (DAA **542,055,411**); DAGKnight not shipped; KCC-0012 **open**; Argent **no tag**, #63 merged, #62 open; `#250`/`#251` open. |
| Runnable suites | showcase **10/10**; peglab-stp **24/24**; peglab-poc **14/14**; stillpay tn10+mainnet **16/16** each; wallet-integration **16/16**; KaChat copies **9/9**; kaspa-x402 fork **EXIT 0**; go: gramlane, ishum, kaspa-till, kns-spec, xai-reasoning-3, grok-kaspa-collab/desk **pass**; dagknight-test-grok **8/8**. |
| kns | `go test` **FAIL** — comment grep of `readInputState`. Same 14 Sep finding. kns-spec **pass**. |
| argent-xai | `check.ps1` **DRIFT** — pin still PR #60 `867b080`; live `e76ee07` (#63). |
| New GitHubs | [iziodev-build-a-kaspa-l1-grok-reveieuw](https://github.com/STP-KAS/iziodev-build-a-kaspa-l1-grok-reveieuw) **match** §4d. [kaspa.org-kaspaexplained](https://github.com/STP-KAS/kaspa.org-kaspaexplained) **match** (do not cite `/lore`). kns-dotk / dotk-review **match**. |
| Miners | Same pay-to **3,838,663 tKAS**. |
| Seeds | org code search **0**. |

### What this pass did (17 Sep 2026 — desk Grok Bot authority)

Standing authority to **use kaspa bot + tn10 bot** whenever this master file is named. Card: [`DESK-BOT.md`](DESK-BOT.md). Probe: [`scripts/probe-nodes.ps1`](scripts/probe-nodes.ps1).

| Found | Change |
| --- | --- |
| kaspa bot | Operator: mainnet archival **1 public** `159.223.110.159:28492`. REST DAA **542,045,549**. This Windows PC **refused** TCP to that P2P — use the bot + `api.kaspa.org`, do not compete on `:16111`. |
| tn10 bot | Operator: RPC **Up** `127.0.0.1:16210` **on the sandbox**. This Windows loopback **refused** (desk second site not required). REST DAA **572,671,518**. |
| Miners | Same pay-to. api-tn10 **3,824,424.95 tKAS** (was ~1.16M on 15 Sep). Alive. |
| Authority | `AGENTS.md` + memory: Grok Build shall use this stack for audits/dApps. No seeds. No TN10-into-kaspa-bot. |

### What this pass did (14 Sep 2026, evening — groks-wallet)

Hard-tested **all 36** STP-KAS GitHubs against [groks-wallet](https://github.com/STP-KAS/groks-wallet) on TN10. Catalog: [STP-KAS/tn10-hard-test](https://github.com/STP-KAS/tn10-hard-test). Rechecked pins against [kaspaexplained.com/status](https://kaspaexplained.com/status) (14 Sep) + GitHub releases.

| Found | Change |
| --- | --- |
| Pins | **Unchanged.** silverc **v1.0.0**; rusty **v2.0.1**; Toccata **live**; DAGKnight **KIP-2 Proposed**; KCC-0012 **Draft**; `#234` unmerged; `#250`/`#251` open. |
| 1 sompi receipt | **Unconstructible** on TN10 (`Storage mass exceeds maximum`). Teaching unit stays 1:1 in ENGINE_SPEC. Journal is 1 tKAS plain transfer. |
| groks-wallet | Public GitHub (was documented private). Local ~300k tKAS / **~97k UTXOs**. Payload tx `64057dd7…` accepted. |
| PegLab genesis | Dedicated sponsor, **not** groks-wallet. Compile docs said v1-rc1 — pin is v1.0.0. |
| kns `go test` | Comment grep of `readInputState`, not a hostile KasName call. |
| Explorers | faucet-tn10 **403**. explorer-tn10.kaspa.org **402 DEPLOYMENT_DISABLED**. Use api-tn10 + kaspa.stream. |
| Luke | Follow-up in [grok-heavy-test](https://github.com/STP-KAS/grok-heavy-test). Windows `216ad77` still green. Funded live proof **not** run. |
| KaspaSilver | Note in [kaachat-desktop](https://github.com/STP-KAS/kaachat-desktop). `npm test` 9/9. groks-wallet cannot log in (inject only). |

Referee: [kaspaexplained.com/status](https://kaspaexplained.com/status) — GHOSTDAG live, 10 BPS live, Toccata live, DAGKnight not shipped, KCC-20 Draft.

### What this pass did (14 Sep 2026, BankQuote)

Scanned [@BankQuote](https://x.com/BankQuote) **Apr–Sep 2026**. Kept long-form Toccata / covenant / SilverScript / Argent essays that match this map: Toccata **live**; Argent / vProgs / DAGKnight **not shipped**. Dropped price talk, AGI slogans, KasGraph-as-live, Staghunt. Same person as [trillskillz/OpenSilver](https://github.com/trillskillz/OpenSilver) (already a pin: not kaspanet, not audited). **Not core. A tweet is not a KIP.** Catalog: §5c.

Pins **unchanged:** silverc **v1.0.0**; Toccata live; DAGKnight not shipped; KCC-0012 Draft.

### What this pass did (14 Sep 2026)

Retested [STP-KAS/kns-spec](https://github.com/STP-KAS/kns-spec) against live L1 + KNS indexer + covenant explorer. Pins unchanged: silverc **v1.0.0**; uniqueness is still indexer FCFS.

**Local host (this PC, not GitHub):** `kns-spec serve` → http://127.0.0.1:8083/open.html · http://127.0.0.1:8083/api/resolve?q=kns.kas · health http://127.0.0.1:8083/api/health
Sisters stay :8080 kns / :8081 gramlane / :8082 till. Start: `Documents\kaspa\start-local.ps1`.

KCC-0012 still **Draft**. In-page inject still Kasware/Kastle. `kns://` run is empty on `kns.kas` (no CID). Not a new internet. See [REAL.md](https://github.com/STP-KAS/kns-spec/blob/main/REAL.md).

### What this pass did (13 Sep 2026)

GitHub + masterfile §5 X handles, DK-filtered. Last `dagknight` **commit still 8 Sep**. Material DK delta: [#1127](https://github.com/kaspanet/rusty-kaspa/pull/1127) marked **ready for review 12 Sep 15:13 UTC** (was draft at the 12 Sep freeze). FreshAir: batching + depth-limit polish in; **formal security note still pending this week**. Not merged. Not shipped.

Notebook for outsider-safe DK help (tests, confirmation-policy spec, PR map): [STP-KAS/dagknight-test-grok](https://github.com/STP-KAS/dagknight-test-grok). **Not a pin. Not consensus.**

Pins **unchanged:** silverc **v1.0.0**; Toccata live; DAGKnight not shipped; KCC-0012 Draft.

### What this pass did (12 Sep 2026)

Daily Grok bot (`dagknight-test-grok daily update`) + kaspa.news / GitHub / X check against the 11 Sep freeze. DK then: **no consensus delta** (last `dagknight` commit still 8 Sep; #1127 still draft at 13:26 UTC). Valuable item that day was **not** DK.

| Found | Change |
| --- | --- |
| **KCC-0012** Browser Wallet Provider API | Pin [kccs#24](https://github.com/kaspanet/kccs/pull/24) (saefstroem, created **11 Sep**; head **7159d48** 20 Sep amend). Still **Draft** (open ready, not Final). EIP-1193/6963 shape + Kaspa `kaspa_signTransaction` (sign only listed inputs; leave covenant scripts). **No public implementation.** Recap: [kaspa.news 12 Sep](https://kaspa.news/articles/a-new-kaspa-wallet-still-needs-every-website-to-add-it). |
| Sutton on Alex | [11 Sep 15:27 UTC](https://x.com/michaelsuttonil/status/2098433221021118762) — “alex is doing glorious work in connecting dapp dev processes and ecosystem standardization.” Same person as KCC-0 + KCC-0012 lead. **Not a KIP. Not adopted.** |
| Sil #251 | [silverscript#251](https://github.com/kaspanet/silverscript/pull/251) **open** (11 Sep, KaspaScopio). Indexing struct-array expressions (fixes #228). Independent of #250. Pin still forbids `State[].split()` tuples. |
| Wallet/UTXO paging recap | [kaspa.news 11 Sep](https://kaspa.news/articles/wallets-still-have-to-catch-up-before-kaspa-feels-easy-to-use) — paged UTXO lookup still under review; ECDSA owner display still a proposal. Argent leader/delegate rules 5/6 were unimplemented **that day**; they **compile as of 14 Sep** (#63). Still no Argent tag. |
| L1 numbers | DAA **537,990,049**; supply **~27.696B** (27,696,135,848); reward **2.18267645**; hashrate **~347.6 PH/s**. |

Pins **unchanged:** silverc **v1.0.0** (`3ed9733`); `#234` unmerged; `#243` open; `#250` open; Argent no tag; KCC-20 Draft; KCC-0012 **Draft**; Toccata live; DAGKnight not shipped. In-page inject stays Kasware/Kastle until a wallet actually ships KCC-0012.

### What this pass did (11 Sep 2026, second look)

Reviewed the freeze after it landed on `main` ([PR #1](https://github.com/STP-KAS/kaspa-master-file/pull/1)). Fixed what was still wrong or missing:

| Found | Change |
| --- | --- |
| `kaspaexplained.com/toccata-status` **Moved** | Point at [`/status`](https://kaspaexplained.com/status) (live referee). |
| Covenant counts had no official-sites row | Add [`/build-on-kaspa`](https://kaspaexplained.com/build-on-kaspa) (84,196 / 687 / ~1.56M KAS). |
| 2026 forum threads not newest-first | MWEB-like (8 Sep) listed first. |
| R&D log stopped at 4 Sep | Add 9–10 Sep: Sil v1.0.0, Argent #59/#60, Sil #249. |
| 402 path missing from this map | Pin [elldeeone/kaspa-x402](https://github.com/elldeeone/kaspa-x402) (`v1.0.0-rc.1`, TN10, mainnet blocked). Bind this. Windows clone-and-test merged `216ad77`. [Kali123411/k402](https://github.com/Kali123411/k402) is HTTP 402 + a `kaspa-channel` lock ([kccs#4](https://github.com/kaspanet/kccs/pull/4) still open) — steal the lock, do not treat it as Kaspa’s x402 v2 binding. Public verdict: [sixpack.wtf](https://sixpack.wtf). |
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
| Covenants stack (community) | https://x.com/kaspaunchained/status/2100571472561586192 | @kaspaunchained, 17 Sep 2026. Covenants → SilverScript → Argent. Not a KIP. Argent still no tag. |
| Covenants docs (from that thread) | https://x.com/kaspaunchained/status/2100572500442980776 | Same thread. Points at https://docs.kaspa.org/programmability/covenants |
| Intern roundup (community) | https://x.com/kaspaunchained/status/2101676311244915028 | @kaspaunchained, 20 Sep 2026. KCC20 / Argent / DAGKnight / vProgs / x402. Catalog. **Not a pin.** Do not weld the five objects. |
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
| Covenants docs | https://docs.kaspa.org/programmability/covenants | Official. Linked from @kaspaunchained 17 Sep. Consensus live; Argent still untagged. |
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

Org: https://github.com/kaspanet — 26 public repos, rechecked 22 Sep 2026. **Use these first.** The status column below is the 11 Sep 2026 receipt. Current heads are in **Now**.

| Repo | URL | Status 11 Sep 2026 |
| --- | --- | --- |
| rusty-kaspa | https://github.com/kaspanet/rusty-kaspa | Reference node. Toccata **v2.0.0** (5 Jun 2026), **v2.0.1** (15 Jun). No newer node tag. `dagknight` still unmerged. Open DK ready cluster: [#1104](https://github.com/kaspanet/rusty-kaspa/pull/1104) head `a5888da` (20 Sep naming/review; merge fence parent-order / [#1132](https://github.com/kaspanet/rusty-kaspa/pull/1132)), [#1127](https://github.com/kaspanet/rusty-kaspa/pull/1127) (ready 12 Sep), [#1131](https://github.com/kaspanet/rusty-kaspa/pull/1131), [#1124](https://github.com/kaspanet/rusty-kaspa/pull/1124). Last `dagknight` tip still **8 Sep**. **Not shipped.** |
| kips | https://github.com/kaspanet/kips | Improvement proposals |
| silverscript | https://github.com/kaspanet/silverscript | Covenant language. Pin **[v1.0.0](https://github.com/kaspanet/silverscript/releases/tag/v1.0.0)** (Ori / someone235, **9 Sep 2026**, `3ed9733`). Official SemVer v1. Windows zip SHA256 `3e0d660c15a9e7ac90f3960da24d348b076b1891481bfe758db18accc8a102e1`. Language pragma in examples is still `^0.1.0`. `#234` foreign `readInputState` still **closed unmerged**. **New on this pin:** [#249](https://github.com/kaspanet/silverscript/issues/249) `State[].split()` tuple destructure fails (`__inline_*`); fix PR [#250](https://github.com/kaspanet/silverscript/pull/250) **open** (KaspaScopio, 10 Sep). [#251](https://github.com/kaspanet/silverscript/pull/251) **open** (11 Sep) indexing struct-array expressions (`#228`); independent of `#250`. `#243` compute-budget still **open**. |
| kccs | https://github.com/kaspanet/kccs | Conventions. **KCC-0 Final** (meta process, [kccs#25](https://github.com/kaspanet/kccs/pull/25) merged `c0bb8f3` 21 Sep). KCC-1 / KCC-2 / KCC-20 / KCC-0012 still **Draft**. Not adopted as a gram token. |
| vprogs | https://github.com/kaspanet/vprogs | Provable computation. Research. No public testnet as product. Master `f9b84a8` (28 Jul). **22 Sep:** [#148](https://github.com/kaspanet/vprogs/pull/148) closed unmerged. Stack #147 → [#153](https://github.com/kaspanet/vprogs/pull/153) → [#154](https://github.com/kaspanet/vprogs/pull/154) draft `f84525b5` → [#152](https://github.com/kaspanet/vprogs/pull/152) draft `f61b46f4` (gap retry plus #154). Guest-demo lock is `291d4f29`, which is #156, not this merge. |
| kaspa-python-sdk | https://github.com/kaspanet/kaspa-python-sdk | Python bindings |
| docs | https://github.com/kaspanet/docs | Documentation |
| research | https://github.com/kaspanet/research | Papers (vProgs yellow paper) |
| kaspad | https://github.com/kaspanet/kaspad | **Deprecated** Go node. Use rusty-kaspa. |
| cpuminer | https://github.com/kaspanet/cpuminer | CPU miner |
| dnsseeder | https://github.com/kaspanet/dnsseeder | DNS seeder |

Rusty tags, current: [v2.1.0](https://github.com/kaspanet/rusty-kaspa/releases/tag/v2.1.0) `01b532e8` (22 Sep 2026, not a prerelease). Previous: [v2.0.1](https://github.com/kaspanet/rusty-kaspa/releases/tag/v2.0.1) · [v2.0.0](https://github.com/kaspanet/rusty-kaspa/releases/tag/v2.0.0).

The table names the load-bearing repos. The other 15 public repos, same 22 Sep cut, are historical or vendored. Not pins.

| Repo | Last push | Honest |
| --- | --- | --- |
| [workflow-perf-monitor-rs](https://github.com/kaspanet/workflow-perf-monitor-rs) | 21 Apr 2026 | Fork. saefstroem [#1](https://github.com/kaspanet/workflow-perf-monitor-rs/pull/1) merged. rusty-kaspa master `Cargo.toml` depends on this repo at tag `v0.0.3` ([#965](https://github.com/kaspanet/rusty-kaspa/pull/965)). Not a consensus object. |
| [rusty-kaspa-corpus](https://github.com/kaspanet/rusty-kaspa-corpus) | 27 Dec 2022 | Test corpus. |
| [big-test-data](https://github.com/kaspanet/big-test-data) | 13 Nov 2022 | Oversized test blobs. |
| [faucet](https://github.com/kaspanet/faucet) | 17 May 2022 | Old Go faucet. Not the TN10 faucet. |
| [whitepaper](https://github.com/kaspanet/whitepaper) | 16 Feb 2022 | Collaborative draft. The live paper trail is [research](https://github.com/kaspanet/research). |
| [go-secp256k1](https://github.com/kaspanet/go-secp256k1) | 29 Apr 2021 | Go bindings. Go node era. |
| [go-muhash](https://github.com/kaspanet/go-muhash) | 7 Apr 2021 | Go muHash. Go node era. |
| [secp256k1](https://github.com/kaspanet/secp256k1) | 16 Mar 2021 | C library fork. |
| [protoc-gen-doc](https://github.com/kaspanet/protoc-gen-doc) | 7 Jan 2021 | Protobuf doc plugin fork. |
| [kasparov](https://github.com/kaspanet/kasparov) | 16 Dec 2020 | Go API server. Superseded by rusty-kaspa RPC. |
| [golang-lru](https://github.com/kaspanet/golang-lru) | 24 Nov 2020 | LRU fork. |
| [compose](https://github.com/kaspanet/compose) | 4 May 2020 | Docker Compose fork. |
| [quick-start](https://github.com/kaspanet/quick-start) | 20 Jan 2020 | Old shell quick start. |
| [procedures](https://github.com/kaspanet/procedures) | 2 Jan 2020 | Old procedure notes. |
| [ghostdag-prototype](https://github.com/kaspanet/ghostdag-prototype) | 11 Dec 2019 | Early prototype. GHOSTDAG law is the live node, not this tree. |

---

## 3. KIPs (law vs not)

Source: https://github.com/kaspanet/kips — tracker https://kaspaexplained.com/kips

**On master [`e4ae233`](https://github.com/kaspanet/kips/commit/e4ae2332117b5cb68bd6188e065ef885b6d17939) (15 Jul 2026).** Header status: **1 Implemented**. **2 Proposed**. **3 Rejected**. **6 Draft** (`Type: Informational`). **Active:** 4, 5, 9, 10, 13, 14 (Crescendo), 15, **16, 17, 20, 21** (marked Active in [#45](https://github.com/kaspanet/kips/pull/45)). No file on that commit for 7, 8, 11, 12, 18, 19, 22, 23, 24, or 25. [#41](https://github.com/kaspanet/kips/pull/41) headers KIP-24 as Implemented, and master has no `kip-0024.md`. The open pulls are on the **Now** row.

Toccata PRs: [KIP-16 #31](https://github.com/kaspanet/kips/pull/31) · [17 #32](https://github.com/kaspanet/kips/pull/32) · [20 #35](https://github.com/kaspanet/kips/pull/35) · [21 #36](https://github.com/kaspanet/kips/pull/36). KIP-16 header author is Alexander Safstrom (`@saefstroem`). The header spells Safstrom.

**Proposed / draft / not product:** KIP-2 DAGKnight (Proposed since 2022; rusty `dagknight` still unmerged. Open/draft as of 11 Sep: #1127 bounded UMC, #1124 simpa, plus older #1122 / #1120 / #1119 / #1104). KIP-6 Draft. KIP-3 Rejected.

KIP-21 §2.1: `lane_id` is the 20-byte `subnetwork_id`. Valid forms are native `0x00` plus 19 zero bytes, coinbase `0x01` plus 19 zero bytes, and a user lane of 4 namespace bytes plus 16 zero bytes with at least one nonzero byte in `namespace[1..=3]`. Any other shape is invalid. §2.2: at most 50 distinct non-coinbase lanes in a block, at most `1_000_000_000` `tx.gas` in each of those lanes, and `tx.gas = 0` on native and reserved system lanes. §6.7: `SeqCommit(B) = H_seq(SeqCommit(selected parent), SeqStateRoot(B))`, and post-activation `accepted_id_merkle_root` is that value. **Not** Gramlane book stamps MSG1/SEQ1.

100 sompi/gram is **min-relay policy**, not a KIP number.

---

## 4. Interesting GitHubs (not kaspanet)

| Repo | URL | Honest |
| --- | --- | --- |
| argent-lang/argent | https://github.com/argent-lang/argent | Multi-actor layer **above** Silverscript (Sutton). [PR #59](https://github.com/argent-lang/argent/pull/59) merged **8 Sep** (state vectors in `args!`). [PR #60](https://github.com/argent-lang/argent/pull/60) merged **10 Sep** pins sil **v1.0.0**. [PR #63](https://github.com/argent-lang/argent/pull/63) merged **14 Sep** — leader/delegate **rules 5 and 6 now compile**. [PR #62](https://github.com/argent-lang/argent/pull/62) **open** (module loading). README: **not release-ready**. **No tag.** Getting-started: §4d. |
| argent-lang/argent-playground | https://github.com/argent-lang/argent-playground | Local demos (counter, ICC, DEX-shaped `dex_asset`). Does **not** prove mainnet. PR your apps here (Izio 16 Sep). |
| argent-lang/argent-template | https://github.com/argent-lang/argent-template | Starter. `./setup` clones sibling `argent`. **Local runtime only** — no network, no wallet, no submit. |
| argent-lang/kcc20-reference | https://github.com/argent-lang/kcc20-reference | **WIP** (created 10 Sep). README one line. [PR #1](https://github.com/argent-lang/kcc20-reference/pull/1) open. **Not** adopted KCC-20. |
| Manyfestation/kcc20-live | https://github.com/Manyfestation/kcc20-live | Offline Argent KCC-20 **demo** (9 Sep). Threshold-borrow example. Does **not** submit. Field order in `.ag` **swaps** `borrow_guard`/`borrow_scheme` vs Draft spec. Not the standard. Not KaspaKaha. |
| KaspaKii/Portrait | https://github.com/KaspaKii/Portrait | Public 1 Sep 2026. Testnet-only, unaudited. |
| STP-KAS/gramlane | https://github.com/STP-KAS/gramlane | This desk. Grams, kasdomain. |
| STP-KAS/project-delusional | https://github.com/STP-KAS/project-delusional | Stack index |
| STP-KAS/kaspa-till | https://github.com/STP-KAS/kaspa-till | Reserved kUSD till. Not a peg. |
| STP-KAS/kns | https://github.com/STP-KAS/kns | Indexer names. Not kasdomain. |
| STP-KAS/kns-spec | https://github.com/STP-KAS/kns-spec | Implementer kit. https://stp-kas.github.io/kns-spec/ KasName on silverc **v1.0.0**. |
| vsmirn0v/KaChat | https://github.com/vsmirn0v/KaChat | Other product. Gramlane does not clone E2E. |
| KASRANKS/KASSWORD | https://github.com/KASRANKS/KASSWORD | Other vault. Pointer only. |
| aglov413/kaspa-pqv | https://github.com/aglov413/kaspa-pqv | Posted to Core R&D **27 Aug 2026**. Hash-based PQ vault, **TN10 only**, unaudited. |
| trillskillz/OpenSilver | https://github.com/trillskillz/OpenSilver | Community SilverScript pattern lib (22 patterns). [@BankQuote](https://x.com/BankQuote). **Not kaspanet. Not externally audited.** Pins its own silverc, not always v1.0.0. |
| thesheepcat/K | https://github.com/thesheepcat/K | Decentralized microblog. Not this desk. |
| coderofstuff/rusty-kaspa | https://github.com/coderofstuff/rusty-kaspa | Unofficial DAGKnight work. **Not a pin.** |
| coderofstuff/dk-wiki | https://github.com/coderofstuff/dk-wiki | Unofficial wiki. **Not a pin.** |
| STP-KAS/dagknight-test-grok | https://github.com/STP-KAS/dagknight-test-grok | Outsider-safe DK notebook (e2e tests, KIP-2 confirmation spec, PR map). Rechecked 13 Sep: #1127 ready-for-review, last commit 8 Sep. **Not a pin. Not consensus.** |
| parker2017code/kaspa-explained | https://github.com/parker2017code/kaspa-explained | Tracker source for kaspaexplained.com. Public README **10 Sep**: V6 local journey 26 accepted TN10 txs; Cloudflare host is a separate gate. Wrap: **wTestUSD cannot buy crops.** |
| parker2017code/tn12-covenant-vault-demo | https://github.com/parker2017code/tn12-covenant-vault-demo | Historical escrow/vault evidence lab. **Do not use TN12 for Toccata product work** (IzioDev 6 Jun 2026). Steal rules; re-prove on TN10. |
| STP-KAS/peglab-stp | https://github.com/STP-KAS/peglab-stp | tPEG classroom. Admin oracle + 2 tKAS pool. **WILL DEPEG.** Not money. |
| STP-KAS/peglab-poc | https://github.com/STP-KAS/peglab-poc | Battle-tested receipt PoC. Parker unit + PegLab warning. Two tracks: public goods, or BTCPay-shaped software company. **Not USD.** ENGINE_SPEC until TN10 txids. |
| STP-KAS/grok-kaspa-collab | https://github.com/STP-KAS/grok-kaspa-collab | Grok × Kaspa collab. Core idea, commercial uses, beyond-crypto scheme. Not a KIP. Not a dollar. |
| STP-KAS/Xai.Kaspa.node | https://github.com/STP-KAS/Xai.Kaspa.node | **kaspa bot** mainnet archival ritual. Operator 17 Sep: 1 public `159.223.110.159:28492`. Standing use: [`DESK-BOT.md`](DESK-BOT.md). |
| STP-KAS/groks-wallet | https://github.com/STP-KAS/groks-wallet | **tn10 bot** + Grok’s TN10 wallet (public address only). RPC `127.0.0.1:16210` on the sandbox. Same pay-to for miners. |
| STP-KAS/iziodev-build-a-kaspa-l1-grok-reveieuw | https://github.com/STP-KAS/iziodev-build-a-kaspa-l1-grok-reveieuw | Independent pass of Izio 16 Sep getting-started. Matches §4d. Not an audit. |
| STP-KAS/kaspa.org-kaspaexplained | https://github.com/STP-KAS/kaspa.org-kaspaexplained | Desk comparison repo. 22 Sep check: [kaspa.org/lore](https://kaspa.org/lore) matches the upgrade split in **Now** (10 BPS, Toccata at DAA 474165565, SilverScript v1.0.0, DAGKnight next). Cite lore for that split. A merged KIP or a release tag still outranks the page. |
| STP-KAS/xai-reasoning-3 | https://github.com/STP-KAS/xai-reasoning-3 | xAI reasoning 3. Dual-rail EUR till (SEPA + optional kaspa QR). 402 refuses unverified txids. Not a dollar. |
| a19q3/Kurrent | https://github.com/a19q3/Kurrent | Eltoo-inspired latest-state channel. Forum [494](https://research.kas.pa/t/kurrent-an-eltoo-inspired-latest-state-channel-on-kaspa/494). Devnet evidence. **Not product.** |
| elldeeone/kaspa-x402 | https://github.com/elldeeone/kaspa-x402 | Intended **x402 v2** binding. TN10 alpha. Site [kaspa-x402.org](https://kaspa-x402.org). Bind this envelope; do not invent a fourth 402. |
| Kali123411/k402 | https://github.com/Kali123411/k402 | HTTP 402 + `kaspa-channel` lock/voucher. [kccs#4](https://github.com/kaspanet/kccs/pull/4) still open. Steal the lock. **Not** elldeeone’s x402 v2 binding. **Not** adopted KCC-0402. |
| kaspanet/kccs#24 | https://github.com/kaspanet/kccs/pull/24 | **KCC-0012 Draft** (open ready head `7159d48`, 20 Sep). Browser wallet provider + `kaspa:announceProvider` / `kaspa:requestProvider`. Lead [saefstroem](https://github.com/saefstroem). Needs a public implementation before Final. **Not adopted.** Also open: [#26](https://github.com/kaspanet/kccs/pull/26) KCC-23 MJ, [#27](https://github.com/kaspanet/kccs/pull/27) kcc-1↔kcc0 (saefstroem approved 20 Sep; still not Final). Gramlane inject stays Kasware/Kastle. |
| saefstroem/stroemnet | https://github.com/saefstroem/stroemnet | His P2P atomic-swap experiment. Tip `e60dc3e` (17 Jul 2026). Unaudited. Testnet channels only: Kaspa TN10, Ethereum Sepolia, Igra Galleon. See **Now**. Not a product. |
| michaelsutton/kdapp | https://github.com/michaelsutton/kdapp | Sutton's episode framework. Tip `eade853` (2 Jul 2025). Alpha. Pins rusty-kaspa **v1.0.0**. Off-node payload interpreter. A 10-bit tx-id pattern. Episodes expire after `2592000` DAA scores. A separate stack rolls back commands on a reorg. The bundled tic-tac-toe example is testnet-10 by default. See **Now**. |
| danieliyahu1/kas-odds | https://github.com/danieliyahu1/kas-odds | Parity-bet covenant. Tip `851e114` (22 Sep). Pins SilverScript `3ed9733`. Stake at least 1 KAS. Default testnet-10, with a mainnet profile in `network.js`. See **Now**. |
| biryukovmaxim/kaspa-xmss | https://github.com/biryukovmaxim/kaspa-xmss | Unaudited hash-based signatures compiled to txscript. Tip `e36538f` (3 Jul 2026). Pins rusty-kaspa branch `master`. See **Now**. |

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
| simply-kaspa-indexer | https://github.com/supertypo/simply-kaspa-indexer | L1 Postgres indexer (Supertypo). Not the KNS name API. Last push 8 Jul 2026. |
| Implementer kit | https://github.com/STP-KAS/kns-spec | Not official KNS. File read 22 Sep: [`GROK-47-KNS-REVIEW.md`](GROK-47-KNS-REVIEW.md). Kit `KasName.json` is `c8c06c1a…`. The kns demo JSON is `8f2a7f69…`. kns `PROTOCOL.md` still prints `e7f981d9…`, which is neither file. Not a pin. |
| kns demo | https://github.com/STP-KAS/kns | README matches v1.0.0. Undated files under it still say the current compiler is v1-rc1, and the claims checker still says KCC-0 is Draft. |
| DOTK SDK | https://github.com/supertypo/dotk-sdk | TypeScript. Pushed 21 Sep 2026. No `.sil`. |
| DOTK tx SDK | https://github.com/supertypo/dotk-sdk-tx | TypeScript tx helpers. Pushed 21 Sep 2026. No `.sil`. `github.com/supertypo/dotk` still 404s. |
| Overlay (`kns://`) | https://github.com/STP-KAS/kns-spec/blob/main/OVERLAY.md | Name-addressed layer: locate on KNS, settle on Kaspa, run dApps locally. Not a new chain. |

FAQ still says “only KasWare” in places. Use the **supporting wallet** table. Kaspire is not a row. A Connect control on the TN10 site is not a row.

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
- Local: http://127.0.0.1:8083/open.html (this machine; `kns-spec serve`)
- **Conformance (MUST/SHOULD for KNS + wallets):** https://github.com/STP-KAS/kns-spec/blob/main/CONFORMANCE.md
- **Profile keys to add (ipfs, peer, onion…):** https://github.com/STP-KAS/kns-spec/blob/main/PROFILE.md
- Schema: https://github.com/STP-KAS/kns-spec/blob/main/schemas/overlay-records.schema.json
- `https://alice.kas.limo` leaks DNS. `kns://alice.kas` must not need ICANN or a CA.
- Uniqueness is still indexer FCFS. Overlay does not fix that.

### 4d. Argent getting-started (Izio, 16 Sep 2026) — not a tag

Source thread: [@IzioDev 16 Sep](https://x.com/IzioDev/status/2100178860700512752) (KEF grantee since 15 Dec 2025). **A tweet is not a KIP. Local runtime ≠ a Kaspa tx.**

**How to start (his steps):**

1. Install Git and Rust (only requirements he named).
2. `git clone https://github.com/argent-lang/argent-template`
3. `./setup` (Windows: `setup.cmd` / `setup.ps1` exist).
4. Follow [this video](https://www.youtube.com/watch?v=xZsuvcc9qPk).

Template README: sibling checkout `kaspanet/argent` + `argent-template`. If `../argent` exists, setup uses it without pulling. Builds deps and runs a smoke demo. Optional `./setup --vscode-ext` links the `.ag` VS Code extension.

**Scope (template README, do not overclaim):** builds and executes in Argent’s **local** runtime. It does **not** connect to a Kaspa network, manage a wallet, or submit transactions.

**Working examples he pointed at:**

| What | URL |
| --- | --- |
| Playground apps | https://github.com/argent-lang/argent-playground/tree/master/ag |
| Compiler examples | https://github.com/argent-lang/argent/tree/master/examples |

Playground bins (local): `basic_counter`, `signed_counter`, `two_actor_exchange`, `dynamic_actor_choice`, `multiapp_badge`, `open_icc_agent`, `dex_asset`. `dex_asset` is a **local** DEX-shaped flow — not a live L1 DEX.

**Contribute:** PR crafted apps to [argent-lang/argent-playground](https://github.com/argent-lang/argent-playground). Community support: Kaspa Discord **development** (invite https://discord.gg/kaspa).

**Docs he asked for** (acceptance criteria, challenge them): Argent Getting Started · cookbooks/recipes for one design · Concept section. No unnecessary jargon (if a term is required: Concept). Human-friendly, which is also LLM-friendly. Mermaid diagrams if they earn their keep. **Docs should not describe how Argent operates; they should describe how to use it.** Existing programmability pages will likely be reshaped.

**What landed in the compiler after the 14 Sep freeze (not in the tweet):** [PR #63](https://github.com/argent-lang/argent/pull/63) **merged 14 Sep** — rules 5 (continuation closure) and 6 (zero-continuation first-input) now emit generated Silverscript. [PR #62](https://github.com/argent-lang/argent/pull/62) **open** (module imports). Still **no release tag**. README still not release-ready.

**Not pins from that thread:** zKAS merge-mining (`@decodekaspa`); `$kasdistro`; vProgs-as-product (Maksim: vProgs hides rollup complexity — still no product testnet).

This desk: [STP-KAS/argent-xai](https://github.com/STP-KAS/argent-xai) is a pin-checker, **not** an audit. Gramlane still does not ship Argent ICC.

---

## 5. Core + builder X handles

Yonatan’s own “rough core” list (30 Apr 2025): michaelsutton, hashdag, coderofstuff_, someone235, freshair08, biryukovmaxim, reshmem, aspect, tiram88, elichai, tmrlvi, D-Stacks. Inspect https://github.com/kaspanet and https://research.kas.pa — DYOR. **“Core” is not a legal title.**

| Person | X | Role (public) |
| --- | --- | --- |
| Yonatan Sompolinsky | [@hashdag](https://x.com/hashdag) | Founder / research |
| Michael Sutton | [@michaelsuttonil](https://x.com/michaelsuttonil) | GitHub [michaelsutton](https://github.com/michaelsutton). Lead protocol. [kips#45](https://github.com/kaspanet/kips/pull/45) marked KIP-16/17/20/21 Active. Toccata node work: rusty-kaspa [#1036](https://github.com/kaspanet/rusty-kaspa/pull/1036), [#1038](https://github.com/kaspanet/rusty-kaspa/pull/1038) (TN10), [#1053](https://github.com/kaspanet/rusty-kaspa/pull/1053) (v2.0.1), [#1101](https://github.com/kaspanet/rusty-kaspa/pull/1101). SilverScript compiler series through [#235](https://github.com/kaspanet/silverscript/pull/235). Argent through [#60](https://github.com/argent-lang/argent/pull/60). Own alpha: [kdapp](https://github.com/michaelsutton/kdapp). See **Now**. |
| Ori Newman | [@OriNewman](https://x.com/OriNewman) | GitHub [someone235](https://github.com/someone235). Tagged SilverScript v1.0.0. Authored the rusty-kaspa release cluster behind v2.1.0: [#1136](https://github.com/kaspanet/rusty-kaspa/pull/1136) (20 MiB IBD chunks), [#1137](https://github.com/kaspanet/rusty-kaspa/pull/1137) (reject coinbase in the mempool), [#1138](https://github.com/kaspanet/rusty-kaspa/pull/1138) (arithmetic safety), [#1139](https://github.com/kaspanet/rusty-kaspa/pull/1139) (version strings). [#1135](https://github.com/kaspanet/rusty-kaspa/pull/1135) is still his open PSKB sighash opt-in. [#1067](https://github.com/kaspanet/rusty-kaspa/pull/1067) added the dynamic-image Groth16 verifier. [native-assets-zk-poc](https://github.com/someone235/native-assets-zk-poc) is still the SP1 Fibonacci template. [native-assets-r0](https://github.com/someone235/native-assets-r0) is still the RISC Zero starter. [kasfam-handsfree](https://github.com/someone235/kasfam-handsfree) suggests quote text for Kaspa tweets. |
| coderofstuff | [@coderofstuff_](https://x.com/coderofstuff_) | Core contributor |
| FreshAir08 | [@FreshAir08](https://x.com/FreshAir08) | Research / fees |
| Hans Moog | [@hus_qy](https://x.com/hus_qy) | Core / KEF-funded. GitHub [hmoog](https://github.com/hmoog). Top [vprogs](https://github.com/kaspanet/vprogs) commit volume (45 vs Max 34). Not a product. |
| Romain Billot | [@IzioDev](https://x.com/IzioDev) | Core / KEF-funded |
| Maxim Biryukov | [@biryukovmaxim](https://x.com/biryukovmaxim) | GitHub [biryukovmaxim](https://github.com/biryukovmaxim). KIP-21. vprogs stack and [vprog-tictactoe](https://github.com/biryukovmaxim/vprog-tictactoe), tip `75950635`. The vprogs counterpart on that code is [hmoog](https://github.com/hmoog). Own research: [kaspa-xmss](https://github.com/biryukovmaxim/kaspa-xmss), see **Now**. Of eight follows, [aspect](https://github.com/aspect) is the Kaspa account. |
| Shai Wyborski | [@DesheShai](https://x.com/DesheShai) | GHOSTDAG co-author; later left core (his 2025 farewell). Not a current pin as “core”. |
| Aviv Zohar | [@Avivz78](https://x.com/Avivz78) | Co-author GHOST / research |
| Kaspa (community X) | [@kaspaunchained](https://x.com/kaspaunchained) | Non-representative community account. 17 Sep stack: [covenants/SS/Argent](https://x.com/kaspaunchained/status/2100571472561586192) · [docs](https://x.com/kaspaunchained/status/2100572500442980776). 20 Sep intern roundup: [KCC20/Argent/DK/vProgs/x402](https://x.com/kaspaunchained/status/2101676311244915028). Not a KIP. |
| Kaspa global | [@KASPAglobal](https://x.com/KASPAglobal) | 3 Sep 2026: Toccata live, not “coming soon”. |
| Kaspa Commons | [@Kaspa_Commons](https://x.com/Kaspa_Commons) | Relays Discord (e.g. Ori Newman TN10 notes). Not core. |
| This project | [@StppStp](https://x.com/StppStp) | Gramlane / project delusional. **Never DMs you.** |
| Luke Dunshea | [@elldeeone](https://x.com/elldeeone) | SilverScript v1 credit. GitHub [elldeeone](https://github.com/elldeeone). kaspa-x402 **v1.0.0-rc.1** TN10. Bind that envelope. |
| Sivan Helfer | [@manyfest_](https://x.com/manyfest_) | SilverScript v1 / KCC-20. GitHub [Manyfestation](https://github.com/Manyfestation). |
| Alexander Säfström | [@asaefstroem](https://x.com/asaefstroem) | GitHub [saefstroem](https://github.com/saefstroem). **KIP-16 author** (Active). The KIP header spells Safstrom. Also the rusty ZK SDK ([#953](https://github.com/kaspanet/rusty-kaspa/pull/953)) and `OpTxInputDaaScore` ([#861](https://github.com/kaspanet/rusty-kaspa/pull/861)). KCC-0 author. **KCC-0012** lead ([kccs#24](https://github.com/kaspanet/kccs/pull/24)). Author of the open KCC-20 Last Call proposal ([kccs#31](https://github.com/kaspanet/kccs/pull/31)). Sutton [11 Sep](https://x.com/michaelsuttonil/status/2098433221021118762): dapp-dev process + ecosystem standardization. KCC-12 and KCC-20 stay Draft. KIP-16 is law. Own experiment: [stroemnet](https://github.com/saefstroem/stroemnet), see **Now**. |
| BankQuote | [@BankQuote](https://x.com/BankQuote) | Community educator. GitHub [trillskillz](https://github.com/trillskillz) (OpenSilver). Long-form Toccata/covenant essays: §5c. **Not core.** |
| Daniel | [danieliyahu1](https://github.com/danieliyahu1) | No X on the profile. kccs#24 notes are on **Now**. [kas-odds](https://github.com/danieliyahu1/kas-odds) and [onlykas](https://github.com/danieliyahu1/onlykas) are his SilverScript apps. [kaspa-simple-mcp](https://github.com/danieliyahu1/kaspa-simple-mcp) is a read-only wrapper of api.kaspa.org, mainnet by default. He follows [ezratameno](https://github.com/ezratameno). Those public repos are not Kaspa. |

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

## 5c. @BankQuote essays (community, not law)

[@BankQuote](https://x.com/BankQuote) — long-form Kaspa explainers, Apr–Sep 2026. Same person as [trillskillz](https://github.com/trillskillz) (OpenSilver). **Not core. Not a KIP.** Kept only posts that keep Toccata live vs Argent / vProgs / DAGKnight not-shipped, and that do not treat tooling as product. Recheck before quoting.

**Dropped this scan:** price / “Kaspa will perform”; AGI / post-AGI economy; Staghunt as a coordination layer; KasGraph “feature-complete” / kasgraph.io live (27 May: still in development; last GitHub **27 Jul**); “AI can now operate on Kaspa” as present-tense product.

| When | Post | Honest |
| --- | --- | --- |
| 13 Sep 2026 | [Covenants + SilverScript + Argent](https://x.com/BankQuote/status/2099169333008093625) | Stack. Argent still needs audit. |
| 10 Sep 2026 | [SilverScript v1](https://x.com/BankQuote/status/2098085618991481249) | Compiler pin exists. Compiler correctness + app security still need scrutiny. Argent not hardened. |
| 9 Sep 2026 | [Covenants as ownership](https://x.com/BankQuote/status/2097770791664239031) | Vaults/escrow/treasury as design. Tooling, audits, wallets still catching up. |
| 8 Sep 2026 | [Argent ICC](https://x.com/BankQuote/status/2097352240549753241) | Pre-release. Needs audit. Not a tag. |
| 30 Aug 2026 | [SilverScript v1-rc1](https://x.com/BankQuote/status/2094127101825929410) | **History.** v1.0.0 tagged 9 Sep. |
| 29 Aug 2026 | [Argent as UTXO-native](https://x.com/BankQuote/status/2093738838883483934) | Not an EVM clone. DAGKnight still a target. |
| 26 Aug 2026 | [Covenants, Argent, DAGKnight as different layers](https://x.com/BankQuote/status/2092626699737297362) | DK is not consensus. |
| 22 Aug 2026 | [Post-Toccata stack](https://x.com/BankQuote/status/2091199737257140436) | Explicit: higher stack is experimental, not finished production. |
| 30 Jul 2026 | [Argent actors + ICC](https://x.com/BankQuote/status/2082962866240450706) | Experimental, not production-ready. |
| 22 Jul 2026 | [Programmable PoW substrate](https://x.com/BankQuote/status/2079931220859699259) | Seed of this catalog. Tx v1 / KIP-16 / 20 / 21. Primitives live; tooling is the next battle. |
| 10 Jul 2026 | [Transaction v1 surface](https://x.com/BankQuote/status/2075573111232077948) | Same architecture as 22 Jul. Not a shared-state VM. |
| 19 Jun 2026 | [Toccata as programmable UTXO cell](https://x.com/BankQuote/status/2068101137895412170) | KIP-17 inspect / KIP-20 lineage / KIP-16 proofs. Not an EVM clone. |
| 25 May 2026 | [OpenSilver](https://x.com/BankQuote/status/2058954066345001133) | Author of the already-pinned repo. **Not audited.** |
| 18 May 2026 | [Conditional settlement use cases](https://x.com/BankQuote/status/2056460968104702078) | Design, not product. DAGKnight / based-ZK / L2 KAS still roadmap. |
| 22 Apr 2026 | [Toccata + KIP-21 sequencing](https://x.com/BankQuote/status/2046948600094101946) | **History** (pre-activation). Architecture still matches. |
| 19 Apr 2026 | [Programmable settlement; vProgs horizon](https://x.com/BankQuote/status/2045943476546605124) | **History.** Honest split: Toccata groundwork, vProgs horizon. |

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

## 7. News freeze (12 Sep 2026)

- Toccata **live** on mainnet (DAA `474_165_565`, ~30 Jun 2026). KIPs 16/17/20/21 Active 15 Jul 2026.
- rusty-kaspa **v2.0.1** is still the Toccata maintenance tag. No v2.0.2.
- silverscript **[v1.0.0](https://github.com/kaspanet/silverscript/releases/tag/v1.0.0)** tagged **9 Sep 2026** by Ori (someone235), commit `3ed9733`. SemVer starts here. Windows zip SHA256 `3e0d660c15a9e7ac90f3960da24d348b076b1891481bfe758db18accc8a102e1`. This is the pin. v1-rc1 (`c7d17a1`, 30 Aug) is history. Compiler tag ≠ audited dapp.
- `#234` foreign `readInputState` framing guard still **closed unmerged**. Own-UTXO `validateOutputState` only.
- `#243` compiled artifact has **no compute-budget estimate** — still **open**.
- **New compiler hole on v1.0.0:** [#249](https://github.com/kaspanet/silverscript/issues/249) `State[].split()` tuple destructure emits undefined `__inline_*`. `.0`/`.1` access works; `byte[].split()` tuple works. Fix PR [#250](https://github.com/kaspanet/silverscript/pull/250) **open**, not merged. Do not write `(State[] a, State[] b) = states.split(n)` on this pin.
- KCC-0020 **Draft**. Issue [#14](https://github.com/kaspanet/kccs/issues/14) supply-split still open. Vectors [#20](https://github.com/kaspanet/kccs/pull/20) still open. Not a gram token.
- Portrait (Kii) public **1 Sep 2026**, testnet-only.
- DAGKnight: KIP-2 still Proposed. [#1127](https://github.com/kaspanet/rusty-kaspa/pull/1127) (FreshAir: bounded UMC / k^4 depth) **ready for review 12 Sep**. Security write-up still pending. Last `dagknight` commit **8 Sep**. **Not shipped.** Notebook: [dagknight-test-grok](https://github.com/STP-KAS/dagknight-test-grok).
- kaspa.org rebuilt around “real-time decentralization” (2026). 10 BPS live. 100 BPS is a target, not a spec.
- Official Toccata guide: https://docs.kaspa.org/toccata — consensus live; SilverScript v1 is tagged; Argent/vProgs tooling still early.
- @kaspaunchained **17 Sep**: [covenants/SilverScript/Argent](https://x.com/kaspaunchained/status/2100571472561586192) + [docs pointer](https://x.com/kaspaunchained/status/2100572500442980776) → https://docs.kaspa.org/programmability/covenants. Community explainer. **Not a tag.**
- @kaspaunchained **20 Sep**: [intern roundup](https://x.com/kaspaunchained/status/2101676311244915028) — KCC20 / Argent / DAGKnight / vProgs / x402. Catalog. **Do not weld.** Manyfest `kcc20-live` is offline and **field-order-swapped** vs Draft KCC-20. x402 is elldeeone **v1.0.0-rc.1** TN10, not KCC-20 borrow. DK #1104 still `a5888da`. vprogs #148 draft.
- research.kas.pa: newest thread is **optional privacy / MWEB-like** (JackKas, 8 Sep, [522](https://research.kas.pa/t/optional-privacy-layer-for-kaspa-similar-to-litecoin-mweb/522)). Not a KIP. Kurrent (23 Jun) still not product.
- STP-KAS implementer kit: https://stp-kas.github.io/kns-spec/ — KasWare/Kastle inscriptions + proven covenant txs. `KasName.sil` on silverc v1.0.0 with **value conservation** (v1 tutorial: `validateOutputState` does not lock amount).
- Ori v1 post: https://x.com/OriNewman/status/2097731203503640976 — “Silverscript will evolve, Argent will add higher layers.”
- Sutton: https://x.com/michaelsuttonil/status/2097360985442926740 (8 Sep) — “when Argent matures”, not if. Still no Argent tag.
- Argent [PR #63](https://github.com/argent-lang/argent/pull/63) **merged 14 Sep** (Izio, Sutton merge) — leader/delegate rules 5 and 6 **now compile**. Old unimplemented pin is stale. [PR #62](https://github.com/argent-lang/argent/pull/62) still **open**.
- Izio **16 Sep** getting-started: https://x.com/IzioDev/status/2100178860700512752 — template `./setup` + video. Local runtime. Catalog: §4d.
- Sutton **11 Sep** (00:17 UTC): [working hypothesis](https://x.com/michaelsuttonil/status/2098204180406026482) — global DeFi is **not sequential**; push apps into **partitioned / parallel / replicated** state, not a constant number of sequential bottlenecks. Consensus order still matters **inside related sub-series** (double-spend). **Not a KIP. Not product.** Same thread: if DeFi *must* go through shared-state bottlenecks, “nothing can really bring scalability, not even well designed zk” — essay **not written** yet (infra first). KIP-20 Qs on [kips#46](https://github.com/kaspanet/kips/issues/46): sibling `OpInputCovenantId` **yes** (Argent `observed`); 1-to-many split keeps the same `covenant_id` **yes** (distinguish by template hash / state; fan-out can be cross-tx). Pointers: [argent/docs](https://github.com/argent-lang/argent/tree/master/docs), [icc-semantics](https://github.com/argent-lang/argent/blob/master/docs/icc-semantics.md), dex `quote_id` open-ICC demo. **Gramlane stays one own-UTXO.** Do not start a DEX or a L1 dollar from this tweet.
- IzioDev 10 Sep: SilverScript vs Argent vs KCC thread https://x.com/IzioDev/status/2097918399737139331 ; leader/delegator diagram https://x.com/IzioDev/status/2098087085051986330. KCC-02/03 not wallet-interoperable yet.
- Argent [PR #59](https://github.com/argent-lang/argent/pull/59) merged **8 Sep** (state vectors in `args!`). [PR #60](https://github.com/argent-lang/argent/pull/60) merged **10 Sep**, synced to sil v1.0.0. [PR #63](https://github.com/argent-lang/argent/pull/63) merged **14 Sep** — rules 5/6 compile. README: not release-ready. No tag.
- kaspaexplained /build-on-kaspa (checked 11 Sep): mainnet **84,196** covenants ever, **687** still active, **~1.56M KAS**. TN10 ~88,493 active. Sep 1 indexer baseline; still the live page.
- Parker kaspa-explained public README **10 Sep**: V5/V6 Cloudflare migration in progress; V6 local browser journey **26 accepted TN10 txs** + 5 VM rejects. Hosted runtime is a separate gate. Economy order still dated 7 Sep (21 txs).
- PegLab vs Parker battletest: receipts **1–0 Parker**; classroom **1–0 PegLab**; dollars **0–0**. Successor A is Parker’s 1-sompi receipt. New repo [STP-KAS/peglab-poc](https://github.com/STP-KAS/peglab-poc). Do not mainnet tPEG. Do not use TN12.
- Stillpay split **11 Sep**: [STP-KAS/stillpay-tn10](https://github.com/STP-KAS/stillpay-tn10) (lab) and [STP-KAS/stillpay-mainnet](https://github.com/STP-KAS/stillpay-mainnet) (shape only, no submitter). Pulse: KaChat still `kchat:1:pay`; KasSigner **32-input max**; Parker V5/V6 **unlisted** from nav (8 Sep) but 26-tx local docs remain; elldeeone kaspa-x402 still **alpha.10** (no commits since 10 Aug).
- **KCC-0012** (created 11 Sep, recap 12 Sep): [kccs#24](https://github.com/kaspanet/kccs/pull/24) — browser wallet discovery + provider API. Authors: Säfström, Billot, aspect, KaffinPX, mattoo, ShawnPearce. Requires KIP-5. `kaspa_signTransaction` signs only listed inputs so covenant scripts stay. **Draft. No public implementation.** Recap: [kaspa.news](https://kaspa.news/articles/a-new-kaspa-wallet-still-needs-every-website-to-add-it).
- Sutton **11 Sep** 15:27 UTC: [Alex / standardization](https://x.com/michaelsuttonil/status/2098433221021118762). Praise, not a merge.
- Sil [#251](https://github.com/kaspanet/silverscript/pull/251) **open** 11 Sep (struct-array indexing). `#250` still **open**.
- kaspa.news **11 Sep**: [wallets still catching up](https://kaspa.news/articles/wallets-still-have-to-catch-up-before-kaspa-feels-easy-to-use) — paged UTXO lookup under review; ECDSA owner display still a proposal.
- DAGKnight 12 Sep check: no new `dagknight` commits since 8 Sep. #1127 still draft. #1124 still open. **Not shipped.**

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
| 8–10 Sep | Argent #59 (state vectors) then #60 (sil v1.0.0 + leader/delegate). Rules 5/6 were still unimplemented **that week**. | GitHub |
| 14 Sep | Argent **#63 merged** — rules 5 and 6 compile into generated `.sil`. #62 open (module loading). | GitHub |
| 16 Sep | Izio getting-started thread: template `./setup`, playground/examples, Discord development. **Not a tag.** | [X](https://x.com/IzioDev/status/2100178860700512752) |
| 10 Sep | Sil #249 `State[].split()` tuple hole on the pin. Fix #250 **open**. | GitHub |
| 11 Sep | Sutton: global DeFi not sequential; partitioned/replicated state. vProgs shared-state tension — missing essay. kips#46: sibling cov id + 1→N same id = yes. Argent docs / open ICC. **Research.** Not a pin for a DEX or kUSD. | [X](https://x.com/michaelsuttonil/status/2098204180406026482) |
| 11 Sep | Sutton: Alex (saefstroem) connecting dapp-dev process + ecosystem standardization. Same day as KCC-0012 draft. | [X](https://x.com/michaelsuttonil/status/2098433221021118762) |
| 11 Sep | Sil #251 open (struct-array index). #250 still open. | GitHub |
| 11–12 Sep | KCC-0012 wallet provider/discovery draft (`kccs#24`). Izio reviewing 12 Sep. kaspa.news recap 12 Sep. **Draft.** | GitHub; [kaspa.news](https://kaspa.news/articles/a-new-kaspa-wallet-still-needs-every-website-to-add-it) |

---

## 8. Intel pack (2026-09-12) — public facts only

Folded from the community intel pack. Full dated text: [`intel-pack.md`](intel-pack.md). **Local Telegram/Discord dump paths in that file are this machine, not public dumps.** Mentions ≠ endorsement. Recheck DAA/supply/PR state before quoting.

### L1 snapshot (api.kaspa.org, 12 Sep 2026)

| Item | Number | Recheck |
| --- | --- | --- |
| Virtual DAA | **537,990,049** | `/info/blockdag` |
| Circulating | **~27.696B KAS** (27,696,135,848) of ~28.704B max | `/info/coinsupply` (sompi `2769613584854247697`) |
| Block reward | **2.18267645 KAS** (~21.83 KAS/s). Chromatic step at DAA **531,207,000** has fired. Next step DAA **557,505,000**. No cliff. | coinbase / blockreward |
| Hashrate | **~347.6 PH/s** (API field ~347.6e3; treat as TH/s → PH/s) | `/info/hashrate` |
| Covenants (kaspaexplained Sep 1 baseline, still on the live page 12 Sep) | **84,196** ever, **687** still active, **~1.56M KAS** in active covenants. TN10 ~88,493 active — still dominates. | kaspaexplained.com/build-on-kaspa |

**Since 11 Sep freeze:** DAA +1.11M; supply +~2.4M KAS; reward/hashrate unchanged. New: **KCC-0012** draft (`kccs#24`); Sil **#251** open; Sutton praise of saefstroem. DK still no delta.

**Do not claim:** 100 BPS live; instant irreversible payments; DAGKnight is consensus; KCC-0020/0021/0402/**0012** adopted; foreign `readInputState` is safe; vProgs live; Portrait or kaspa-pqv on mainnet; Gramlane is Kassword / KCC-20 / Argent; Argent is production-ready; Argent template txs hit a Kaspa network; `State[].split()` tuple destructure is safe on v1.0.0. SilverScript **v1.0.0 is tagged** (9 Sep 2026). Argent rules 5/6 **compile** (14 Sep) — that is not a tag or an audit. **Never share seed phrases.**

### Filters (transcripts)

Yonatan (digital cash, cohesive tooling, core ≠ product) → Sutton (L1 covenant / single based app **now**; multi-program vProgs **later**) → Telegram R&D (how) → Discord (wallet/fee/merchant demand). vProgs: sequencing+DA on L1, execution off L1, validity proofs. Solana-shaped accounts, not EVM.

### Extra GitHubs (high-signal, not all 565)

| Repo | Why |
| --- | --- |
| [argent-lang/argent](https://github.com/argent-lang/argent) | Sutton multi-actor frontend. **#59** 8 Sep, **#60** 10 Sep, **#63 merged 14 Sep** (rules 5/6 compile). **#62 open**. Unaudited. No tag. README: not release-ready. |
| [argent-lang/argent-playground](https://github.com/argent-lang/argent-playground) | Local demos. PR target for community apps (Izio 16 Sep). |
| [argent-lang/argent-template](https://github.com/argent-lang/argent-template) | Getting-started starter. Local runtime only. |
| [argent-lang/kcc20-reference](https://github.com/argent-lang/kcc20-reference) | WIP. Not adopted KCC-20. |
| [Manyfestation/kcc20-live](https://github.com/Manyfestation/kcc20-live) | Offline Argent demo. Field order ≠ Draft spec. Not the standard. |
| [kaspanet/vprogs#139](https://github.com/kaspanet/vprogs/pull/139) | **Open.** ExitLeaf + claim kit. Also #138/#140. **#142** bridge lane-anchor (10 Sep). No product testnet. |
| [biryukovmaxim/vprog-tictactoe](https://github.com/biryukovmaxim/vprog-tictactoe) | **Guest demo, not a public product.** Tip `75950635` (23 Sep 14:33Z). `Cargo.toml` names branch `fix/g2-access-read-enforcement`. Both `Cargo.lock` files pin `ea7b823`, draft [vprogs#163](https://github.com/kaspanet/vprogs/pull/163). The lock is the pin. [vprogs#152](https://github.com/kaspanet/vprogs/pull/152) HEAD is `f61b46f4`. The guest fork pin is gone. [#24](https://github.com/biryukovmaxim/vprog-tictactoe/issues/24). |
| [elldeeone/kaspa-x402](https://github.com/elldeeone/kaspa-x402) | TN10 x402 v2 binding. Bind this. Not a fourth envelope. |
| [kaspanet/kccs#20](https://github.com/kaspanet/kccs/pull/20) | **Open draft.** KCC-20 vectors. Transfer sig unconfirmed. |
| [kaspanet/kccs#24](https://github.com/kaspanet/kccs/pull/24) | **Open ready / still Draft status.** KCC-0012 wallet provider/discovery (head `7159d48`, 20 Sep amend). No public implementation. |
| [kaspanet/silverscript#223](https://github.com/kaspanet/silverscript/pull/223) | **Merged.** Dispatch tags ↔ KCC-1 (IzioDev). |
| [supertypo/simply-kaspa-indexer](https://github.com/supertypo/simply-kaspa-indexer) | L1 Postgres indexer. KNS docs: the KNS resolver uses this. Not api.knsdomains.org. Last push 8 Jul 2026. |
| [supertypo/dotk-sdk](https://github.com/supertypo/dotk-sdk) | TypeScript SDK. Pushed 21 Sep 2026. No `.sil`. Not the missing covenant repo. |
| [supertypo/dotk-sdk-tx](https://github.com/supertypo/dotk-sdk-tx) | TypeScript tx helpers. Pushed 21 Sep 2026. No `.sil`. `github.com/supertypo/dotk` still 404s. |
| [aspectron](https://github.com/aspectron) kdx / kaspa-ng | Wallet gravity |
| [azbuky/kaspium_wallet](https://github.com/azbuky/kaspium_wallet) | Mobile |
| [someone235/native-assets-zk-poc](https://github.com/someone235/native-assets-zk-poc) | Read 22 Sep: still the SP1 Fibonacci template. Not a Kaspa asset. |
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
| biryukovmaxim | vProgs + rusty Toccata cleanup. Guest demo [vprog-tictactoe](https://github.com/biryukovmaxim/vprog-tictactoe) (94 commits, tn10 CUDA runbook, not a public product). |
| hmoog / @hus_qy | vProgs earlier node/bridge |
| saefstroem | KCC-0; rusty ZK SDK |
| D-Stacks | rusty #991 UTXO index (open) |
| palacharlanarendra | Sil #238 still open (later fields reference earlier). #244 ABI license **merged**. |
| KaspaScopio | Sil #249 / #250 — `State[].split()` tuple destructure on v1.0.0. Skip that syntax until #250 merges. **#251** (11 Sep) struct-array index — also open. |
| saefstroem | KCC-0; rusty ZK SDK; **KCC-0012** (`kccs#24`). Sutton 11 Sep praise. Draft. |
| [@BankQuote](https://x.com/BankQuote) / [trillskillz](https://github.com/trillskillz) | Community Toccata/covenant essays (§5c). OpenSilver (not audited). **Not core.** |

### Gramlane filter (from that pack)

**Now:** pinned **silverc v1.0.0** (Ori, 9 Sep, `3ed9733`); WorkCredit / KasName via `validateOutputState` only; grams not KCC-20; POS/Pay; one kasdomain; `/234` still a hole; no `State[].split()` tuples until #250; HTTP 402 binds [elldeeone/kaspa-x402](https://github.com/elldeeone/kaspa-x402); in-page inject **Kasware/Kastle only** (KCC-0012 is Draft); pointers to Kassword/pqv/Portrait. Argent rules 5/6 **compile** as of 14 Sep — still no tag, still not a till.
**Not us:** DAGKnight, #234 retry, guessed compute budget, shipping Argent ICC, vProg exits, L2 stables, Kurrent channels, MWEB privacy thread, a fourth 402 envelope, calling k402 “x402”, treating KCC-0012 as adopted, treating kcc20-reference as KCC-20, a DEX or L1 dollar from Sutton’s 11 Sep hypothesis. **Never share seed phrases.**

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
| `LOCAL/ChatExport_2026-07-27` | Telegram export titled **【A G E N C D E V】** (15 Mar–27 Jul 2026). **Not** `t.me/kasparnd`. Solana agent marketplace. Not in this repo. |
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

> **Standard disclaimer.** This GitHub, not the topic above.
>
> Intentions are good; thought process is questionable. STP remains delusional. Si vis pacem, para bellum.
>
> Intern at https://sixpack.wtf/  
> X: https://x.com/StppStp · GitHub: https://github.com/STP-KAS

# Sweep 1 Oct challenge, kaspa master challenge pass, 1 Oct 2026

- Branch reviewed: `build/2026-10-01`
- Tip SHA reviewed: `fde0918631b9472e07cd4191c3c7e4c1dbc197a9` (one commit, 2026-10-01 18:20:05 +0200)
- Merge-base with main: `57d6ccacdf691902b0042eba9aae0784aa76642f`. Main is `c3a435b` (adds PROCESS.md). `git merge-tree --write-tree origin/main origin/build/2026-10-01` exits 0: no conflict.
- Diff read: `git diff 57d6cca fde0918` (README.md, SNAPSHOT-HISTORY.md, master.json), plus the sweep report dated 2026-10-01 in the desk reports folder.
- Checks were read-only: `gh api` GET calls, npm `npm view`, the X API post lookup, and the repo fact-check tool. Reads ran 18:22 to 18:33 CEST. Nothing was merged, pushed to main or posted.

**Totals: 35 HELD, 8 FAILED, 2 UNVERIFIABLE.**

A branch with an open FAILED item does not merge (PROCESS.md). The eight FAILED items below are stale or overstated lines. None is a leak.

## Claims

### KCC rows

1. HELD. README.md @fde0918 L55, master.json L69 (KCC-0 footgun). "The README index has said Final since #34 merged `411b41bc` at 1 Oct 13:15Z". Evidence: `gh api repos/kaspanet/kccs/pulls/34` gives merged 2026-10-01T13:15:20Z by michaelsutton, merge `411b41bc14b3`. The commit patch changes the README row `[0](kcc-0000.md) ... | Draft |` to `| Final |`.
2. HELD. README L60, master.json L75. "`kcc-0001.md` via #32 `815ecaff` (12:33Z) ... say `Status: Last Call`". Evidence: #32 merged 2026-10-01T12:33:08Z, merge `815ecaff3071`. Its patch is `-Status: Draft` / `+Status: Last Call` in kcc-0001.md. `kcc-0001.md` @411b41bc L6 is `Status: Last Call`.
3. HELD. README L60. "`kcc-0002.md` via #33 `ad1b8996` (12:52Z)". Evidence: #33 merged 2026-10-01T12:52:21Z, merge `ad1b8996d648`. kcc-0002.md @411b41bc L7 is `Status: Last Call`.
4. HELD. README L60. "IzioDev opened both; michaelsutton merged both." Evidence: #32 and #33 both show `user=IzioDev`, `merged_by=michaelsutton`.
5. HELD. README L60, master.json L75. "Neither header has a `Last-Call-Deadline`, which KCC-0 says an editor sets with Last Call (typically 14 days)." Evidence: `grep -c Last-Call-Deadline` gives 0 on kcc-0001.md and kcc-0002.md @411b41bc. kcc-0000.md L154-156: "A KCC editor assigns Last Call status and sets a review end date (`Last-Call-Deadline`), typically 14 days later." Nuance: kcc-0000.md L276 goes further and calls the field "required when status is `Last Call`". The row could say the headers are missing a required field.
6. HELD. README L60. "`kcc-0020.md` stays **Draft** ... still writes `P2PKHHash(pubkey)`". Evidence: kcc-0020.md @411b41bc L7 `Status: Draft`, and L164 `byte[32]: P2PKHHash(pubkey)`.
7. HELD. README L60. "KCC-2 uses unkeyed BLAKE3 `Hash(pubkey)` since #30 `90beacd0`". Evidence: kccs commit `90beacd0dd34` (2026-09-27T15:14:21Z), "kcc-2: kcc-0 compliant and use unkeyed hash function (#30)".
8. HELD. README L60, master.json L75. "#31 head `cfb74cfa` ... merge state now conflicting with main". Evidence: `gh api repos/kaspanet/kccs/pulls/31` gives open, head `cfb74cfa4d7e`, `mergeable=false`, `mergeable_state=dirty`.
9. HELD. README L60. "#26 KCC-23 head `d51721ad` (30 Sep 07:50Z, JSON compliance and a KIP-24 reference)". Evidence: commit `d51721ad0ac5` was authored and committed 2026-09-30T07:50:23Z, message "JSON compliance and kip24 ref". The patch adds I-JSON (RFC 7493) and `[KIP-24 (draft)](https://github.com/kaspanet/kips/pull/41)`.
10. HELD. README L60. "#24 KCC-0012 `7159d48`; #4 `39a42644`; #29 KCC-3/4/5". Evidence: all three are open. Heads are `7159d487db2e`, `39a42644ceeb` and `557428618eb8`.

### Argent, DOTK

11. HELD. README L70, master.json L123. "Master `b312deda` (30 Sep 11:10Z, michaelsutton): refresh README status and runtime example." Evidence: argent-lang/argent master `b312deda6fe1` has committer date 2026-09-30T10:53:31Z / 11:10:49Z, author login michaelsutton, "Refresh README status and runtime example". It touches README.md only (+54/-42).
12. HELD. README L70. "#65 `5301fe15` (29 Sep 22:05Z) shows a multi-actor transition in the README". Evidence: #65 merged 2026-09-29T22:05:50Z, merge `5301fe15b762`, title "docs: show a multi-actor transition in README".
13. HELD. README L70. "Tag list empty ... #64 ... Open". Evidence: `gh api repos/argent-lang/argent/tags --jq length` gives 0. Issue #64 is open.
14. HELD. README L73, master.json L141. "GitHub releases v2.1.0 ... published 1 Oct 11:00Z; the annotated tags peel to those same 29 Sep commits." Evidence: dotk-sdk v2.1.0 was published 2026-10-01T11:00:44Z. Tag object `fba24bdd` resolves to commit `1805a4ad` (committed 2026-09-29T10:25:17Z). dotk-sdk-tx v2.1.0 was published 11:00:47Z. Tag object `f5255756` resolves to commit `83a57c83` (2026-09-29T10:25:44Z).
15. HELD. README L73. "npm `@dotk/sdk-tx` 2.1.0 ... and `@dotk/sdk` 2.1.0 ... are `latest` (29 Sep)". Evidence: `npm view @dotk/sdk dist-tags` and `npm view @dotk/sdk-tx dist-tags` both give `{ latest: '2.1.0' }`. Publish times are 2026-09-29T10:32:50Z and 10:35:10Z.
16. HELD. README L73. "dotk-sdk main `8035e36a` (1 Oct 15:16Z) takes the indexer's OpenAPI document (`src/generated/openapi.json`)." Evidence: `8035e36acbab` was committed 2026-10-01T15:16:56Z, "Take the indexer's OpenAPI document". It modifies `src/generated/openapi.json` (+13/-11). Nuance: the file already existed. The first commit with that message was `ea22fd30` (10:40:37Z, +304/-275).
17. HELD. README L73. "supertypo 2105357608529895761 (30 Sep) said the indexer and API go public-source on 1 Oct." Evidence: the X API shows the post was created 2026-09-30T18:02:24Z. Text: "The @dotk_name indexer (&api) public open-source release will happen tomorrow".
18. HELD. README L73. "no indexer repo is public under supertypo; `supertypo/dotk` returns 404." Evidence: `gh api repos/supertypo/dotk` returned HTTP 404 at 18:24 CEST. `users/supertypo/repos?sort=created` lists no indexer repo. The newest repo is dotk-core.
19. HELD. README L73. "supertypo/dotk-core (created 28 Sep) is a Rust protocol library for dotk.name." Evidence: created 2026-09-28T11:20:26Z, language Rust, description "Protocol library for dotk.name, the .k name registry on Kaspa".
20. HELD. README L73. "supertypo/dotk-sdk-tx main `d9d9a595` (29 Sep 10:36Z)". Evidence: commits?per_page=3 still lists `d9d9a59535bb` (2026-09-29T10:36:43Z) first.

### New rows

21. HELD. README L74, master.json L147. "the ZealousSwap post-mortem, as relayed by Recon 2101642546803863779, traces it to a signature bypass in the off-chain Kasplex KRC-20 indexer, with no exploit in ZealousSwap, Igra, or Kaspa L1." Evidence: that post (2026-09-20T12:00:04Z) says "Root cause confirmed, Kasplex KRC 20 indexer signature bypass" and "No exploit in ZealousSwap, Igra, or Kaspa L1." It quotes @ZealousSwap 2101639508286488799, which says the same.
22. HELD. README L74. "Recon 2102789086125658294 (23 Sep): ZealousSwap trading is back on Igra L2 and the KRC-20 bridge routes stay closed." Evidence: the post (2026-09-23T15:56:00Z) says "ZealousSwap trading is back on Igra L2" and "KRC 20 bridge routes remain closed."
23. HELD. README L75, master.json L153. "#369 (KCC-20 UI surface) merged 1 Oct 13:48Z into the feature branch `feat/kron-token-ui`, **not main**." Evidence: `gh api repos/forbole/kastle/pulls/369` gives merged 2026-10-01T13:48:30Z, base `feat/kron-token-ui`. The default branch is `main`.
24. HELD. README L75. "#372 KCC20-Integration into main is open." Evidence: #372 is open, base `main`, title "KCC20-Integration".
25. HELD. README L75. "#356 ... landed as `909bdf8c` (13:32Z) and was reverted by `4bb38e01` (13:34Z)." Evidence: `909bdf8c026c` is at 2026-10-01T13:32:06Z. `4bb38e0184a9` is at 13:34:14Z, `Revert "KCC-12 provider prep (KCCS alignment) (#356)"`. It is the current main tip.
26. HELD. README L76, master.json L159. "first commit `ca5cee59` (1 Oct 11:25Z), CC-BY-4.0 ... Bitmain BM2382, tested on a KS5 Pro ... Community chip research". Evidence: `ca5cee59f0b5` (2026-10-01T11:25:42Z) is the only commit. License is CC-BY-4.0. The README says "This is community research, not manufacturer documentation" and lists BM2382 / KS5 Pro.

### SNAPSHOT-HISTORY and master.json

27. HELD. SNAPSHOT-HISTORY.md L11. "[michaelsuttonil] 2105238268870594712 says the [podcast] moved to 17 Oct or later" (names shortened here). Evidence: that post (2026-09-30T10:08:11Z) reads "(delayed to October 17+)". It replies to 2103236826517393735, which quotes @Vladcostea 2103199763655242230: "October 7th, 8 PM CET".
28. HELD. SNAPSHOT L11. "KasperoLabs filed rusty-kaspa#1140 (SDK 2.1.0 findings)". Evidence: issue #1140, user kasperolabs, 2026-09-30T04:43:20Z, "SDK v2.1.0 findings from mainnet: createTransactions dust change on drains, npm package, docs".
29. HELD. SNAPSHOT L11. "dotk passed 3000 names per supertypo 2100853310278230108 (18 Sep)". Evidence: the post (2026-09-18T07:43:55Z) says "just passed 3000 registered names".
30. HELD. SNAPSHOT L11. "3 not found: ... `supertypo/dotk`, `tetsuo-ai/agenc-marketplace-agent-kit`". Evidence: `gh api` returns 404 for both. (`org/repo` is a placeholder, not a repo.)
31. HELD. SNAPSHOT L225-229. The old "KCC still open" text was moved verbatim. Evidence: the 57d6cca README row and the fde0918 SNAPSHOT row compare as byte-equal (`[ "$a" = "$b" ]` printed VERBATIM).
32. HELD. master.json @fde0918 (whole file). Only the stated rows changed. Evidence: a Python `json.loads` comparison against 57d6cca shows changed `updated` and five rows (KCC-0 footgun, KCC still open, Argent, DOTK .k names, Do not weld), and three added rows (KRC-20 incident, Wallets and KCC-20, OpenMiner reference). The rest of the textual diff is `\uXXXX` escaping. The repo fact-check requires that escaping (check 1, `ensure_ascii=True`).
33. HELD. Sweep report, "Fact-check (--changed-only vs origin/main): OK 328, WARN 27 ..., FAIL 0, SKIP 7." Evidence: re-run `factcheck.py <worktree at fde0918> --changed-only --base origin/main` at 18:26 CEST gives "OK 328 · WARN 27 · FAIL 0 (skipped: 7)", exit 0.
34. HELD. All three files @fde0918 (added lines). There are no secrets or personal data. Evidence: `git diff 57d6cca fde0918 | grep '^+'` for kaspatest/kaspa addresses, xprv/tprv, mnemonic, email patterns, home-directory paths and the known private indexer repo name returns 0 hits. Every STP-KAS repo linked on added lines is `private=false` per `gh api`.
35. HELD. Mergeability. The branch merges cleanly onto main `c3a435b` (`git merge-tree` exit 0, no CONFLICT line).

### FAILED

36. FAILED. README L75, master.json L153, @fde0918. "Kaspire 2104215772717281321 (27 Sep) says KaspaRocket DEX trading is built into its Android app and Chrome extension." Evidence: the post says Kaspire "is getting ready with full KCC20 DEX support". It shows "KaspaRocket tokens directly under TN10 assets" and uses "a dedicated testnet-only PSKT security profile". It says "You can start testing by switching to TN10", and "the extension update will be available within the next days". Fix: "Kaspire (27 Sep) says KaspaRocket KCC20 swaps are in its Android app on TN10 only (a testnet-only PSKT profile). The Chrome extension update was promised 'within the next days'. Not mainnet."
37. FAILED. README L73, master.json L141, @fde0918 (row rewritten by this commit). "branch `dotk-manage` tip `0f3baac1` (27 Sep 18:44Z)". Evidence: `gh api repos/supertypo/kaspium_wallet/branches/dotk-manage` gives `7af4704da71d` (2026-09-30T12:14:28Z, "Added .k name management"). `compare/0f3baac1...7af4704d` gives `diverged`, ahead 1, behind 4. The branch was rewritten after the 29 Sep window the sweep claims to cover. Fix: "branch `dotk-manage` tip `7af4704d` (30 Sep 12:14Z), one squashed commit replacing `0f3baac1`. Still no pull from that branch. Open upstream is azbuky/kaspium_wallet#118 from `dotk-proof`."
38. FAILED. README L49, master.json L33, @fde0918 (unchanged by the branch, now contradicted by it). "Not full KCC-1 conformance, and KCC-1 stays Draft." Evidence: kcc-0001.md @411b41bc L6 `Status: Last Call` (claim 2). Fix: "... and KCC-1 is Last Call, not Final."
39. FAILED. README L63, @fde0918. "They require KCC-1 and KCC-2, which are still Draft." Evidence: claims 2 and 3. Fix: "They require KCC-1 and KCC-2, which are Last Call, not Final."
40. FAILED. master.json L915 (row `kccs`), @fde0918. "README index still says Draft — leftover, not the file." Evidence: claim 1 (#34 `411b41bc` set the index to Final). In the same note, "Open: ... #20, #23, #30, #27 fa845057" is stale: #30 merged `90beacd0` (27 Sep), #27 merged `da834af0` (28 Sep), and #20 was closed unmerged. Fix: say the index says Final since #34. List the open pulls as #31, #26, #24, #4 and #29, and drop #30, #27 and #20.
41. FAILED. README L57 (row "Referee lag"), @fde0918. "Cleared." Evidence: `curl -sL 'https://kaspaexplained.com/status?nc=...'` (HTTP 200, 18:26 CEST) says "KCC-1, KCC-2, and KCC-20 are merged Draft documents. KCC-0's process document is now Final after PR #25 merged September 21; the repository index still says Draft." Both are false since 1 Oct 12:33Z / 13:15Z. The site repo's last commit is still `a68bcaf6` (28 Sep). Fix: "Lag again since 1 Oct: /status still calls KCC-1 and KCC-2 Draft and the kccs index Draft."
42. FAILED. SNAPSHOT-HISTORY.md L11, @fde0918. "| 2026-10-01 18:40 | (this commit) |". Evidence: `git log -1 --format=%ad fde0918` gives 2026-10-01 18:20:05 +0200. The row is dated 20 minutes after its own commit, and README L73 says "On this read (1 Oct 18:20 CEST)". Fix: 18:20.
43. FAILED. SNAPSHOT-HISTORY.md L11, @fde0918. "X: core devs and ecosystem accounts back to 17 Sep." Evidence: the branch's own sweep report says "ecosystem slice 17 Sep 00:00-09:58Z skipped to save API cost". The public row drops that gap. Fix: append "(ecosystem slice 17 Sep 00:00–09:58Z not read)".

### UNVERIFIABLE

44. UNVERIFIABLE. SNAPSHOT L11. "GitHub: 175 repos the master names, activity since 29 Sep (36 active ...)". No repo list or command output was published, so the counts cannot be re-derived.
45. UNVERIFIABLE. SNAPSHOT L11. The X coverage ("core devs and ecosystem accounts back to 17 Sep"). The account list is not published. A missed post cannot be ruled out.

## Out-of-branch items (on main, carried by this branch, not FAILED here)

- api-tn10 is recording accepted transactions again. Main README L90 (1984 row) still says "That list stopped storing new payments on 25 Sep 2026". The "TN10 public API" row (main README L51, master.json L39) still reads as frozen. Live check at 18:27:53 and 18:32:29 CEST: `https://api-tn10.kaspa.org/info/health?nc=...` returned 200, `cf-cache-status: MISS`, `database.isSynced` true, `acceptedTxBlockTimeDiff` 2 and then 1. The synced box node (wRPC JSON 127.0.0.1:18210: `getServerInfo` testnet-10, 2.1.0, `isSynced` true, `hasUtxoIndex` true) gave the accepted txids for the last ~400 chain blocks via `getVirtualChainFromBlock`. All 40 sampled (seed 20261001) came back from `POST /transactions/search?acceptance=accepted` with the same accepting block hash. This branch did not refresh either row. It is still a stale status line on public main. Policy stands: an api-tn10 answer is not proof. Read the node.
- Main README L75 / master.json L177 still say "Browser and the optional Node demo sign with vendored kaspa-wasm `2.0.0`". The Node demo loads `config.sdkModule` (kaspa-x402 `724c5fff` `scripts/hash-chain-demo.mjs` L60-63). This is being fixed on `master-revisited-build`, not here.
- Two private STP-KAS repositories are named on main and on this branch: README L65-66, master.json L105 and L297, SNAPSHOT-HISTORY L76, TN10-FIELD-2026-09-29.md L55. `gh api` reports `private=true` for both. They are not repeated here.
- Format: main's master.json has 64 non-ASCII characters, so the repo fact-check check 1 fails on main. This branch re-escapes them, so the two branches will conflict in master.json if both merge.

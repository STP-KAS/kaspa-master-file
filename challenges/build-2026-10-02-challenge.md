# Build 2 Oct challenge, kaspa master challenge pass, 2 Oct 2026

- Branch reviewed: `build/2026-10-02` (owner: kaspa master prompt build)
- Tip SHA reviewed: `d8028c31b1c393afef34c5dfd7368f1151ece481` ("Link the 2 Oct build pass to 0653b98. Branch only. No public reply.", 2026-10-02 07:56:55 +0200)
- Commits on top of main `364b26b`: `24859dd` (07:53:45), `f900e90` (07:53:52), `0653b98` (07:56:49) and `d8028c3` (07:56:55), all STP-KAS noreply. `24859dd` re-applied the KCC rows. `0653b98` put them back to main's text ("Leave the KCC Last Call rows to the watch sweep"). The net diff touches no KCC, Python SDK, Argent, referee or do-not-weld row.
- Merge-base: `364b26b1cd15ee29b129af705f0b3112611c39e5` = `origin/main`.
- Diff read: `git diff 364b26b d8028c3` (AGENTS.md, README.md, SNAPSHOT-HISTORY.md, TN10-INCIDENT-2026-09-29.md, master.json), plus section 6 (the claim list) of the Build analysis for 2 Oct in the desk reports folder.
- All checks were read-only: `gh api` GETs, npm `npm view`, crates.io, curl and web search on public pages, `ps`/`pgrep`/`uptime -s`, `kaspad --version` on the box binary (a separate process; it does not touch the running node), and wRPC JSON `getServerInfo` and `getSinkBlueScore` on 127.0.0.1:18210. **No X tool was called.** Reads ran 08:06 to 08:20 CEST. Nothing was merged or posted. Nothing was pushed except this challenge branch.

**Counts: HELD 23 · FAILED 1 · UNVERIFIABLE 4**

## Branch mechanics

1. HELD. Structure: `git log --format='%H %P' origin/main..origin/build/2026-10-02` gives `d8028c3`←`0653b98`←`f900e90`←`24859dd`←`364b26b`. `git show --stat d8028c3` changes only SNAPSHOT-HISTORY.md (+1, the row).
2. HELD. Merge onto main: `git merge-base --is-ancestor origin/main origin/build/2026-10-02` exits 0, so it fast-forwards.
3. HELD. master.json @d8028c3 is valid JSON. `git diff --numstat` gives 23/5, which is 28 changed lines. It has 63 non-ASCII chars, main's UTF-8 form. Fact-check `--base 364b26b --changed-only` gives `OK 165 · WARN 1 · FAIL 26`. All 26 FAILs are the JSON-form rule (25 "non-ASCII character (ensure_ascii=True would escape it)" plus one drift summary). main and `master/sweep-2026-10-02` @f82e7a8 get the same findings, so this is not counted. The one WARN is `a41a333b` on README L79, a rusty-kaspa rev and not an agenc-on-kaspa commit, so it is a tool false positive.
4. HELD. SNAPSHOT-HISTORY.md L11: "| 2026-10-02 07:56 | [`0653b98`] |". `0653b98` is dated 07:56:49 +0200. "No X calls; X was not read for this pass" holds. The X links in the new rows (Recon, Kaspire, supertypo) are older posts from earlier reads, and the row does not claim it re-read them.
5. HELD. This branch adds no "Moved from README" section. The SNAPSHOT diff is +1 line. On the branch, "## Moved from README on 26 Sep 2026" and "… 1 Oct 2026" appear once each, and there is no 2 Oct heading. The 2 Oct move is only on the sweep.

## DOTK (README L74, master.json `DOTK .k names`)

6. HELD. "GitHub releases v2.1.0 … published 1 Oct 11:00Z; the annotated tags peel to those same 29 Sep commits". The release times are dotk-sdk v2.1.0 2026-10-01T11:00:44Z and dotk-sdk-tx 11:00:47Z, neither prerelease. Tag objects `fba24bdd` and `f5255756` peel to `1805a4ad9605…` (2026-09-29T10:25:17Z) and `83a57c8363cc…` (10:25:44Z). `npm view @dotk/sdk dist-tags` and `@dotk/sdk-tx` both give `{"latest":"2.1.0"}`.
7. HELD. "dotk-sdk main `c9194976` (1 Oct 21:41Z, "The API description is the indexer's 1.0.0") follows `8035e36a` (15:16Z), which took the indexer's OpenAPI document (`src/generated/openapi.json`)". Evidence: the commits API gives `c9194976` at 2026-10-01T21:41:51Z with that message, and `8035e36a` at 15:16:56Z, whose only file is `src/generated/openapi.json`.
8. UNVERIFIABLE. "supertypo 2105357608529895761 (30 Sep) said the indexer and API go public-source on 1 Oct." This rests on X only, and no X call was allowed. I found no non-X source. (The 1 Oct challenge item 17 read this post on 1 Oct.)
9. HELD. "On 2 Oct (~05:50Z) no indexer repo is public under supertypo; `supertypo/dotk` returns 404." `gh api repos/supertypo/dotk` gives Not Found. supertypo's repos matching dotk, index or api are dotk-core, dotk-sdk, dotk-sdk-tx, kaspa-api-doc (2023) and simply-kaspa-indexer (2024, the Kaspa chain indexer, last pushed Jul). None is a dotk indexer.
10. HELD. "supertypo/dotk-core (created 28 Sep, tip `5a0e6ae1` 1 Oct 23:06Z) is a Rust protocol library for dotk.name." Evidence: created 2026-09-28T11:20:26Z, language Rust, description "Protocol library for dotk.name, the .k name registry on Kaspa". The tip is `5a0e6ae1` (2026-10-01T23:06:45Z).
11. HELD (fixes 1 Oct item 37). "branch `dotk-manage` tip `7af4704d` (30 Sep 12:14Z, "Added .k name management"), one commit that replaced `0f3baac1` (the two have diverged). Still no pull from that branch. The open upstream pull is azbuky/kaspium_wallet#118 from `dotk-proof`." Evidence: the branch tip is `7af4704da71d` (2026-09-30T12:14:28Z). `compare/0f3baac1...7af4704d` gives diverged, ahead 1, behind 4. azbuky PRs from supertypo are #118 open (`dotk-proof`), #117 closed (`dotk-subnames`) and #115 closed (`dotk`). None comes from `dotk-manage`.

## KRC-20 incident (README L75, new JSON row)

12. HELD (from non-X sources). "**Not an L1 exploit.** 20 Sep: the ZealousSwap post-mortem … traces it to a signature bypass in the off-chain Kasplex KRC-20 indexer, with no exploit in ZealousSwap, Igra, or Kaspa L1." Evidence: [kaspa.news](https://kaspa.news/articles/inside-the-krc-20-theft-what-we-know-so-far) says "According to the ZealousSwap incident report, the failure was in the Kasplex indexer" and "Kaspa L1, the base network, has no KRC-20-specific program". [news.bitcoin.com](https://news.bitcoin.com/security/kasplex-krc-20-indexer-signature-bypass-drains-two-token-pools/) says "Kaspa itself wasn't hacked … fooled an off-chain indexer". The row's own caveat ("Third-party reports. The desk did not read the post-mortem itself.") stands. The Recon post was not re-read.
13. UNVERIFIABLE. "Recon 2102789086125658294 (23 Sep): ZealousSwap trading is back on Igra L2 and the KRC-20 bridge routes stay closed." This is X only. kaspa.news only says that on 21 Sep "KAT said bridge routes were paused". It does not confirm the 23 Sep state.

## Wallets and KCC-20 (README L76, new JSON row)

14. HELD. "#369 (KCC-20 UI surface) merged 1 Oct 13:48Z into the feature branch `feat/kron-token-ui`, **not main**. #372 KCC20-Integration into main is open. On main, #356 … landed as `909bdf8c` (13:32Z) and was reverted by `4bb38e01` (13:34Z)." Evidence: #369 was merged 2026-10-01T13:48:30Z into base `feat/kron-token-ui`. #372 is open, base `main`, head `KCC20-Integration`. #356 was merged 13:32:07Z with merge commit `909bdf8c`. `4bb38e0184` (13:34:14Z) is `Revert "KCC-12 provider prep (KCCS alignment) (#356)"`, and `compare/4bb38e01...main` gives `identical`.
15. UNVERIFIABLE. "Kaspire 2104215772717281321 (27 Sep) says KaspaRocket KCC-20 swaps are in its Android app on TN10 only, with a testnet-only PSKT profile." This is X only and was not re-read. It matches the fix wording in 1 Oct challenge item 36, which came from that day's X read.
16. FAILED (stale). "The Chrome extension update was promised "within the next days". Not mainnet." The row presents the extension as only promised. Kaspire's own repo says otherwise. In [KaspaHUB21/Kaspire-Kaspa-Wallet](https://github.com/KaspaHUB21/Kaspire-Kaspa-Wallet), README L47 reads "Extension networks: **Kaspa Layer 1 (Mainnet), TN10, Kasplex L2 and Igra L2**", both at `77d906f2` (2026-09-28T13:57Z) and at tip `505d7061` (2026-10-01T12:49:50Z). Release `v0.11.40` (2026-09-29T12:46:59Z) is "Kaspire Android 0.11.40 + Extension 0.5.2" ("Keep KRC20, KRC721, KNS and KCC20 ownership attached to the address…"). Release `v0.11.46` (2026-10-01T12:50:54Z) is "Kaspire Android 0.11.46 and Extension 0.5.5": "Preserve strict typed validation for known KCC20, KRON and Kaspire covenant flows", across "Kaspire Android and the browser extension". This is the wording the 1 Oct challenge proposed (item 36). It held for the 27 Sep post, but the repo had moved on. Fix: keep the 27 Sep quote and add "Kaspire's GitHub README lists TN10 for the extension as well (since at least 28 Sep), and release v0.11.46 (1 Oct 12:50Z) ships Extension 0.5.5 with typed KCC20/KRON flows. Whether KaspaRocket swaps run in the extension, and whether the Chrome Web Store serves 0.5.5, was not verified. Not mainnet."

## OpenMiner (README L77, new JSON row)

17. HELD. "first commit `ca5cee59` (1 Oct 11:25Z), CC-BY-4.0. Community chip research, not manufacturer documentation. The first chip is the Bitmain BM2382, tested on a KS5 Pro". Evidence: the repo was created 2026-10-01T11:10:01Z. Its oldest commit is `ca5cee59f0`, 11:25:42Z, "Publish Open Miner ASIC reference". The license is `CC-BY-4.0`. README L17: "This is community research, not manufacturer documentation." L24: "Bitmain BM2382 | KS5 Pro".

## SilverScript #256 correction (README L79, JSON `SilverScript holes past #251`)

18. HELD. "SilverScript master `3ed97333` still pins every rusty-kaspa crate to git rev `a41a333b`" (link to Cargo.toml L21–L30). `Cargo.toml@3ed97333` L21–L30 has the pin comment and seven `git = …rusty-kaspa, rev = "a41a333b…"` crates.
19. HELD. "argent#64 also needs its own two `argent-runtime` edits (`block_mass_limits`, `EngineFlags`)". The issue body has "1. `crates/argent-runtime/src/lib.rs:1895`" (`block_mass_limits`) and "2. `…lib.rs:1929`" (`EngineFlags` has no field `covenants_enabled`).
20. HELD. "On 2 Oct, kaspa-consensus-core still maxes out at `0.15.0`." crates.io gives max_version 0.15.0.
21. HELD, with a note for the merge. "**Correction (2 Oct):** crates.io alone would not close it." This is true, but it leaves out that michaelsutton said on silverscript#256 (2026-09-29T09:13:41Z) "I'd wait for this until we publish rk v2.1.0 to crates io (wip)". The sweep's wording of the same cell names both causes ("That publish is what Sutton waits for (his timing). Separately …"). Take the sweep's sentence and keep this branch's Cargo.toml link and argent#64 edit names when resolving the conflict (see below).

## Private links, AGENTS.md, incident note

22. HELD. README L93 (1984) and L94 (KUSDT split), plus their JSON notes: "The longer note is in a private repo and is not linked here" and "Ceiling: a private note, not linked here". `gh repo list STP-KAS --json name,visibility` shows the repo that was linked as PRIVATE (this note does not name it). On the branch its name appears 0 times in README.md, master.json and AGENTS.md. It still appears 17 times in SNAPSHOT-HISTORY.md, the same as on main (out of branch; see below).
23. HELD. AGENTS.md L18: "**Synced with public TN10 (checked 2 Oct 2026 07:51 CEST).** RPC `127.0.0.1:16210` …, P2P 16211, kaspad 2.1.0 `tn10-n0`, data and logs under `/workspace`, `--utxoindex`, no `--enable-unsynced-mining` … The current process started 2 Oct 00:56 CEST". `ps -eo pid,lstart,args` shows kaspad pid 2570127 started "Fri Oct 2 00:56:04 2026". Its args are `--testnet --netsuffix=10 --appdir=/workspace/kaspa-data-tn10-n0 --logdir=/workspace/kaspa-logs-tn10-n0 --listen=0.0.0.0:16211 --rpclisten=127.0.0.1:16210 … --utxoindex`, with no `--enable-unsynced-mining`. The binary reports `kaspad 2.1.0`. wRPC JSON on 127.0.0.1:18210 `getServerInfo` gives serverVersion 2.1.0, networkId testnet-10, hasUtxoIndex true, isSynced true. At 08:06:40 CEST `getSinkBlueScore` gave 574352311 and api-tn10 `/info/virtual-chain-blue-score` gave 574352315. The exact 07:51 pair (574344384 vs 574344431) cannot be re-read, but the node is synced now.
24. HELD. AGENTS.md L19: "**None running at 2 Oct 2026 07:52 CEST** (no `kaspa-miner` process …)". At 08:06 CEST `pgrep -fc kaspa-miner` gives 1, which is the pgrep's own shell line, and `ps` shows no `kaspa-miner` process.
25. UNVERIFIABLE. AGENTS.md L19: "Six were running on 30 Sep 16:49 CEST." No box record ties six miners to that time. The artifacts stamped 2026-09-30 16:49 are TN10 balance reports, not process lists.
26. HELD. AGENTS.md L19 pay-to `kaspatest:qzffl…0v0ldx`. This is the same TN10 mining address as main's AGENTS.md L19 (`git show 364b26b:AGENTS.md | grep -c` gives 1). It is not new and is not a reserve address.
27. HELD. TN10-INCIDENT-2026-09-29.md L9: "The same command later gave 20:12:41 (30 Sep) and 20:15:13 (2 Oct), because it is derived from the current clock minus uptime and drifts … Read it as about 20:12". `uptime -s` at 08:06 CEST gives `2026-09-29 20:15:13`, matching the 2 Oct value. The 30 Sep value cannot be re-read.
28. HELD. Leak scan of the `+` lines in `git diff 364b26b d8028c3`: no home-directory or Windows user paths, no emails, no keys, seeds or new addresses (only the old TN10 mining address in item 26). No private repo name was added, and one was unlinked (item 22).

## Conflicts and merge order

- Against main: no conflict (item 2).
- Against `master/sweep-2026-10-02` @`f82e7a8fa82f3afceb6228c50736246e5896dddf`: `git merge-tree --write-tree --name-only` exits 1 with conflicts in README.md, SNAPSHOT-HISTORY.md and master.json (the same in both directions). A trial merge in a scratch worktree, aborted afterwards, shows 4 hunks:
  - README L74–L85 (sweep side). The rows next to each other changed on both sides: DOTK (build only), the three new rows (build only), x402 (sweep only) and SilverScript (both). Keep build's DOTK and new rows and sweep's x402. For SilverScript, use the sweep's two-cause sentence and add build's Cargo.toml link and the argent#64 edit names (item 21).
  - README L99–L107: 1984 and KUSDT (build only) sit next to Do not weld (sweep only). Take both.
  - SNAPSHOT-HISTORY.md L11–L16: both add rows at the top. Keep all three, newest first: 08:00 (sweep), 07:56 (build), 07:45 (sweep).
  - master.json L201–L205, `SilverScript holes past #251`: both rewrote the note. Resolve it the same way as the README cell. The three new JSON rows and the DOTK note merge cleanly. Both branches keep main's UTF-8 form, so there is no whole-file churn.
- Recommended order: **sweep first, then build.** The sweep fast-forwards onto main and removes the false "KCC-1/2 Draft" text from public main. Its open items (13 and R3) are about text that is already on main. stp has to decide item 13 anyway, either by override or by fixing it. Then rebase `build/2026-10-02` onto the new main, resolve the four hunks above, fix item 16, and ask for a re-pass on the rebased tip before merging.

## Does this supersede build/2026-10-01?

- Yes, once both 2 Oct branches merge. Every README row and master.json row that `fde0918` changed is covered. KCC-0, KCC still open, Argent and Do not weld are carried by the sweep (Argent `b312deda` is already on main via `1943089`). DOTK and the new KRC-20, Wallets and KCC-20, and OpenMiner rows are carried by this branch. A script compared each row `fde0918` changed against `57d6cca` with whether build or sweep changes it against main. Every row is covered by one branch. 1 Oct FAILED items 36–43 are handled: 36 is reworded but now stale (item 16 here), 37 is fixed (item 11), 38–41 go to the sweep, and 42–43 are gone because this row has the real time and no X claim (item 4). Only `fde0918`'s own SNAPSHOT row and moved text would be lost; they record an unmerged pass. Dropping `build/2026-10-01` is stp's call, and this pass deleted nothing.

## Out of branch (main `364b26b`, not counted)

- SNAPSHOT-HISTORY.md on main, and on both 2 Oct branches, still names the private repo from item 22 17 times. This branch only unlinks the two Now cells.

## Recheck @ 247a931 (2 Oct 2026, 08:31 CEST)

- Tip SHA reviewed: `247a931a692e9cee4339392aff3e6ceb8af3053c` ("Link the 2 Oct challenge fixes to d80e0a5. Branch only. No public reply.", 2026-10-02 08:11:49 +0200).
- Content head: `d80e0a53b8c412b0b2ace621c7cee9bb3be226f8` (08:11:44 +0200). Parent of tip is that commit; parent of content head is `d8028c3` (the tip of the first pass).
- Diff read: `git diff d8028c3 247a931` (AGENTS.md, README.md, SNAPSHOT-HISTORY.md, master.json). Reads ran 08:27 to 08:31 CEST. All read-only: `gh api` GETs, local `git`/`ps`/`pgrep`, clone of public STP-KAS repos not used here. **No X tool was called.** Nothing was merged. Nothing was pushed except this challenge branch update.

**Recheck lines: HELD 12 · FAILED 0 · UNVERIFIABLE 3**
**Updated totals @247a931: prior item 16 is fixed (now HELD). No open FAILED items introduced by `d80e0a5`/`247a931`. Prior items 1–15 and 17–28 from the first pass are not re-scored. Merge still waits on conflict resolution with `master/sweep-2026-10-02` (sweep first).**

### Earlier FAILED

R1. HELD (fixes item 16). README L76 / JSON `Wallets and KCC-20` @d80e0a5: keeps the 27 Sep kaspirewallet post (X not re-read), and adds that Kaspire README L47 lists TN10 among extension networks (also at `77d906f2`, 28 Sep 13:57Z) and that release v0.11.46 (1 Oct 12:50Z) ships Extension 0.5.5 with typed KCC20/KRON flows; KaspaRocket in the extension and Chrome Web Store serving 0.5.5 are not verified; no mainnet KCC-20 swap claimed. Evidence: [KaspaHUB21/Kaspire-Kaspa-Wallet README](https://github.com/KaspaHUB21/Kaspire-Kaspa-Wallet/blob/505d70611fc6cbd264d5d1dc299988de928941ad/README.md#L47) L47 is `Extension networks: **Kaspa Layer 1 (Mainnet), TN10, Kasplex L2 and Igra L2**` at tip `505d7061` (2026-10-01T12:49:50Z). Same Extension-networks line at `77d906f2` (2026-09-28T13:57Z; then Extension package 0.5.1). Release [v0.11.46](https://github.com/KaspaHUB21/Kaspire-Kaspa-Wallet/releases/tag/v0.11.46) published 2026-10-01T12:50:54Z, name "Kaspire Android 0.11.46 and Extension 0.5.5", body "Preserve strict typed validation for known KCC20, KRON and Kaspire covenant flows" and "Browser extension version 0.5.5". JSON note matches.

### New claims on this tip

R2. HELD. Structure: `git log --format='%H %P' d8028c3..247a931` is `247a931`←`d80e0a5`←`d8028c3`. `git show --stat 247a931` changes only SNAPSHOT-HISTORY.md (+1, the link row). Both commits are STP-KAS noreply. `git merge-base --is-ancestor origin/main 247a931` exits 0 (still fast-forward onto main `364b26b`).

R3. HELD. SNAPSHOT-HISTORY.md L11 @247a931: "| 2026-10-02 08:11 | [`d80e0a5`] … after [its challenge](…/challenge/build-2026-10-02/…) (d1803b9)". Commit time of `d80e0a5` is 08:11:44 +0200. Challenge tip `d1803b9` is the tip of `origin/challenge/build-2026-10-02` before this recheck ("Challenge build/2026-10-02 at d8028c3…").

R4. HELD. README L74 / JSON `DOTK .k names` and README L75 / JSON `KRC-20 incident` @d80e0a5: the three X-sourced sentences now read "Per <account> post … (…; X not re-read on 2 Oct)". Evidence: `git diff d8028c3 d80e0a5 -- README.md master.json` only rewrites those attribution clauses; no new X ids. This pass also made no X calls.

R5. HELD. Kastle facts in the Wallets row are unchanged and still true: #369 merged 2026-10-01T13:48:30Z into `feat/kron-token-ui`; #372 open into main. `gh api repos/forbole/kastle/pulls/369` and `/372`.

R6. HELD. AGENTS.md L18 @d80e0a5 still says the current process started 2 Oct 00:56 CEST, with `--utxoindex` and no `--enable-unsynced-mining`. Evidence at 08:28 CEST: `ps -eo pid,lstart,args` shows kaspad pid 2570127 started "Fri Oct 2 00:56:04 2026", args include `--utxoindex` and omit `--enable-unsynced-mining`, binary path under `/workspace/artifacts/kaspa-tn10/bin/kaspad`.

R7. HELD. AGENTS.md L19 @d80e0a5: "**None running at 2 Oct 2026 07:52 CEST** (no `kaspa-miner` process …)". At 08:30 CEST `pgrep -c kaspa-miner` is 0 and `ps` shows no `kaspa-miner` process.

R8. UNVERIFIABLE. AGENTS.md L18 @d80e0a5: "Per TN10 ops: on 2 Oct n0 was OOM-killed at 00:50 CEST (kaspad about 9.4 GB RSS) by large `getUtxosByAddresses` RPC reads of the mining address … `--utxoindex` had been off from 1 Oct 18:39 for the storm and was back from 2 Oct 00:13 … a 24 h TPS storm run by tn ops2 has been running since Thu 1 Oct 20:35 CEST." Attribution is honest. This desk has no independent primary source for the OOM cause, RSS figure, utxoindex off-window, or storm start. wRPC JSON on 127.0.0.1:18210 returned empty reply at 08:30 CEST (node not probed further; do not touch the running node). Only the 00:56 restart is independently held (R6).

R9. UNVERIFIABLE. AGENTS.md L19 @d80e0a5: "Halted on purpose: stp had the box miners cut at 01:31 CEST on 2 Oct (HALT file set 01:32)." No public artifact. The only halt-named file found under `/workspace/artifacts/kaspa-tn10/` is `keepalive-farm.sh.HALTED-by-relqunch`, mtime 2026-09-29 20:12:54 CEST, which does not match 2 Oct 01:32.

R10. UNVERIFIABLE. AGENTS.md L19 @d80e0a5: "Per the desk's TN10 handoff log (box-local, not public), six were running at 30 Sep 16:47 CEST, were halted 1 Oct 18:38 for the storm, and were un-halted at low priority 1 Oct 20:57 at tn ops2's request." The wording correctly marks the log as non-public. This desk did not read that log. Replaces prior item 25's bare "Six were running on 30 Sep 16:49 CEST" with an attributed, still unverifiable source (and 16:47 vs the old 16:49).

R11. HELD. master.json @247a931 is valid JSON (`python3 -m json.tool`). The three notes touched by `d80e0a5` (DOTK, KRC-20, Wallets) match the README wording above.

R12. HELD. Leak scan of `+` lines in `git diff d8028c3 247a931`: no home-directory or Windows user paths, no emails, no keys, seeds or new addresses. No private repo name was added. Pay-to mining address is unchanged from main.

R13. HELD. Merge vs main still fast-forwards. Against `master/sweep-2026-10-02` @`775ed10`: `git merge-tree --write-tree --name-only` still conflicts in README.md, SNAPSHOT-HISTORY.md and master.json (same three files as against `f82e7a8`). Recommended order unchanged: **sweep first (now with no open FAILED at 775ed10), then rebase build, resolve, re-pass.** Item 16 no longer blocks the build tip.

### Out of branch (not counted)

- README Argent row @247a931 still ends "and KCC-1 is still Draft" (text left to the watch sweep by `0653b98`). False since kccs #32; fixed on `master/sweep-2026-10-02`.

## Recheck @ cfe752f (2 Oct 2026, 08:50 CEST)

- Tip SHA reviewed: `cfe752f9e441e18774c0c8a471975311c1af9898` ("Link the main merge to a4facc9. Branch only. No public reply.", 2026-10-02 08:44:05 +0200). Its parent is the merge `a4facc939b8f1558e10c04bde0cd47d3b85b905a` (08:43:59), whose parents are `247a931` (the previous build tip) and `775ed10` (main).
- Main is `775ed1046b7e0afd44134b235c531560b7f5cebc`. The sweep was merged, and `master/sweep-2026-10-02` = main.
- Diff read: `git diff 775ed10 cfe752f` (the net diff against main), plus `a4facc9` against both of its parents, plus section 8 of the Build analysis for 2 Oct. Reads ran 08:45 to 08:52 CEST from this desk's own clone, all read-only: `git`, `gh api`, `ps`, `ls`, and a read of the box-local TN10 handoff log and stress-test notes. **No X tool was called.** No RPC call was needed this time. Nothing was merged. Nothing was pushed except this challenge branch.

**Recheck lines: HELD 14 · FAILED 1 (R12) · UNVERIFIABLE 0.**
**Updated totals @cfe752f: HELD 47 · FAILED 1 · UNVERIFIABLE 3.** HELD 47 is items 1–28 now at 25 held (16 fixed, and 25 now sourced), plus 11 new lines from the 247a931 recheck (R2–R13 except R10, with R8 and R9 now sourced), plus 11 new lines here. The FAILED one is R12, below. UNVERIFIABLE 3 is items 8, 13 and 15, all X-only and not re-read.

R1. HELD. Fast-forward and no force-push: `git merge-base --is-ancestor origin/main origin/build/2026-10-02` exits 0. `247a931` and `d8028c3` are both ancestors of `cfe752f`. `git show --stat cfe752f` changes only SNAPSHOT-HISTORY.md (+1).
R2. HELD. "net diff vs main is 5 files, +35/−11": `git diff --shortstat 775ed10 cfe752f` gives `5 files changed, 35 insertions(+), 11 deletions(-)`. Numstat: AGENTS.md 2/2, README.md 7/4, SNAPSHOT-HISTORY.md 3/0, TN10-INCIDENT 1/1, master.json 22/4. That matches the per-file totals in section 8 (4, 11, 3, 2, 26).
R3. HELD. The merge reverted none of main's text. For each of the 11 README rows main changed since `364b26b`, the build row is byte-identical to main, except SilverScript (R4). Those rows are Python SDK, TN10 public API, KCC-0, Referee lag, KCC still open, KCC-3/4/5, This desk (including "four more stay off this board"), Argent, x402 (#22 new templates), and Do not weld. The same holds for the 10 master.json notes main changed (including `KCC still open`, `kccs`, `x402 bind the tag`, `Do not weld` and `STP-KAS org and forum halt`). Main's `updated` and its section order are kept. The only rows that differ from main are this branch's own: DOTK, KRC-20 incident, Wallets and KCC-20, OpenMiner, 1984 and KUSDT split, each byte-identical to `247a931`, plus SilverScript. The Argent row now says "KCC-1 is Last Call (kccs #32, 1 Oct 12:33Z), not Final". That closes the out-of-branch note of the 247a931 recheck.
R4. HELD (resolves item 21). README L79 / JSON `SilverScript holes past #251`: main's "That publish is what Sutton waits for (his timing)" is kept. The second sentence becomes "Separately, silverscript master [`3ed97333`](…/Cargo.toml#L21-L30) pins every rusty-kaspa crate by git `rev = a41a333b`, and #256 (and Argent #64, which needs its own two `argent-runtime` edits: `block_mass_limits`, `EngineFlags`) need the source edits above to build against v2.1.0". The pin and the two edits were verified in items 18 and 19. Nothing else in the cell differs from main.
R5. HELD. SNAPSHOT order: L11–L15 are 08:43 (`a4facc9`), 08:11 (`d80e0a5`), 08:00 (main), 07:56 (`0653b98`) and 07:45 (main), newest first. The diff against main is exactly +3 rows (08:43, 08:11, 07:56). The headings "## Moved from README on 26 Sep 2026" (L237), "… 1 Oct 2026" (L297) and "… 2 Oct 2026" (L305, from main) each appear once. The 08:43 row matches `a4facc9` (08:43:59) and claims no X reads and no new facts.
R6. HELD. master.json @cfe752f is valid JSON with 0 `\u` escapes and 63 non-ASCII chars. It equals `json.dumps(d, indent=2, ensure_ascii=False)+"\n"`. The fact-check `--base origin/main --changed-only` gives `OK 182 · WARN 1 · FAIL 26`. The FAILs are the JSON-form rule only (as item 3), and the WARN is the `a41a333b` false positive.
R7. HELD (item 16 stays fixed). README L76 / JSON `Wallets and KCC-20` are byte-identical to `247a931`. The extension now has TN10 in README L47 and the v0.11.46 / Extension 0.5.5 release, and KaspaRocket in the extension and the Chrome Web Store version are marked "Not verified".
R8. HELD. The X lines now read "Per supertypo_kas post 2105357608529895761 (30 Sep; X not re-read on 2 Oct)", "Per ReconProtocol post 2102789086125658294 (23 Sep; …)" and "Per kaspirewallet post 2104215772717281321 (27 Sep; …)", in both README and master.json. The 20 Sep Recon relay keeps "as relayed by Recon". It is backed by non-X sources (item 12). No new X ids were added; the OriNewman ids in the `+` lines come from main's SilverScript cell.
R9. HELD (upgrades item 25 and 247a931 R10). AGENTS.md L19: "six were running at 30 Sep 16:47 CEST, were halted 1 Oct 18:38 for the storm, and were un-halted at low priority 1 Oct 20:57 at tn ops2's request". Evidence is the desk's box-local TN10 handoff log (HANDOFF.md under the 25 Sep TN10 break-test folder). L225: "30 Sep 16:47: isSynced true, … 6 miners". L231: "18:38:30 `touch /tmp/pool-miners.HALT`; 18:38:57 0 kaspa-miner processes". L238–L240: "2026-10-01 20:57 CEST: box miners un-HALTed mid-storm", "Asked by tn ops2", and the supervisor relaunched "**nice -n 10**".
R10. HELD (upgrades 247a931 R9). AGENTS.md L19: "stp had the box miners cut at 01:31 CEST on 2 Oct (HALT file set 01:32)". The same log, L250: "2026-10-02 01:32:01 HALT touched per stp 01:31 ('Cut the miners', via tn ops2)".
R11. HELD (upgrades 247a931 R8). AGENTS.md L18 covers the OOM kill, the utxoindex window and the storm start. The same log, L247: "00:50:22 n0 OOM-killed (kaspad 9.4G RSS) by my getUtxosByAddresses for qzffl5 (2.73M entries). Restarted 00:56 as pid 2570127; index intact". L233: `--utxoindex` was removed at the 18:39 restart. L246: "00:13:53 n0 restarted WITH --utxoindex". The desk's 1 Oct stress-test paste for Build, L3, says the storm "started 1 Oct 2026 20:35 CEST". `ps` shows kaspad pid 2570127, started Fri Oct 2 00:56:04.
R12. FAILED (stale since 08:43, 25 s before the tip). AGENTS.md L19 says "**None running at 2 Oct 2026 07:52 CEST** … Halted on purpose", and L18 says "a 24 h TPS storm run by tn ops2 has been running since Thu 1 Oct 20:35 CEST" in the present tense. The handoff log's latest entry reads "2026-10-02 08:43 CEST: storm over, miners restored": "stp ended the storm 08:43" and "08:43:40 HALT removed, supervisor relaunched at normal priority …, 6 miners mining". `ps -eo pid,lstart,comm` at 08:46:26 CEST shows six `kaspa-miner` processes started Fri Oct 2 08:43:39, and `/tmp/pool-miners.HALT` does not exist. Fix: lead the miners row with "Six running again since 2 Oct 08:43:40 CEST (storm over, HALT removed, normal priority)" and keep the halt history after it. In the node row, write "a 24 h TPS storm by tn ops2 ran from 1 Oct 20:35 to 2 Oct 08:43 CEST (stp ended it)".
R13. HELD. AGENTS.md and TN10-INCIDENT-2026-09-29.md @cfe752f are byte-identical to `247a931`, and main has not touched either since `364b26b`. So the merge carried them unchanged.
R14. HELD. Leak scan of the `+` lines in `git diff 775ed10 cfe752f`: no home-directory or Windows user paths, no emails, no keys or seeds, no mainnet addresses. None of main's six private names and not the unlinked private repo (item 22) appears in any `+` line. The only TN10 address is the old mining pay-to (item 26).
R15. HELD. The merge question from the first pass is settled. The branch fast-forwards onto main `775ed10` with the sweep already in. Once R12 is fixed, `build/2026-10-01` is superseded, as described above.

### Out of branch (main `775ed10`, not counted)

- Main commit `775ed10` ("This desk: four more private repos stay off the board") added no SNAPSHOT row, which PROCESS asks for on every pass.

## Recheck @ 9f5d3ca (2 Oct 2026 08:50 CEST)

Reviewed tip `9f5d3ca2f5c41b480e47ffb5c60a9adb8209966d`, two commits on top of `cfe752f` (`b8f2a8f`, `9f5d3ca`), both with the noreply identity only. The diff touches AGENTS.md L18 and L19 plus one SNAPSHOT-HISTORY row. main `775ed10` is still an ancestor. master.json is unchanged.

- HELD R12 (miners): AGENTS.md L19 @ b8f2a8f, "Six running again since 2 Oct 08:43:40 CEST (storm over, HALT removed, normal priority)". `ps` at 08:49 shows six `kaspa-miner` processes, nice 0, all started Fri Oct 2 08:43:39 2026, and `/tmp/pool-miners.HALT` is absent. The desk handoff log, 2 Oct 08:43 entry, says "08:43:40 HALT removed, supervisor relaunched at normal priority … 6 miners mining (blocks accepted via submit at 08:44)". The halt history is kept after it.
- HELD R12 (storm): AGENTS.md L18 @ b8f2a8f, "A 24 h TPS storm by tn ops2 ran from 1 Oct 20:35 to 2 Oct 08:43 CEST (stp ended it)". The handoff log says "stp ended the storm 08:43". The 20:35 start is attributed to TN10 ops, as before.
- HELD (utxoindex timing): "back from 2 Oct 00:13" matches the handoff log, "00:13:53 n0 restarted WITH --utxoindex … synced 00:33:39".
- HELD (SNAPSHOT): the 08:49 row is at the top, above 08:43.

Totals at 9f5d3ca: HELD 49 · FAILED 0 · UNVERIFIABLE 3 (the X-only lines). No open FAILED. It can merge with stp's OK. No X calls. No public reply.

## Recheck @ 0c72511 (9 Oct 2026 ~17:55 CEST)

- Branch reviewed: `build/2026-10-02`
- Tip SHA reviewed: `0c72511fdc1a809fe177e0f267ee89eeea8fb230` ("Record the covenant-id byte layout and the DOTK binding recompute.", 2026-10-02 20:26:13 +0200)
- Merge-base with current main `cf44ce5`: `99ae9620dd580ff0630cd720f83a0e78de616f4e`. Ahead 1, behind 129.
- Diff read: `git diff 99ae962..0c72511` (README.md, SNAPSHOT-HISTORY.md, master.json). Prior challenge notes on this branch covered tips through `9f5d3ca`; this recheck scores only the new tip commit's claims.
- Sources (read-only): `gh api` on argent#66, rusty-kaspa contents at `a41a333b` and tag v2.1.0, KIP-20 raw, reverse-deps of `write_len`/`write_var_bytes` in `consensus/core/src/hashing/mod.rs`, CovenantID in `crypto/hashes/src/hashers.rs`, dotk-indexer `genesis/mainnet.json` at `17ca993b`. Local TN10 wRPC 127.0.0.1:17210/18210 refused connection this pass. **No X tool was called.** Nothing merged. Nothing pushed except this challenge branch update.

**Recheck counts: HELD 7 · FAILED 2 · UNVERIFIABLE 2**

### Claims on tip `0c72511`

1. FAILED (stale present tense). README Argent / master.json `Argent` @0c72511: "#66 is open, not merged, head `9592dd99`". Live `gh api repos/argent-lang/argent/pulls/66`: `state=closed`, `merged=true` at 2026-10-04T12:04:19Z, merge commit `03d670217b7139ee452e1c50d109f600ed85d94d`, head at merge was `aab8fe1e8c53385447c2c29cd4720faa766c974f` (two commits past `9592dd99`). Main already records that merge. Fix: do not merge this tip; if any remnant wording is still needed, rebase onto current main and state "#66 merged 4 Oct as `03d67021`".

2. HELD. "At rusty-kaspa `a41a333b` the file `consensus/core/src/hashing/covenant_id.rs` is blob `48d8bcc23de775464cf6e7b51db7055508792bea`, the same blob as tag v2.1.0." `gh api …/contents/…?ref=a41a333b` and `?ref=v2.1.0` both return sha `48d8bcc23de775464cf6e7b51db7055508792bea`.

3. HELD. "`write_len` and `write_var_bytes` write a little-endian u64 length, which is KIP-20 section 3.2." `hashing/mod.rs` at `a41a333b`: `write_len` does `self.update((len as u64).to_le_bytes())`; `write_var_bytes` calls `write_len` then the bytes. KIP-20 §3.2 at kips `e4ae233` encodes `le_u64(len(auth_outputs))` and `le_u64(len(script))`.

4. HELD. "The hasher is BLAKE2b-256 keyed with `CovenantID`." `covenant_id.rs` uses `kaspa_hashes::CovenantID::new()`; `hashers.rs` L32: `struct CovenantID => b"CovenantID"`.

5. HELD (as of tip date). "GitHub marks the pull ready for review (`draft` false). No reviewers are assigned." Live API still has `draft=false` and empty `requested_reviewers` (pull is now closed/merged; the draft/reviewer facts remain true).

6. HELD. SNAPSHOT-HISTORY.md top row dated 2026-10-02 20:25 records the same covenant-id / DOTK recompute claims and says "Not a node RPC. Not `argentc genesis verify`". Row is present on the tip; commit time of `0c72511` is 20:26:13 +0200.

7. HELD. Do not weld adds "a local recompute of the DOTK binding = `argentc genesis verify`" (README) / "into argentc genesis verify" (JSON). Present on the tip; consistent with the SNAPSHOT caveat.

8. UNVERIFIABLE. "A local KIP-20 recompute of the genesisBinding single output (index 0, 100000000 sompi, script version 0, 35-byte script) matches registry `ee2128c03dfac7f6d74734bb3c879bd999434c47a55945b8a6daae2a1e4a21de`." This desk did not re-run that local recompute. The registry id string is present in [dotk-indexer `genesis/mainnet.json` at `17ca993b`](https://github.com/supertypo/dotk-indexer/blob/17ca993bec66/genesis/mainnet.json) as `registryCovenantId`.

9. UNVERIFIABLE. "The published redeem script equals the DotkGap bytecode (6342 bytes) and the state span equals the published state. The deed template hash bytes occur inside that gap script." No local recompute of bytecode equality this pass.

10. FAILED (inclusion). Tip is 129 commits behind main `cf44ce5` with merge-tree conflicts in README.md, SNAPSHOT-HISTORY.md, and master.json. Main already carries argent#66 merged, KCC-20 Last Call, private-name strip, and a Launch-proof covenant-id note. Fix: close `build/2026-10-02` without merging this tip; any still-useful DOTK recompute wording belongs on a fresh branch cut from current main.

### Leak / form

- Leak scan of `+` lines vs merge-base: no private STP-KAS repo names, emails, home paths, seeds, keys, or reserve addresses newly introduced.
- master.json @0c72511 parses as JSON.

**Open FAILED at tip `0c72511`: 2 (argent#66 present-tense open; inclusion behind main). Do not merge.**

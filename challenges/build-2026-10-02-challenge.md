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

R4. HELD. README L74 / JSON `DOTK .k names` and README L75 / JSON `KRC-20 incident` @d80e0a5: the three X-sourced sentences now read "Per &lt;account&gt; post … (…; X not re-read on 2 Oct)". Evidence: `git diff d8028c3 d80e0a5 -- README.md master.json` only rewrites those attribution clauses; no new X ids. This pass also made no X calls.

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

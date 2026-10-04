# Challenge: build/2026-10-04

- **Tip reviewed:** `9b744ab65ab0b8035ab5c093d1e6dce69257244a` ("Build 4 Oct task 1: api-tn10 recheck 08:02-08:03 CEST…", 08:04:23 CEST). The tip moved twice during the review: `ed30ad9` → `0f5c5ea` (08:03, AGENTS.md rows) → `9b744ab` (08:04, api-tn10 recheck). Re-fetched at 08:11 CEST before the push; it was still `9b744ab`.
- **Chain:** `9b744ab` → `0f5c5ea1036a1caa5d9f0353935ec38d454c7c8b` → `ed30ad9be0072bf25014bf0b098581fe687f3890` → content `dd798d2b2fb0bb17adcc4830a063af14380232b8` → main `4183b7a9c4206a64ab334bdefbcb6eb3c28545c4`. All four are STP-KAS noreply commits, plain pushes.
- **origin/main is an ancestor** of `9b744ab`, so the branch fast-forwards. **No main merge needed.**
- **Net diff vs main:** AGENTS.md 2/2 (L18, L19), README.md 4/4 (L51, L62, L72, L89), SNAPSHOT-HISTORY.md +3 (L11–L13), master.json 6/6 (L4, L39, L81, L123, L237 note and url). Total +15/−12.
- **Totals: 37 HELD · 1 FAILED · 4 UNVERIFIABLE.** Advisory items are listed at the end and are not counted.
- The owner's analysis `grok-build-analysis-2026-10-04.md`, results `grok-build-results-2026-10-04.md` and raw reads in `scratch/build-2026-10-04/` were used as evidence only. I made no X calls. The TN10 node and miners were read only: `ps`, `df`, `du`, a HALT-file check, the handoff log, and the existing read-only `n0-status.py` (getServerInfo/getBlockDagInfo/getBlock over local wRPC). Nothing was signalled, restarted or changed.
- Abbreviations: R = README.md, J = master.json, S = SNAPSHOT-HISTORY.md, A = AGENTS.md. All at `9b744ab` unless noted.

## FAILED (1)

**F1. FAILED: main's 2 Oct api-tn10 recheck sentence is removed, but not kept as history or announced.** R L51 / J L39. Main `4183b7a` R L51 (added in `f82e7a8`, 2 Oct) read: "Recheck 2 Oct 07:57:01 to 07:57:08 CEST (05:57Z), three cache-busted reads: HTTP 200, Cloudflare `MISS`, `database.isSynced` true, `acceptedTxBlockTimeDiff` 1 to 2, kaspad 2.1.0 synced with UTXO index on two backends (p2pId `2fbdea41`, `cf1dec4d`), so more than one backend remains." `dd798d2` replaced it with the 07:56 sentence, and `9b744ab` then replaced that with the 08:02 sentence. The 08:04 row (S L11) quotes the branch-only 07:56 sentence verbatim. But main's sentence appears nowhere on the branch (`git grep 2fbdea41` in S → 0), and the 07:59 row (S L13) does not say it was replaced. This is the same standard the branch applies to its own 07:56 sentence and to the AGENTS rows (link to `4183b7a`).
Fix: append to S L11 (the 08:04 row), after the existing verbatim quote:
> Main's 2 Oct sentence, replaced in `dd798d2`, verbatim: "Recheck 2 Oct 07:57:01 to 07:57:08 CEST (05:57Z), three cache-busted reads: HTTP 200, Cloudflare `MISS`, `database.isSynced` true, `acceptedTxBlockTimeDiff` 1 to 2, kaspad 2.1.0 synced with UTXO index on two backends (p2pId `2fbdea41`, `cf1dec4d`), so more than one backend remains."

## HELD (37)

**Branch shape**
1. HELD: tip, chain and fast-forward. Evidence: `git rev-parse origin/build/2026-10-04` → `9b744ab6…`. `git merge-base --is-ancestor origin/main 9b744ab` → true. Each commit's parent is the one before it.
2. HELD: J L4 `updated` "2026-10-04". This is the only top-level JSON change; 347 note rows on both sides, none added or removed.

**KCC20 reference (R L62, J L81, S L13), checked against the public PR only**
3. HELD: "Open [argent-lang/kcc20-reference#1], head [`5b2a2312`] (2 Oct 13:45Z), from Manyfestation branch `finalize-kcc20-reference`". Evidence: `gh api repos/argent-lang/kcc20-reference/pulls/1` → state open, merged false, draft false, head `5b2a23124ef43730eca4f69248bc2866daf2c24c`, ref `finalize-kcc20-reference`, head owner Manyfestation. The commit is dated 2026-10-02T13:45:03Z and its parent is `60064687`.
4. HELD: "GitHub says `clean`, but there is no approving review (only comment reviews, 10–11 Sep) and no check run on the head; the branch removed its CI workflow in [`764a1057`] (10 Sep)". Evidence: mergeable_state `clean`. Reviews are all COMMENTED (michaelsutton 10 Sep 11:40Z and 11 Sep 09:54Z/09:57Z; Manyfestation 10 Sep 15:40Z/15:49Z). check-runs total_count 0; combined status `pending` with 0 statuses. `764a1057` (2026-09-10T10:52:05Z, "Remove CI workflow") removes `.github/workflows/ci.yml`.
5. HELD: "`5b2a2312` gives `PublicMintState` a fixed `extension_commitment` (`byte[32]`), set at launch and kept by every mint, and a minted state must carry the same value". Evidence: the `contracts/public_mint.ag` patch adds `byte[32] extension_commitment;`, `require(recipient_state.extension_commitment == extension_commitment);` and `extension_commitment: extension_commitment` in `next_minter`.
6. HELD: "The example uses 32 zero bytes, which the README calls a convention of this deployment with no KCC20 meaning". Evidence: the README patch at 5b2a2312 reads "a commitment of 32 zero bytes. Zero is a convention of this deployment, with no special KCC20 meaning."
7. HELD: "owner ≤ `0x04`, borrow ≤ `0x03`, so the accepted bytes do not change". Evidence: `contracts/kcc20.ag` now has `require(unsigned(owner_scheme) <= unsigned(OWNER_COVENANT_ID))` and `<= unsigned(BORROW_HASH_CHAIN)`. The constants at 5b2a2312 are contiguous: OWNER 0x00–0x04 and BORROW 0x00–0x03. The old OR-lists accepted exactly those values.
8. HELD: "`kcc-0020.md` on kccs main `411b41bc` still says `Status: Draft`". Evidence: kccs main is `411b41bc`, and `kcc-0020.md` L7 reads "Status: Draft".
9. HELD: "`public_mint.ag` at `5b2a2312` is such a minter (`amount <= remaining`)". Evidence: `require(recipient_state.amount <= remaining);` is present at 5b2a2312.
10. HELD: decided from the public PR, not from another branch (S L13: "sourced from the PR, not from any other branch"). Every fact in lines 3–9 comes from the PR, its commits or kccs main. The result matches `build/kcc-last-call-2026-10-02` (`3eb1bb9`), which pins the same head `5b2a2312`. There is no contradiction.

**Third-party 26 Sep (R L89, J L237)**
11. HELD: "[kasperolabs/silverscript-studio] (MIT, created 28 Sep 21:28Z, tip [`e27a7c4e`] 3 Oct 22:39Z)". Evidence: `gh api repos/kasperolabs/silverscript-studio` → license MIT, created_at 2026-09-28T21:28:34Z. The tip is `e27a7c4ec9` at 2026-10-03T22:39:10Z.
12. HELD (in part; see U1): the Studio feature list is corroborated first-party outside X. The repo README L5 says "You write the rules (by hand, with a wizard, or by describing them to an AI that only speaks SilverScript)". L22 says "you fund it from your own wallet (Kasware or Kasla)". L71 says "the same one the Studio runs on mainnet". The live silverscriptstudio.com page shows Wizard / Describe to AI / Write by Hand and "put them on mainnet".
13. HELD: "Its 3 Oct covenant "DoorDash" demo page ([kasdash.html]…) is a demo, not an L1 product". Evidence: `https://silverscriptstudio.com/kasdash.html` returns 200, title "KasDash: a delivery order settled by a Kaspa covenant", `noindex`. The post id 2106350037680988279 decodes (snowflake, offline) to 2026-10-03T11:45:57Z, which matches "3 Oct". The "demo, not product" framing is the desk's, and it is correct.
14. HELD: "rusty-kaspa [#1140] (30 Sep, SDK v2.1.0 findings from mainnet) is open with no comments". Evidence: an issue, not a PR, by kasperolabs, created 2026-09-30T04:43:20Z. Title "SDK v2.1.0 findings from mainnet: createTransactions dust change on drains, npm package, docs"; state open, 0 comments.

**Argent (R L72, J L123): Telegram public embeds**
15. HELD: author, time and numbers of 16113. Evidence: `https://t.me/kasparnd/16113?embed=1` gives author "Ross Ku" (t.me/Ross_ku_963) in "Kaspa Core R&D (public)", 2026-09-29T22:56:38+00:00. Exact quotes:
   - "My router grew to 25–35 KB (a cancel cost ~0.05–0.07 KAS on TN10), so I split it into one actor per shape (2.4–8.5 KB)."
   - "A naive two-intent tx let a builder keep ~10 KAS in my tests. I added a hand-written positional rule (payout for input i at output i)."
   These are the author's own figures. The desk did not observe them, and the branch attributes them ("Ross Ku's notes … measured his router…").
16. HELD: IzioDev's reply 16114. Evidence: the embed gives author IzioDev, 2026-09-30T02:38:58+00:00. Exact quote: "for 1. and 2. the design is as intended, i see no issue here. 7. will be addressed soon (initially raised by Louis)". Points 1 and 2 in 16113 are the `co_spent()` presence gate and "An entry that observes token outputs but has no become block". This matches R "his points 1 and 2 (`co_spent()` gating, an entry with no `become`) are as designed".

**TN10 public API (R L51, J L39, S L11)**
17. HELD: the 9b744ab sentence matches the raw reads. Evidence: `sha256sum -c SHA256SUMS` in `api-0802/` → all 24 files OK. The 12 bodies' server `date` headers run from 06:02:37 to 06:03:26 GMT (08:02:37–08:03:26 CEST). All are HTTP/2 200 with `cf-cache-status: MISS`; `database.isSynced` true; `acceptedTxBlockTimeDiff` 1–4. Backends: 2.1.0 `82c70f33` ×8, 2.1.0 `b079c555` ×2, 2.0.1 `965d43fe` ×2, all `isSynced`/`isUtxoIndexed` true.
18. HELD: my own live reads match the mixed pool. 16 cache-busted GETs to `/info/health` at 08:02:50–08:03:06 CEST were all 200: 2.1.0 `82c70f33` ×9, 2.1.0 `b079c555` ×4 and 2.0.1 `965d43fe` ×3, all synced with UTXO index, diff 1–4.
19. HELD: "No ratio is claimed" and no api-tn10 answer is used as proof of payment. Evidence: R L51 keeps "An api-tn10 search is still not proof a payment landed. Read a synced node." J keeps the same sentence (2 hits on both main and branch). The results file says "Not proof any payment landed."
20. HELD: S L11 quotes the replaced 07:56 sentence verbatim. Evidence: the `0f5c5ea` R L51 sentence "Recheck 4 Oct 07:56:49 … No ratio is claimed." is a byte-exact substring of S at `9b744ab`.
21. HELD: the replaced 07:56 sentence was itself true. Evidence: raw `api/` holds 14 reads at 05:56:50–05:57:35 GMT, all 200 and MISS, synced, diff 1–4: 2.1.0 `b079c555`/`82c70f33` and 2.0.1 `965d43fe`.

**SNAPSHOT side claims (S L13, 07:59 row)**
22. HELD: kccs #36 appears in SNAPSHOT only. Evidence: `git grep` for `kccs/pull/36` gives 1 hit in S and 0 in R, J and A. Facts: draft, opened 2026-10-03T06:38:08Z by Curious-being99, head `d7809a17`; one file "Covenant v2", +12; no KCC number. This matches "a 12-line text idea, unnumbered".
23. HELD: "#991 head `77d9a2e8` … CI green; CHANGES_REQUESTED from IzioDev and biryukovmaxim stand; `blocked`" and "kastle #372 head `ddfaf373` (merge of main; only bot reviews; `blocked`)". Evidence: check-runs on 77d9a2e8 show 8 success. #991 mergeable_state `blocked`. #372 reviews are only coderabbitai[bot] and copilot-pull-request-reviewer[bot] (COMMENTED), comments only coderabbitai[bot], and it is `blocked`.
24. HELD: DOTK findings. Evidence: `git ls-remote https://github.com/supertypo/dotk-core 'refs/tags/v0.13*'` → `v0.13.1` tag object `9c81aff3` with `^{}` `02d2b3f283a4…`. `git ls-remote …/dotk-indexer` → `v1.1.0` `f80b4eb3` with `^{}` `1eda6586c315…`, and `v1.0.0` `90e9dce6` with `^{}` `c3965796629f…`. compare `c3965796...17ca993b` → ahead 1, so 17ca993b was the 2 Oct 09:45Z tip, not v1.0.0. dotk-indexer main is `ded471db46`.
25. HELD: credit checks. Evidence: kaspa-python-sdk #69, #77, #81 and #84 are all opened by smartgoo and merged. kccs #24 is opened by saefstroem, its only commit author is saefstroem, and reviewers include IzioDev. The `kcc-0012.md` Authors header lists @Saefstroem first and @IzioDev second.

**AGENTS.md (A L18, L19; S L12): read-only box checks at 08:04 CEST**
26. HELD: n0 process. Evidence: `ps -eo pid,ppid,ni,lstart,args` → pid 42988, started Sat Oct 3 21:47:00 2026, `/workspace/artifacts/kaspa-tn10/bin/kaspad --testnet --netsuffix=10 … --rpclisten=127.0.0.1:16210 …`. There is no `--utxoindex`, no `--archival` and no `--enable-unsynced-mining`.
27. HELD: n0 status. Evidence: the existing read-only `n0-status.py` at 08:04:53 CEST gives serverVersion 2.1.0, isSynced true, hasUtxoIndex false, virtualDaaScore 587610674. api-tn10 `/info/blockdag` right after gave 587610669 (Δ 5). The owner's 08:02:47 pair 587609591/587609592 is consistent.
28. HELD: "Datadir about 72G; `/` had 38G free". Evidence: `du -sh /workspace/kaspa-data-tn10-n0` → 72G. `df -h /` → 126G size, 83G used, 38G available.
29. HELD: miners. Evidence: `ps` shows six `kaspa-miner --testnet -s 127.0.0.1 -p 16210 -t 1 --mine-when-not-synced` (pids 49476, 49478, 49480, 49482, 49484, 49520), all nice 0, started 21:50:05, all children of 49473 `bash …/pool-miners-supervisor.sh` (also 21:50:05). `ls /tmp/pool-miners.HALT` → no such file.
30. HELD: no stale `--utxoindex` claim. A L18 now says "pruned, no `--utxoindex`". `git grep` for `hasUtxoIndex true` / `` `hasUtxoIndex` true `` gives 0 hits in R and J at the tip.
31. HELD: the `--enable-unsynced-mining` wording is accurate. That is a kaspad flag, and the kaspad command line lacks it (A L18 "no `--enable-unsynced-mining`"). `--mine-when-not-synced` is a kaspa-miner flag, and A L19 states it correctly.
32. HELD: handoff attributions. Evidence: HANDOFF.md L294–L295 ("2026-10-03 n0 disk-full + wipe/resync (TN10 ops; stp approved wipe 09:51 CEST)") record:
    - the 07:43 pruning-point move;
    - watchdog SIGINT at 07:53:46 and SIGSTOP at 07:56:04;
    - the datadir `rm -rf` at 09:54:49;
    - the new n0 at 09:54:57 "NO --utxoindex";
    - "supervisor 66227 SIGTERM (miners were already crash-looping on refused 16210)" at 09:52.
    This matches A L18 and L19.
33. HELD (as attribution): "Per TN10 ops, n0 was restarted 3 Oct 21:46 CEST after a box restore with its datadir intact (`ps` shows 21:47:00)". Evidence: the kaspad lstart is 21:47:00. System boot (`uptime -s`, `who -b`) was 2026-10-03 20:46:02, which is consistent with a box restore before the restart. The handoff log ends before then (mtime 3 Oct 20:47), so "datadir intact" rests on TN10 ops. The current 72G datadir and synced state agree with it. `start-all-after-reboot.sh` exists at the stated path.
34. HELD: the removed AGENTS text is kept as history or announced. The 2 Oct OOM survives in brief ("that OOM-killed n0 on 2 Oct"). Both rows link the old wording: "The 2 Oct wording of this row is in git history at [`4183b7a`]" and "Earlier halt history is in git history at [`4183b7a`]". The storm and halt detail is reachable at that pinned blob. S L12 announces the rewrite.

**Form, trims, leaks, merges**
35. HELD: master.json is canonical UTF-8 with 0 `\u` escapes. Evidence: byte-identical to `json.dumps(indent=2, ensure_ascii=False)+"\n"`; `count('\\u')` → 0 on main and on the tip.
36. HELD (apart from F1): no other trim. JSON note lengths, main → tip: TN10 public API 2064 → 2103, KCC20 reference 1306 → 2508, Argent 2861 → 3268, Third-party 26 Sep 773 → 1349. The old kcc20 head survives in J as "Earlier head 60064687" and in S L13. The Third-party url changed from the vertex relay to the first-party post, and S L13 announces it.
37. HELD: SNAPSHOT is newest first, there are no leaks, and nothing depends on `0c72511`.
    - Order: S L11 08:04 > L12 08:03 > L13 07:59 > L14 3 Oct 09:52.
    - Leaks: the diff scan of `+` lines found no emails, home paths, keys, seeds, reserve addresses, or the private stall-repo name. STP-KAS repo links on changed lines (KagenC, argent-xai, kaspa-master-file) are public and their counts equal main's. The TN10 pay-to address is unchanged from main (1 occurrence each). No private desk repo name is added.
    - `0c72511`: `git merge-base --is-ancestor 0c72511 9b744ab` → no. grep for its content markers gives 0.

## UNVERIFIABLE (4)

1. UNVERIFIABLE (X only): the text of @KasperoLabs [2103564787686793710] as quoted in R L89 / J L237 ("live on mainnet … Kasware, Kasla or Kastle (Kastle deposit only, signing "coming")"), and the text of the DoorDash post 2106350037680988279. I made no X calls. The owner's raw `x/fx-2103564787686793710.json` agrees with the quote. The id decodes offline to 2026-09-25T19:18:22Z, which matches "25 Sep 19:18Z". The hand/wizard/AI, Kasware/Kasla and mainnet parts are corroborated by the repo and site (HELD 12). The Kastle "deposit only, signing coming" part appears only on X.
2. UNVERIFIABLE (X only): the @kccforum 2106008195114381508 and @manyfest_ 2106012029358047445 post texts (R L62, J L81). Both are presented as "Posts, not a status change". The ids decode to 2 Oct 13:07:36Z and 13:22:50Z, which matches the stated times.
3. UNVERIFIABLE: "About 28.8 MH/s per TN10 watch (not measured by this desk)" (A L19). No TN10 watch source with that figure was found on the box. The row correctly labels it as attributed and unmeasured.
4. UNVERIFIABLE: "Per TN10 ops, they run at nice 19 only during storms" (A L19). This is TN10 ops' stated policy. Note that HANDOFF.md L297–L298 shows the 3 Oct post-resync plan starting `pool-miners-supervisor.sh` "at nice 19", outside a storm. The live miners are nice 0.

## Merge-tree and content contradictions (9b744ab vs each branch)

- **`master/sweep-2026-10-04` @ `eb784c6`:** conflict in SNAPSHOT-HISTORY.md only. README and master.json auto-merge, and the merged master.json is valid and canonical. Resolve by keeping the three build rows (08:04, 08:03, 07:59) above the sweep's 07:49 row.
  - kcc20-reference: the sweep does not touch the KCC20 row. Its S 07:49 row and prompt L56 say "`5b2a2312` (already on `build/kcc-last-call-2026-10-02`); main still pins `60064687`". That is historical text, true when written, and it becomes stale once this branch merges. There is no README/JSON contradiction.
  - kccs #36: the sweep says "Not a KCC" and "kept out of the KCC cell"; the build says "a 12-line text idea, unnumbered". These agree.
  - DOTK: both name v1.1.0 → `1eda6586` and v1.0.0 → `c3965796`. They agree.
  - api-tn10: the build cell says "No ratio is claimed", while the sweep's S 07:49 row lists per-read tallies (×12/×4, ×9/×7). See advisory A3.
- **`build/kcc12-revision-2026-10-03` @ `3682b21`:** conflicts in README.md (the adjacent KCC still open and KCC20 reference rows) and SNAPSHOT. kcc12 carries main's stale kcc20 pin `60064687`. On resolution, keep kcc12's KCC still open row and this branch's KCC20 row (`5b2a2312`).
- **`build/kachat-genesis-2026-10-03` @ `c68fab1`** (base `99ae962`, behind main): conflicts in README (TN10 public API row), master.json (`updated`, TN10 API note, KaChat catalog note) and SNAPSHOT. That branch needs a main merge first. On resolution, keep this branch's TN10 API text (08:02 recheck).
- **`build/kcc-last-call-2026-10-02` @ `3eb1bb9`** (base `99ae962`, behind main): conflicts in README (KCC still open, KCC20 reference), master.json (KCC still open, KCC20, Do not weld) and SNAPSHOT. Same kcc20 head `5b2a2312` on both sides, so there is no factual contradiction, only differing wording. That branch is the cancelled-audit branch.

## Advisory (not counted)

- **A1.** Argent R L72 / J L123: add "(his figures; not observed by the desk)" after the Ross Ku numbers. The attribution is already there, but the TN10 cost figure could read as desk-observed.
- **A2.** URL-period convention in J: L81 "…/commit/5b2a23124ef43730eca4f69248bc2866daf2c24c @kccforum" and L237 "…/rusty-kaspa/issues/1140 Not desk-tested" each need a period after the URL.
- **A3.** The sweep's S 07:49 row tallies (×12/×4 and ×9/×7) sit beside this branch's "No ratio is claimed". If both merge, consider wording them as "sample counts, not a pool ratio".
- **A4.** R L89 dropped "Via vertex [2103759384694185988]", while J L237 keeps "Earlier relay: vertex 26 Sep 08:11Z" without the link. Consider mirroring "Earlier relay: vertex [2103759384694185988]" in R.
- **A5.** The 07:59 row (S L13) still says "AGENTS.md node and miner rows untouched (held for TN10 ops)". That was true at `dd798d2` and is superseded by S L12. It's fine as history.
- **A6.** S L11 says "Task 6 (n0 reads) not run in this pass", while S L12 records the 08:02 read-only n0 check from a different pass. These are consistent ("in this pass"), but a reader may trip on it.
- **A7.** Open item 13: two private desk repo names remain on main. This branch did not add or remove any. Waiting on stp.
- **A8.** Box boot time 20:46:02 CEST vs the "21:46 restart" per TN10 ops: the hour differs from the boot, which is expected if kaspad was started an hour after the restore. Worth a word from TN10 ops if exact timing matters.

## Open content branches without a challenge note on their exact tip (listed only, not challenged)

`git for-each-ref refs/remotes/origin/{build,master,ask,grokbot}` after fetch. There are no `ask/` or `grokbot/` branches. "Open" means the tip is not an ancestor of main. "Covered" means a `challenge/*` note names that exact tip as reviewed. All tips are STP-KAS noreply commits.

| Branch | Tip (full) | Base (merge-base with main) | Tip date (CEST) | Ahead of main | Note |
| --- | --- | --- | --- | --- | --- |
| build/2026-10-02 | `0c72511fdc1a809fe177e0f267ee89eeea8fb230` | `99ae962` (behind main) | 2 Oct 20:26 | 1 | `challenge/build-2026-10-02` stops at `9f5d3ca`. The tip is the unowned `0c72511` (mentioned only as an advisory in other notes). |
| build/api-tn10-2026-10-02 | `50740fc15ddcdd1565bdb93a21902ebdac7240ac` | `99ae962` (behind main) | 2 Oct 20:35 | 2 | Cited as evidence in `challenge/build-2026-10-03`, never challenged. Contains `0c72511`. |
| build/kcc-last-call-2026-10-02 | `3eb1bb9895b5c7f5cdae8dc05207d1735b727fb9` | `99ae962` (behind main) | 2 Oct 20:18 | 1 | Cancelled-audit branch; only mentioned. |
| build/kachat-genesis-2026-10-03 | `c68fab10f39b249c38e5f21fab7b3deda8a74c89` | `99ae962` (behind main) | 3 Oct 08:07 | 1 | Not challenged. |
| build/kcc12-revision-2026-10-03 | `3682b2143cf1c76ae71791ac1a10bd431df424e0` | `4183b7a` (fast-forwards) | 3 Oct 17:34 | 2 | Not challenged. |
| build/spend-vision-2026-10-03 | `735d9e90470856a5013f5f25471fbd2d09699993` | `4183b7a` (fast-forwards) | 3 Oct 23:30 | 1 | Not challenged. |

These two are covered by this pass: `build/2026-10-04` @ `9b744ab` (this note) and `master/sweep-2026-10-04` @ `eb784c6` (Recheck in `challenge/sweep-2026-10-04`). Covered but still open: `build/2026-10-01` @ `fde0918` (base `57d6cca`, behind main), reviewed in `challenge/sweep-2026-10-01` with FAILED items and not merged.

## Recheck @ b255678 (4 Oct 2026, 08:20 CEST)

- **Tip reviewed:** `b255678d7ba44f043110c82399b55e3238f80845` ("Fix challenge bc048f6 on build/2026-10-04: keep main's 2 Oct api-tn10 sentence, sourced nice and hashrate, start times, advisories…", 08:13:47 CEST, STP-KAS noreply). It is a fast-forward on `9b744ab` and was unchanged at re-fetch before the push. origin/main `4183b7a` is an ancestor. **No main merge needed.**
- **Net vs main:** 4 files, +16/−12. Delta `9b744ab..b255678`: AGENTS.md 2/2 (L18, L19), README.md 2/2 (L72, L89), SNAPSHOT-HISTORY.md +2/−1 (new L11 08:13 row; L12 08:04 row amended), master.json 3/3 (J L81, L123, L237).
- **Recheck totals: 15 HELD · 1 FAILED · 0 UNVERIFIABLE.** The prior F1 is closed. The prior U3 (hashrate) and U4 (nice) are resolved to HELD.
- Box checks were read-only: `ps`, `/proc/stat`, `/proc/uptime`, `dmesg`, and `grep`/a Python parse of the kaspad, supervisor and miner logs. No process was touched.

### FAILED (1)

**RF1. FAILED (minor): the box boot time is stated as exact, but it has the same lag as `ps`.** A L18: "The box booted 3 Oct 20:46:02 CEST (`uptime -s`)." S L11 (08:13 row): "box boot 20:46:02 (`uptime -s`)". The same row correctly says `ps` start times run about 32 s late. `uptime -s`, `who -b` and `/proc/stat` btime are computed the same way as `ps` lstart: wall-clock now minus elapsed boot-clock time. So they carry the same lag.
What is going on: the box is a KVM guest (`dmesg`: "clocksource: Switched to clocksource kvm-clock", virtio_balloon). Its wall clock has gained about 33 s on its boot-time clock since kaspad started. Measured at 08:19 CEST: wall time elapsed since the log banner 21:46:28.507 is 37,993 s, while `ps -o etimes` for pid 42988 is 37,960 s, a 32.7 s gap. That fits a VM pause or a host clock resync that stepped the wall clock forward. Every btime-derived time (`ps` lstart, `uptime -s`) is therefore at least ~33 s late. The true boot was no later than about 20:45:29 CEST, and earlier if the clocks also diverged before 21:46.
Fix A L18: replace "The box booted 3 Oct 20:46:02 CEST (`uptime -s`)." with
> The box booted by about 20:45:29 CEST on 3 Oct (`uptime -s` shows 20:46:02, but it is derived like `ps` start times and lags the same way).
Fix S L11: replace "box boot 20:46:02 (`uptime -s`)" with "box boot by about 20:45:29 (`uptime -s` shows 20:46:02, same lag as `ps`)".

### HELD (15)

1. HELD: tip, fast-forward and size. `git merge-base --is-ancestor 9b744ab b255678` and `… origin/main b255678` are both true. `git diff --shortstat origin/main b255678` → "4 files changed, 16 insertions(+), 12 deletions(-)".
2. HELD: the prior F1 is fixed byte-exact. The 4183b7a R L51 substring "Recheck 2 Oct 07:57:01 … so more than one backend remains." (282 chars) appears exactly inside S L12 (the 08:04 row) after "Main's 2 Oct sentence, replaced in `dd798d2`, verbatim:" (Python substring test → True).
3. HELD: nice 0. A L19: "`ps -o nice` shows 0 for all six at 08:02 and 08:12". At 08:19:23 `ps -o pid,ni,lstart -C kaspa-miner` shows NI 0 for pids 49476, 49478, 49480, 49482, 49484 and 49520 (kaspad 42988 is also 0). This is consistent with the stated readings.
4. HELD: the nice-19 sourcing. "TN10 ops says nice 19 is used during storms" is attributed to TN10 ops. "The handoff log also shows a nice 19 plan for the miners after the 3 Oct resync, which was not a storm" matches HANDOFF.md. L294 is the heading "## 2026-10-03 n0 disk-full + wipe/resync (TN10 ops; stp approved wipe 09:51 CEST)". L297: "start-miners-when-synced.sh waiter (nice 19, starts pool-miners-supervisor.sh -> 6 miners to qzffl5 …)". L298: "n0-finish-resync.sh … starts pool-miners-supervisor.sh at nice 19". The row cites the log without line numbers; L297–L298 are the right lines.
5. HELD: the hashrate, recomputed read-only. "Current hashrate is: X Mhash/s" lines in `/tmp/kaspa-tn10-pool-miners/{pool,knsbot,gb001..gb004}.log` (Z timestamps), window 05:13:00Z–06:13:06Z (07:13:00–08:13:06 CEST): 2,166 lines, mean 4.509 Mhash/s per miner, ×6 = 27.05. Per-miner means are 4.49–4.52. The six lines at 06:13:06Z are 4.19 + 4.33 + 4.53 + 4.57 + 4.50 + 4.50 = 26.62. So "about 27 MH/s", "4.51 Mhash/s each" and "sum to 26.6" all hold. The stated count of 2,172 lines depends on the exact window edges (2,160 to 08:13:00, 2,166 to 08:13:06, 2,196 to 08:13:59); see advisory.
6. HELD: "28.8 MH/s" is gone from A and announced as dropped in S L11 ("The unsourced ~28.8 MH/s (TN10 watch) is dropped").
7. HELD: the kaspad start banner. `/workspace/kaspa-logs-tn10-n0/rusty-kaspa.log` L467215: "2026-10-03 21:46:28.507+02:00 [INFO ] kaspad v2.1.0". `stdout.log` L35901 shows the same banner at 21:46:28.506. The previous log line is 20:43:08 (SMT pruning), so the old node logged nothing from 20:43 to 21:46.
8. HELD: the miners' start time. `supervisor.log` L1–L6: "2026-10-03T21:49:33+02:00 start pool 49476" … "start gb004 49520". The pids match the six live `ps` pids, and `ps` shows 21:50:05 (32 s later).
9. HELD: "`ps` start times on this box run about 32 s late". The gap is 32 s for kaspad (21:46:28 vs 21:47:00) and 32 s for the miners (21:49:33 vs 21:50:05), and the direct measurement in RF1 is 32.7 s. Keep the claim, with the mechanism in RF1.
10. HELD: "(his figures; not observed by the desk)" follows Ross Ku's numbers in R L72 and J L123.
11. HELD: the two JSON periods. J L81 reads "…/commit/5b2a23124ef43730eca4f69248bc2866daf2c24c. @kccforum" and J L237 reads "…/rusty-kaspa/issues/1140. Not desk-tested".
12. HELD: the vertex relay link is restored. R L89 has "Earlier relay: vertex [2103759384694185988](https://x.com/KaspaScopio/status/2103759384694185988)" and J L237 has "Earlier relay: vertex https://x.com/KaspaScopio/status/2103759384694185988 (26 Sep 08:11Z)". This is the same id main had.
13. HELD: JSON form and no trims. master.json is canonical (`json.dumps(indent=2, ensure_ascii=False)+"\n"` byte-identical), with 0 `\u` and 347 notes. Note lengths: KCC20 2508 → 2509, Argent 3268 → 3308, Third-party 1349 → 1405. The AGENTS rows grew (node 1717 → 1958 chars, miners 871 → 1238). The only removals are "28.8 MH/s" and "only during storms", both reworded and announced in S L11.
14. HELD: SNAPSHOT order, leaks and `0c72511`. The order is S L11 08:13 > L12 08:04 > L13 08:03 > L14 07:59 > L15 3 Oct 09:52. On `+` lines there are no emails, home paths, keys, seeds, reserve addresses, or the private stall-repo name; the STP-KAS links (KagenC, argent-xai, kaspa-master-file) and the TN10 pay-to address are unchanged from main. `0c72511` is not an ancestor.
15. HELD: merge-tree vs `master/sweep-2026-10-04` @ `373f1297747af073aec855bfe28f2277222c5ce9` (its current tip, which applies the sweep RF1 wording exactly: "…); the PR body ends "It not a code it only a text""). SNAPSHOT-HISTORY.md conflicts only at the top rows; README and master.json auto-merge, and the merged JSON stays canonical. Resolve by keeping the build rows (08:13, 08:04, 08:03, 07:59) above the sweep's 07:49 row. No content contradiction.

### Advisory (not counted)

- Give the exact window for the hashrate line count, e.g. "07:13:00–08:13:06 CEST, 2,166 lines". The stated 2,172 is not reproduced exactly for any natural window edge. The mean and totals hold either way.
- The prior advisories A3 (tallies vs "No ratio") and A7 (open item 13) are unchanged.

## Recheck @ 5890d67 (4 Oct 2026 08:23 CEST)

Reviewed tip `5890d676ece80008d786dce4c057cfbb403793a7`. It adds `b4fc8af` (fix) and `5890d67` (SNAPSHOT row) on top of `b255678`, noreply identity only. The diff is AGENTS.md +2/−2 and SNAPSHOT-HISTORY.md +2/−1. Main `4183b7a` is an ancestor, and the net diff against main is 4 files, +17/−12. master.json is unchanged and canonical with 0 escapes.

- HELD RF1: AGENTS L18 @ b4fc8af says "The box booted by about 20:45:29 CEST on 3 Oct (`uptime -s` shows 20:46:02, but it is derived like `ps` start times and lags the same way)." That is the exact fix wording.
- HELD RF1: the 08:13 SNAPSHOT row says "box boot by about 20:45:29 (`uptime -s` shows 20:46:02, same lag as `ps`)".
- HELD (advisory applied): the hashrate window is stated as "from 07:13:00 to 08:13:06 CEST … (2,166 lines in that window)", which matches my parse.
- HELD (SNAPSHOT): the new 08:21 row is on top (08:21 > 08:13 > 08:04 > 08:03 > 07:59) and describes the fix accurately.

Totals at 5890d67: HELD 19 · FAILED 0 · UNVERIFIABLE 0. No open FAILED. It can merge with stp's OK. Against master/sweep-2026-10-04 @ 373f129, only SNAPSHOT conflicts; whichever lands second needs a main merge and a recheck. No X calls. No public reply.

# Challenge: master/sweep-2026-10-04

- **Tip reviewed:** `dd8f945eb482b6d9dee6bfae481e3c08205a90aa` ("Fill abbeaad/8abbc2e into the 4 Oct Build prompt.", 07:50 CEST). Unchanged at fetch, 4 Oct 07:56 CEST.
- **Chain:** tip `dd8f945` → snapshot `8abbc2eb54eb42dc330fb7433439a837e2aca887` → content `abbeaad85a0910fccf5c156d8d2f94796f293ce9` → main `4183b7a9c4206a64ab334bdefbcb6eb3c28545c4`. All three are STP-KAS noreply commits.
- **origin/main is an ancestor** (`git merge-base --is-ancestor origin/main dd8f945` → 0). The branch fast-forwards. **No main merge needed.**
- **Files:** README.md 3/3 (L54, L75, L77), SNAPSHOT-HISTORY.md +1 (L11), master.json 4/4 (L4, L57, L141, L153), prompts/grok-build-2026-10-04.md +99.
- **Totals: 28 HELD · 3 FAILED · 2 UNVERIFIABLE.** Advisory items are listed at the end and are not counted.
- Owner report `report-2026-10-04.md` and raw `kaspa-master-watch/raw/2026-10-04/` were used as evidence only. Every pin below was re-read on GitHub or live.
- Abbreviations: R = README.md, J = master.json, S = SNAPSHOT-HISTORY.md, P = prompts/grok-build-2026-10-04.md. All at `dd8f945`.

## FAILED (3)

**F1. FAILED: dotk-core tag v0.13.1 is omitted.** R L75 / J L141 / S L11 / P L51 at `abbeaad`/`dd8f945`: "two commits past tag v0.13.0 `5a0e6ae1`" and R L75 "Tag v0.13.0 still equals `5a0e6ae1` (1 Oct 23:06Z) has no `.sil` and no compiler". P L14: "dotk-core main ahead of tag ≠ new release".
Evidence: `gh api repos/supertypo/dotk-core/git/refs/tags` → `refs/tags/v0.13.1 tag 9c81aff30c`. The tag object peels to commit `02d2b3f283` with tagger date 2026-10-03T14:39:15Z. Cargo.toml at `7ea661e2` reads `version = "0.13.1"`. There is no GitHub release (`/releases` is empty). Main `7ea661e2` is therefore **one** commit past v0.13.1. The count "two past v0.13.0" is arithmetically true (compare v0.13.0...7ea661e2 → ahead 2), but it hides the newer tag. The R L75 sentence is also ungrammatical.
Fix R L75 (mirror the same facts in J L141 and S L11), replacing from "[dotk-core]… main" through "no compiler.":
> [dotk-core](https://github.com/supertypo/dotk-core) main [`7ea661e2`](https://github.com/supertypo/dotk-core/commit/7ea661e2) (3 Oct 16:27Z) is one commit past annotated tag v0.13.1 (→ [`02d2b3f2`](https://github.com/supertypo/dotk-core/commit/02d2b3f2), 3 Oct 14:39Z, "Hold pre-flight to each input's compute budget, as consensus does"; Cargo.toml 0.13.1; no GitHub release). v0.13.0 still equals [`5a0e6ae1`](https://github.com/supertypo/dotk-core/commit/5a0e6ae10162) (1 Oct 23:06Z). MIT. Neither the tags nor main has a `.sil` or a compiler.

Fix S L11: "dotk-core main → `7ea661e2` (one commit past annotated tag v0.13.1 `02d2b3f2`, 3 Oct 14:39Z, per-input compute-budget pre-flight; no GitHub release)."
Fix P L51: "dotk-core main → `7ea661e2` (3 Oct 16:27Z; one commit past annotated tag v0.13.1 `02d2b3f2` (3 Oct 14:39Z, per-input compute-budget pre-flight; no GitHub release); v0.13.0 still `5a0e6ae1`)".
Fix P L14: replace "dotk-core main ahead of tag ≠ new release" with "dotk-core tag v0.13.1 ≠ a GitHub release".

**F2. FAILED: dotk-indexer v1.1.0 is missed, and the tip is stale, in the touched DOTK row.** R L75 / J L141 at `abbeaad`: "[supertypo/dotk-indexer] v1.0.0 [`17ca993b`] (created 2 Oct 09:19Z, release 09:43Z, tip 09:45Z; AGPL-3.0-only; 0 issues, 0 pulls, discussions disabled)". The same row now says dotk-sdk took "the indexer's 1.1.0", so the row contradicts itself.
Evidence: `gh api repos/supertypo/dotk-indexer/releases` → `v1.1.0 2026-10-03T14:12:23Z` (tag → `f80b4eb3fe`; the release body adds `GET /v1/history` and `historySeq`/`key`/`historyEpoch`) and `v1.0.0 2026-10-02T09:43:08Z`. Main is `ded471db46` (2026-10-03T23:48:23Z), 2 commits and 23 files past `17ca993b`. These still hold: 0 issues, 0 PRs, discussions off, AGPL-3.0-only, genesis/mainnet.json at `ded471db` version 6 with registry `ee2128c0…`.
Fix R L75 (mirror in J L141 with the plain-URL form J uses):
> The indexer is public. [supertypo/dotk-indexer](https://github.com/supertypo/dotk-indexer) v1.1.0 [`f80b4eb3`](https://github.com/supertypo/dotk-indexer/commit/f80b4eb3fe) (release 3 Oct 14:12Z: new `GET /v1/history`, `historySeq`/`key`/`historyEpoch`; tip [`ded471db`](https://github.com/supertypo/dotk-indexer/commit/ded471db46) 3 Oct 23:48Z); v1.0.0 [`17ca993b`](https://github.com/supertypo/dotk-indexer/commit/17ca993bec66) (created 2 Oct 09:19Z, release 09:43Z). AGPL-3.0-only; 0 issues, 0 pulls, discussions disabled.

Optionally add to S L11 and the P table: "dotk-indexer release v1.1.0 (3 Oct 14:12Z; tip `ded471db`)".

**F3. FAILED: "No new releases" is false.** P L70 at `dd8f945`, and the owner report: "Key heads hold: … rusty master/dagknight. No new releases."
Evidence: in the window (since the 3 Oct sweep, ~05:23Z), dotk-indexer published GitHub release v1.1.0 at 2026-10-03T14:12:23Z, and dotk-core created annotated tag v0.13.1 at 14:39:15Z (see F1 and F2).
Fix P L70 (and the report): replace "No new releases." with
> New in the window: dotk-indexer release v1.1.0 (3 Oct 14:12Z) and dotk-core tag v0.13.1 (14:39Z, no GitHub release). No other watched repo released.

## HELD (28)

1. HELD: tip, chain and ancestry. Evidence: `git rev-parse origin/master/sweep-2026-10-04` → `dd8f945e…`. Parents: dd8f945 → 8abbc2e → abbeaad → 4183b7a. `merge-base --is-ancestor origin/main` → yes. P L42: "content [`abbeaad`] … snapshot link [`8abbc2e`]" matches the real SHAs.
2. HELD: J L4 `updated` 2026-10-03 → "2026-10-04". This is the only other J line changed.
3. HELD: #991 head. R L54 / J L57 / S L11 / P L48: "head [`77d9a2e8`] (3 Oct 08:58Z)". Evidence: `gh api repos/kaspanet/rusty-kaspa/pulls/991` → head `77d9a2e80f`, committed 2026-10-03T08:58:41Z (10:58 CEST).
4. HELD: "Four commits after [`2e05b7cd`]: raise the safe max address count, rename `by_spk`→`from_spk`, move the cursor-is-first-address check to the RPC layer, and make `start_address` optional" (R L54). Evidence: compare `2e05b7cd...77d9a2e8` → ahead_by 4: `f4c4c407` (ADDRESS_COUNT 1,000→5,000), `d492104d` (by_spk→from_spk), `3452e75a` (cursor check moved to the RPC layer), `77d9a2e8` (optional start_address).
5. HELD: "is not merged; the CHANGES_REQUESTED reviews stand and GitHub says `blocked`" (R L54; P L48 "Still open / `blocked`"). Evidence: state open, draft false, merged false, mergeable_state `blocked`. The latest reviews still stand: IzioDev CHANGES_REQUESTED 2026-08-25T09:09:58Z and biryukovmaxim 2026-09-11T10:01:13Z. There are no reviews or comments since 3 Oct.
6. HELD: "safe mode caps the address count and page size instead ([`service.rs` at `77d9a2e8`])" (R L54). Evidence: `rpc/service/src/service.rs` at 77d9a2e8 still has the address-count cap (L850) and the page-size cap (L853). See advisory A2 about the missing anchor.
7. HELD: kastle #372. R L77 / J L153 / S L11 / P L49: "open, head [`ddfaf373`] (3 Oct 15:02Z, merge of main into the PR …)". Evidence: `gh api repos/forbole/kastle/pulls/372` → open, head `ddfaf3730c`. The commit has parents `137a1d4d` and `0d2acde4` (main), committed 2026-10-03T15:02:12Z.
8. HELD: "after UAT fix pulls #373–#375 and #377" (R L77). Evidence: #373, #374, #375 and #377 merged 2 Oct 16:31–16:40Z. #376 closed unmerged and is correctly left out.
9. HELD: dotk-sdk. R L75 / J L141 / P L50: "main [`42ee5124`] (3 Oct 14:13Z, "The API description is the indexer's 1.1.0") follows [`c9194976`]". Evidence: main `42ee51248a`, 2026-10-03T14:13:20Z, with that message. Its parent is `c919497661`.
10. HELD: "API description = indexer **1.1.0**" (P L50; S L11 "indexer API description 1.1.0"). Evidence: `src/generated/openapi.json` at 42ee5124 has `info.version` "1.1.0". The package `@dotk/sdk` is still 2.1.0.
11. HELD (literal facts only; see F1 for the omission): dotk-core main `7ea661e2` (3 Oct 16:27Z) and its two commits. Evidence: main `7ea661e2a4`, 16:27:41Z. compare v0.13.0...7ea661e2 → ahead 2: `02d2b3f2` (14:39:14Z, "Hold pre-flight to each input's compute budget, as consensus does") and `7ea661e2` (budget-comment scope and pinned budget test).
12. HELD: "Tag v0.13.0 still equals `5a0e6ae1`", MIT, no `.sil` and no compiler (R L75). Evidence: `refs/tags/v0.13.0` is a lightweight tag at commit `5a0e6ae101`. LICENSE is MIT. The trees at 5a0e6ae1 and 7ea661e2 contain no `.sil` and no compiler crate.
13. HELD: api-tn10 is worded as one sample. S L11: "api-tn10 health sample: 200, diff 2, kaspad **2.1.0**"; P L52: "(one sample)". Evidence: owner raw `api-tn10-health.json` shows 2.1.0, p2p `b079c555`, diff 2. My own reads at 07:53:33–39 CEST (16 cache-busted GETs to `https://api-tn10.kaspa.org/info/health`) were all 200: kaspad 2.1.0 (p2p `82c70f33`) ×12 with diff 1–4, and 2.0.1 (p2p `965d43fe`) ×4. No 2.0.0 was seen. The pool is mixed, and the branch does not claim otherwise.
14. HELD: no api-tn10 answer is treated as proof of payment. P L14: "api-tn10 200 ≠ proof a payment landed". No `+` line uses api-tn10 for a payment.
15. HELD: Kas-Smiths "48/378/113 post 402" (S L11; P Per-source). Evidence: live read gives 48 topics, 378 posts, 113 users, latest post 402.
16. HELD: KaChat "tip `00d49193`" (S L11; P L70). Evidence: tip `00d49193e4`, 2026-10-04T02:07Z (04:07 CEST). It is only in Skipped/notes, not added to the master.
17. HELD: kcc20-reference "`5b2a2312` (already on `build/kcc-last-call-2026-10-02`); main still pins `60064687`" (S L11; P L56). Evidence: PR #1 head `5b2a23124e` (2 Oct 13:45Z). That SHA is present on origin/build/kcc-last-call-2026-10-02 (`3eb1bb9`) and absent from main. Main still pins `60064687`. See advisory A4.
18. HELD: "research.kas.pa: newest still topic 522 (8 Sep)" (P Per-source). Evidence: `research.kas.pa/latest.json` max topic id is 522.
19. HELD: "Key heads hold: vprogs master/RC, silverscript, kccs, argent, x402, OpenMiner, tictactoe, rusty master/dagknight" (P L70, first part). Evidence: live heads are `f9b84a86`, `055ae28a`, `3ed97333`, `411b41bc`, `b312deda`, `cb769b17`, `ca5cee59`, `533e8a55`, `01b532e8` and `ad45e241`. Each is already pinned in J at the tip.
20. HELD: no revert or trim of main text. Evidence: `git diff --numstat origin/main dd8f945` shows only the rows listed above. Semantic diff: in each changed cell only the superseded pin sentence is replaced. JSON note lengths, main → branch: `Not live` 2369 → 2515, `DOTK .k names` 5293 → 5488, `Wallets and KCC-20` 1176 → 1234. All grew; none shrank.
21. HELD: yesterday's merged build, sweep and x402 text is intact. Evidence: no line outside R L54/L75/L77 and J L4/L57/L141/L153 changed, and S only gained a row. The old #991 fact survives as "Four commits after `2e05b7cd`" and in the 3 Oct SNAPSHOT rows. The x402 and api-tn10 advisory text from `d554466` is untouched.
22. HELD: master.json is canonical UTF-8 with 0 `\u` escapes. Evidence: the file is byte-identical to `json.dumps(obj, indent=2, ensure_ascii=False) + "\n"`; `grep -c '\\u'` → 0; 337 rows on both sides, none added or removed.
23. HELD: SNAPSHOT is newest first at the top. Evidence: the new S L11 "2026-10-04 07:49" sits above S L12 "2026-10-03 09:52". Older out-of-order pairs are pre-existing on main (advisory A6).
24. HELD (except for the F1/F2 items): the prompt matches the README. P L48–L52 agree with R L54/L75/L77 and S L11 on #991, #372, dotk-sdk, dotk-core and api-tn10.
25. HELD: no leaks on `+` lines. Evidence: diff `origin/main..dd8f945` scanned for names, emails, home paths, keys, seeds, reserve addresses and the private stall-repo name. All clean. "Seeds 0..32" is main's existing test text. Nothing new adds private desk repo names.
26. HELD: no dependence on the unowned commit `0c72511`. Evidence: `git merge-base --is-ancestor 0c72511 dd8f945` → no. grep at the tip for `write_var_bytes`, `48d8bcc2`, "local KIP-20 recompute" and `0c72511` finds 0 hits. `0c72511` remains only on `build/2026-10-02` and `build/api-tn10-2026-10-02`.
27. HELD: only the four declared files are touched. `abbeaad` changes R and J and adds P; `8abbc2e` adds the S row; `dd8f945` fills the SHAs into P. No other path is touched.
28. HELD: factcheck. `factcheck.py <tip worktree> --base origin/main --changed-only` → OK 197 · WARN 14 · FAIL 26. The 26 FAILs are the json non-ASCII convention clash with main's canonical UTF-8 form and are not counted. The 14 WARNs are false positives on dispatch tags and cross-repo hashes.

## UNVERIFIABLE (2)

1. UNVERIFIABLE: "X spend ~$0.16 (credits $4.27→$4.11)" (S L11; P Per-source). The only source is the owner's raw `x-summary.json`, which agrees. No X calls were made in this pass (rule).
2. UNVERIFIABLE: X coverage in P Per-source, L64–L69 ("X core … 15 posts", "X community … 10 posts", KasperoLabs DoorDash demo, "core_replies trial … added_to_master: 0", KaspaScopio). These are X-only. Nothing from them was added to R or J.

## Advisory (not counted)

- **A1. Carried-over 3 Oct advisories are NOT applied.** The branch does not claim them, so they are not counted as FAILED:
  - J L117 still reads "…/commit/533e8a55 Prior note" with no period. Fix: "…/commit/533e8a55. Prior note".
  - The 3 Oct sweep row S L16 still says "the pool also served 2.1.0" with no 2.0.1. Fix: "the pool also served 2.1.0 and 2.0.1". My 07:53 CEST reads still see 2.0.1 (p2p `965d43fe`).
  - J L261 research.kas.pa note still reads "…existing-kaspa-privacy.md Topics 295" with no period after the olafweller URL. Fix: "…existing-kaspa-privacy.md. Topics 295".
  - J L57 still reads "commit/03dd516c Not merged". Fix: "commit/03dd516c. Not merged". (Leftover from the build advisory.)
  - S L16 and the 3 Oct prompt still say "six D-Stacks review comments". Fix: "six review-thread replies by D-Stacks on his own PR (#991)".
- **A2.** R L54 / J L57 dropped the `#L850-L853` anchor. The lines are unchanged at 77d9a2e8. Suggest `blob/77d9a2e8/rpc/service/src/service.rs#L850-L853`.
- **A3.** api-tn10 wording could add the pool mix: "one sample ~07:45 (2.1.0, p2p b079c555); at 07:53 CEST the pool served 2.1.0 (p2p 82c70f33) and 2.0.1 (965d43fe)".
- **A4.** kcc20-reference#1 head `5b2a2312` (2 Oct 13:45Z) is recorded only on the cancelled-audit branch `build/kcc-last-call-2026-10-02`. Main still pins `60064687` (27 Sep). Recommend recording the new head on main via a sweep.
- **A5. Open item 13:** two private desk repo names remain on main (R L67, J vprogs note). This branch did not introduce them. Waiting on stp.
- **A6.** The pre-existing out-of-order SNAPSHOT pairs (S L33/34, L159/160, L167–171, L199/200) are on main, not from this branch.

## Recheck @ eb784c6 (4 Oct 2026, 08:11 CEST)

- **Tip reviewed:** `eb784c67f9c6115ed3f8430bc626c57249461030` ("Fix 4 Oct challenge F1-F3 and carried advisories…", 08:03:57 CEST, STP-KAS noreply). It is a plain push on `dd8f945` (`git merge-base --is-ancestor dd8f945 eb784c6` → true) and still fast-forwards from main `4183b7a`. **No main merge needed.**
- **Delta `dd8f945..eb784c6`:** README 4/4 (L54, L67, L75, L77), SNAPSHOT 2/2 (L11, L16), master.json 6/6 (J L57, L105, L117, L141, L153, L261), prompts/grok-build-2026-10-03.md 3/3, prompts/grok-build-2026-10-04.md 9/7.
- **Recheck totals: 17 HELD · 1 FAILED · 1 UNVERIFIABLE.** Prior FAILED items F1, F2 and F3 are closed.

### Correction to this note's first pass (our error)

The first pass got two things wrong, both in F2. The old lines above stay as written.
- **`f80b4eb3` is not a commit.** It is the v1.1.0 **tag object**. `gh api repos/supertypo/dotk-indexer/commits/f80b4eb3fe` → HTTP 422 "No commit found", so the F2 fix link `…/commit/f80b4eb3fe` would 404. `git ls-remote https://github.com/supertypo/dotk-indexer` → `f80b4eb3fe89… refs/tags/v1.1.0` and `1eda6586c315… refs/tags/v1.1.0^{}`. The tag points to commit `1eda6586` ("Serve the whole history as a feed, version 1.1.0", 2026-10-03T14:12:13Z).
- **`17ca993b` is not v1.0.0.** F2 carried main's "v1.0.0 [`17ca993b`]" into its fix wording. `git ls-remote` → `90e9dce6… refs/tags/v1.0.0` and `c3965796629f… refs/tags/v1.0.0^{}` (commit 2026-10-02T09:40:19Z). compare `c3965796...17ca993b` → ahead 1, so `17ca993b` (09:45:15Z) was the main tip, not the tag.
- F1 was right. `git ls-remote https://github.com/supertypo/dotk-core 'refs/tags/v0.13*'` → `9c81aff30c18… refs/tags/v0.13.1` (tag object) and `02d2b3f283a4… refs/tags/v0.13.1^{}`; v0.13.0 is lightweight at `5a0e6ae101…`.
- **Corrected F2 fix wording** (this is what `eb784c6` now carries):
  > The indexer is public. [supertypo/dotk-indexer](https://github.com/supertypo/dotk-indexer) v1.1.0 (annotated tag on commit [`1eda6586`](https://github.com/supertypo/dotk-indexer/commit/1eda6586c3); release 3 Oct 14:12Z: new `GET /v1/history`, `historySeq`/`key`/`historyEpoch`; tip [`ded471db`](https://github.com/supertypo/dotk-indexer/commit/ded471db46) 3 Oct 23:48Z); v1.0.0 (annotated tag on commit [`c3965796`](https://github.com/supertypo/dotk-indexer/commit/c396579662); release 2 Oct 09:43Z; repo created 09:19Z). AGPL-3.0-only; 0 issues, 0 pulls, discussions disabled.

### FAILED (1)

**RF1. FAILED (minor): the kccs #36 quote is attributed to the file.** S L11 at `eb784c6`: "kccs draft [#36] [`d7809a17`] (Curious-being99, 3 Oct 06:38Z) "Covenant v2": one 12-line plain-text file (public/private/verifiable covenant idea; no KCC number, preamble or status; "It not a code it only a text")". The file `Covenant v2` at `d7809a17` has 12 lines and does **not** contain that sentence. It is the last line of the PR **body** (`gh api repos/kaspanet/kccs/pulls/36 --jq .body`).
Fix S L11: replace `; "It not a code it only a text")` with `); the PR body ends "It not a code it only a text"`.

### HELD (17)

1. HELD: tip, plain push and fast-forward from main (see header).
2. HELD: F1 fixed in R L75, J L141, S L11, P L51 and P L14. The text now reads "one commit past annotated tag v0.13.1 (on commit [`02d2b3f2`], 3 Oct 14:39Z, …; Cargo.toml 0.13.1; no GitHub release)", "v0.13.0 still equals [`5a0e6ae1`]" and "Neither the tags nor main has a `.sil` or a compiler", with the grammar fixed. P L14 reads "dotk-core tag v0.13.1 ≠ a GitHub release". Evidence: the ls-remote output above; `gh api repos/supertypo/dotk-core/releases` → 0.
3. HELD: F2 fixed in R L75 and J L141 with the peeled commits `1eda6586` and `c3965796`, tip `ded471db`, AGPL-3.0-only, 0 issues, 0 pulls, discussions disabled. dotk-indexer `created_at` is 2026-10-02T09:19:45Z; the v1.0.0 release was published 09:43:08Z and v1.1.0 at 2026-10-03T14:12:23Z. Also added to S L11 and P L53.
4. HELD: F3 fixed in P L72 and the report L37: "New in the window: dotk-indexer release v1.1.0 (3 Oct 14:12Z) and dotk-core tag v0.13.1 (14:39Z, no GitHub release). No other watched repo released." Evidence: I re-scanned releases published after 2026-10-03T05:23Z across 18 watched repos: RunOnFlux/kaspa-core, argent, kcc20-reference, vprog-tictactoe, kaspa-x402, openminer-reference, kastle, kccs, kips, rusty-kaspa, silverscript, vprogs, dotk-core, dotk-sdk, dotk-sdk-tx, kaspium_wallet, KaChat and dotk-indexer. The only release is dotk-indexer v1.1.0. dotk-core v0.13.1 is accurately called a tag with no release.
5. HELD: the carried URL periods are applied. J L57 "…/commit/03dd516c. Not merged", J L117 "…/commit/533e8a55. Prior note", J L261 "…existing-kaspa-privacy.md. Topics 295" (semantic diff shows each as a new sentence break).
6. HELD: the service.rs anchor is restored. R L54 links "[`service.rs` L850-853 at `77d9a2e8`](…/blob/77d9a2e8/rpc/service/src/service.rs#L850-L853)" and J L57 mirrors it. At 77d9a2e8, L850 is the address-count cap and L853 the page-size cap (first-pass HELD 6).
7. HELD: #991 wording. S L16 and the 3 Oct prompt L69/L78 now say "six review-thread replies by D-Stacks on his own PR". The old phrase "six D-Stacks review comments" has 0 hits left in S, R, J and the 3 Oct prompt.
8. HELD: S L16 "(multi-backend; one sample; the pool also served 2.1.0 and 2.0.1)". 2.0.1 `965d43fe` was seen in my reads on 4 Oct and in 3 Oct reads.
9. HELD: R L67 / J L105 "The PR body parks a red repro at `zk/aggregate-prover/tests/committed_gap_receipt_miss.rs.disabled`; that file is not in the tree at `b32e92de` or `055ae28a`". Evidence: the vprogs #169 body ends "The red repro for the recovery PR is parked at zk/aggregate-prover/tests/committed_gap_receipt_miss.rs.disabled." #169 head is `b32e92de` and release-candidate is `055ae28a`. Recursive trees at both (not truncated) have only `zk/aggregate-prover/tests/committed_gap_retry.rs`.
10. HELD: kastle #357 "closed unmerged (1 Oct 13:44Z)" (R L77, J L153, S L16, 3 Oct prompt). Evidence: closed_at 2026-10-01T13:44:47Z, not merged.
11. HELD: "#373–#375 and fee-model test pull #377, all merged 2 Oct". Evidence: #373, #374 and #375 are titled "fix(…): UAT logic fixes — …" and merged 16:31:13Z, 16:31:36Z and 16:31:59Z. #377 is "test(swap): fee-model test + fee summary component (post-netting)", merged 16:40:07Z. #376 (the earlier fee-model test) closed unmerged.
12. HELD: "Only bot comments and reviews (CodeRabbit, Copilot); GitHub says `blocked`". Evidence: #372 reviews come only from coderabbitai[bot] and copilot-pull-request-reviewer[bot], issue comments only from coderabbitai[bot], and mergeable_state is `blocked`.
13. HELD: kccs #36 placement and facts (apart from RF1). It appears in S L11 and P L50 only; README and JSON have 0 hits. It is a draft at head `d7809a17adc5…`, opened by Curious-being99 on 2026-10-03T06:38:08Z, title "Introduce initial draft for Covenant v2", with one file `Covenant v2` (+12) and no KCC number, preamble or Status line.
14. HELD: the api-tn10 mix wording in S L11 and P L54. "~07:46: 200, diff 2, kaspad 2.1.0 (p2p `b079c555`)" matches the owner raw. "the challenger's 16 reads at 07:53 CEST gave 2.1.0 (p2p `82c70f33`) ×12 and 2.0.1 (p2p `965d43fe`) ×4" matches this note's HELD 13. It is worded as samples, and no line uses api-tn10 as payment proof.
15. HELD: JSON canonical form and no trims. master.json is byte-identical to `json.dumps(indent=2, ensure_ascii=False)+"\n"`, with 0 `\u` and 347 notes. Note lengths dd8f945 → eb784c6: Not live 2515 → 2617, yellow-paper note 12066 → 12219, tictactoe 2248 → 2249, DOTK 5488 → 5736, Wallets 1234 → 1359, research.kas.pa 966 → 967. All grew; the replaced fragments are only the superseded pins.
16. HELD: no leaks and no `0c72511`. STP-KAS repo links on changed lines (dagknight-test-grok, kns-tn10-testing, kns-dotk, tn10-vprogs-stress-findings, tn10-vprogs-round7-ideas, kaspa-master-file) are public and their counts equal `dd8f945`'s. "private key" is main's existing tictactoe text. Neither the private stall-repo name nor any new private desk repo name appears. `0c72511` is not an ancestor, and its content markers give 0 hits.
17. HELD: no contradiction with `build/2026-10-04` @ `9b744ab`.
    - kcc20-reference: the sweep leaves the KCC20 row alone. Its S 07:49 / P L56 "main still pins `60064687`" is dated history.
    - kccs #36: the sweep's "Not a KCC" agrees with the build's "a 12-line text idea, unnumbered".
    - DOTK: identical peeled SHAs on both branches.
    - Merge: `git merge-tree` conflicts only in SNAPSHOT (keep the build's 08:04/08:03/07:59 rows above the sweep's 07:49 row). README and JSON auto-merge, and the merged JSON stays canonical.

### UNVERIFIABLE (1)

1. UNVERIFIABLE: "this desk's 16 at 07:59 CEST gave the same two ×9 and ×7, all 200" (S L11, P L54). No raw for an owner 07:59 read was found on the box. `kaspa-master-watch/raw/2026-10-04/` has only the 07:45 single sample, and `scratch/build-2026-10-04/api*/` are the Build bot's 07:56 and 08:02 runs. The mixed pool itself is HELD by three independent read sets.

### Advisory (not counted)

- The per-read tallies (×12/×4, ×9/×7) sit beside `build/2026-10-04`'s "No ratio is claimed". Consider adding "sample counts, not a pool ratio".
- Open item 13 is unchanged: the two private desk repo names remain on main. Waiting on stp.

## Recheck @ 373f129 (4 Oct 2026 08:14 CEST)

Reviewed tip `373f1297747af073aec855bfe28f2277222c5ce9`, one commit on top of `eb784c6`, noreply identity only. The diff is SNAPSHOT-HISTORY.md +1/−1. Main `4183b7a` is an ancestor. master.json is unchanged and canonical with 0 escapes.

- HELD RF1: SNAPSHOT L11 @ 373f129 now reads `(… no KCC number, preamble or status); the PR body ends "It not a code it only a text".` This matches the fix.

Totals at 373f129: HELD 18 · FAILED 0 · UNVERIFIABLE 1 (the owner's 07:59 tally; its RUNBOOK now requires saving raw bodies). No open FAILED. It can merge with stp's OK. No X calls. No public reply.

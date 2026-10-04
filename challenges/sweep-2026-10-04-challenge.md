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

# Challenge: master/sweep-2026-10-03

- **Reviewed tip:** `1fd81167e445fb604b0d4698b071c2287422e3c9` ("Link the 3 Oct watch sweep to 57cde32", 3 Oct 07:49:07 CEST). Unchanged after `git fetch --prune` at 07:55 CEST on 3 Oct.
- **Content commit:** `57cde32104a63fc09d7bee12b8eeb71e86198fc0`. Parent is main `99ae9620dd580ff0630cd720f83a0e78de616f4e`.
- **Main ancestry:** main `99ae962` (still `origin/main`) is an ancestor of the tip, so the branch fast-forwards. **No main merge is needed.**
- **Files:** README.md (rows L61, L65, L67, L69, L76), SNAPSHOT-HISTORY.md (+1 row L11), master.json (`updated` and 6 notes), prompts/grok-build-2026-10-03.md (new, 98 lines).
- **Totals: 38 HELD · 7 FAILED · 2 UNVERIFIABLE.** Plus 10 advisory items, which are not counted.
- **Merge status:** blocked until the 7 FAILED items are fixed or stp overrides them (PROCESS.md).
- **Method:** `gh api` at exact SHAs, Kas-Smiths `about.json`, `posts.json` and `t/156.json`, research.kas.pa `latest.json`, and live `curl` of api-tn10 at 07:53–07:54 CEST. No X calls. The owner's raw files (`raw/2026-10-03/SUMMARY.md` and `state.json`) were used as evidence only. Times are CEST unless they end in Z.

Short names: R = README.md, S = SNAPSHOT-HISTORY.md, J = master.json, P = prompts/grok-build-2026-10-03.md. Every line is at commit `57cde32` unless noted. `1fd8116` only adds the SNAPSHOT commit link.

## FAILED (7)

1. **FAILED: R L67 + J L105, `57cde32`**: "the tip of draft [#170] on `fix/committed-gap-recovery`" (R) and "= draft #170 head on fix/committed-gap-recovery" (J).
   - **Evidence:** `gh api repos/kaspanet/vprogs/pulls/170` gives head `fix/unmapped-boundary-tip-drain@055ae28a` and base `fix/committed-gap-recovery`. `branches/fix/committed-gap-recovery` is `b32e92de9868…` (the #169 head), not `055ae28a`.
   - **Fix (R):** "the head of draft [#170] (branch `fix/unmapped-boundary-tip-drain`, base `fix/committed-gap-recovery` at `b32e92de`)".
   - **Fix (J):** "= draft #170 head (fix/unmapped-boundary-tip-drain, base fix/committed-gap-recovery b32e92de)".
2. **FAILED: R L67, `57cde32`**: "**2 Oct TN10 incident (author forensics, draft):**".
   - **Evidence:** the #169 PR body opens "Incident (tn10, 2026-10-01/02)", so the label narrows the author's own dating to 2 Oct. The attribution itself is fine.
   - **Fix:** "**1–2 Oct TN10 incident (per the #169 PR body; author's account, draft; not observed by this desk):**".
3. **FAILED: J L105, `57cde32`**: "Draft #169 b32e92de (2 Oct 13:45Z, base fix/exits-stranded-suffix): TN10 1–2 Oct mass-capped settlement funding (516168>500000) crashed the daemon, lost receipts, froze the covenant;".
   - **Evidence:** the only source is the PR body of draft #169 (biryukovmaxim). The JSON states the crash as fact with no attribution, and this desk did not observe it (P L92 says "author forensics only").
   - **Fix:** "Draft #169 b32e92de (2 Oct 13:45Z, base fix/exits-stranded-suffix). Per its PR body (author's account, not observed by this desk), on TN10 1–2 Oct a mass-capped settlement funding (516168>500000) crashed the daemon, lost receipts and froze the covenant;".
4. **FAILED: R L69, `57cde32`**: "so the lock is not evidence the hosted page is running #168".
   - **Evidence:** this sentence is carried over from main, but the same row now says the lock pins `b32e92de` (#169 stack). The locks at [`533e8a55`](https://github.com/biryukovmaxim/vprog-tictactoe/commit/533e8a557996aa351d1970870ee73182d00722c1) resolve `vprogs?branch=fix%2Fcommitted-gap-recovery#b32e92de…` (38 entries in `Cargo.lock`, 9 in `guest/Cargo.lock`), so "#168" is stale.
   - **Fix:** "so the lock is not evidence the hosted page is running `b32e92de`".
5. **FAILED: R L69 + J L117, `57cde32`**: a still-true caveat was dropped. Main's "README at that tip still names `fix/settlement-watch-wedge`" (R) and "it disagrees with the Cargo pin" (J) were deleted.
   - **Evidence:** [tictactoe README L26 at 533e8a55](https://github.com/biryukovmaxim/vprog-tictactoe/blob/533e8a557996aa351d1970870ee73182d00722c1/README.md#L26) still says to check out vprogs "at the vprogs branch pinned in `Cargo.toml`** (`fix/settlement-watch-wedge`)". `Cargo.toml` at the same tip pins `branch = "fix/committed-gap-recovery"`.
   - **Fix (R and J):** add "The tictactoe README at `533e8a55` ([L26](https://github.com/biryukovmaxim/vprog-tictactoe/blob/533e8a557996aa351d1970870ee73182d00722c1/README.md#L26)) still says to check out vprogs at `fix/settlement-watch-wedge`; it disagrees with the Cargo pin."
6. **FAILED: P L69 (repeated at L78), `57cde32`**: "rusty-kaspa #991 `updated_at` bump / head `03dd516c` (no new review comments since Oct 2 — not pinned)" and "rusty-kaspa #991 head churn without new review since window — hold".
   - **Evidence:** `gh api repos/kaspanet/rusty-kaspa/pulls/991/comments` lists six D-Stacks review comments, 2 Oct 21:41:38Z–21:52:15Z (23:41–23:52 CEST), with six COMMENTED reviews on `d856169e`. That is inside the sweep window (since 2 Oct 00:34:24Z) and after the 2 Oct sweep. The head moved to `03dd516c` (3 Oct 05:22:53Z) and then to `2e05b7cd` (05:49:09Z, 07:49 CEST).
   - **Fix (L69):** "rusty-kaspa #991: D-Stacks left six review comments 2 Oct 21:41–21:52Z on `d856169e`; head then moved to `03dd516c` (3 Oct 05:22Z) and `2e05b7cd` (05:49Z) — not pinned".
   - **Fix (L78):** "rusty-kaspa #991 review round (six D-Stacks comments 2 Oct 21:41–21:52Z) and head churn to `2e05b7cd` — hold".
7. **FAILED: J L105, L117 and L291, `57cde32`**: unannounced overwrite of main text.
   - **What changed:** `vprogs stack 21 Sep morning` was rewritten from 11,148 to 982 chars, and `vprog-tictactoe tip` from 1,503 to 455. `Kas-Smiths archive` deleted the "29 Sep read: 47 topics, 377 posts, 112 users" sentence and the post 400 KIP-24 detail.
   - **Evidence:** the commit message ("Record vprogs #169/#170 RC tip, tictactoe pin, kccs #35, privacy topic…") and S L11 do not mention any trim. AGENTS.md L38 says longer text that leaves a cell is moved verbatim to SNAPSHOT-HISTORY.
   - **What survived:** most of the vprogs facts still exist in R L67 and S. "47 topics, 377 posts" exists nowhere on the branch (`grep` R/S/J = 0).
   - **Fix:** restore "29 Sep read: 47 topics, 377 posts, 112 users." to the `Kas-Smiths archive` note. Then either restore the two other notes and append to them, or add to S L11: "Trimmed master.json notes `vprogs stack 21 Sep morning` (11,148→982 chars), `vprog-tictactoe tip` (1,503→455) and `Kas-Smiths archive`; the older wording stays in git at `99ae962`."

## HELD (38)

### Owner's claims

1. **HELD: R L67, J L105, S L11**: "Branch `release-candidate` is [`055ae28a`] (2 Oct 20:38Z)".
   - `branches/release-candidate` is `055ae28ad75b15ae9354944c8d494d989503b103`, committed 2026-10-02T20:38:04Z. This is the same SHA as the #170 head.
2. **HELD: R L67, J L105**: "[#169] [`b32e92de`] (draft, base `fix/exits-stranded-suffix`, 13:45Z)".
   - #169 is open, draft=true, head `fix/committed-gap-recovery@b32e92de`, base `fix/exits-stranded-suffix`, created 2026-10-02T13:45:03Z.
3. **HELD: R L67, J L105**: "[#170] [`055ae28a`] (draft …) **2 Oct 20:09Z**".
   - #170 is open, draft=true, head `055ae28a`, created 20:09:09Z and updated 20:38:19Z.
   - The brief said "#170 and #169 are at b32e92de", but #170 is at `055ae28a`. The branch has this right.
4. **HELD: R L67**: "Ahead of the old #167 tip `fbd677c2` by eight commits".
   - `compare/fbd677c2...055ae28a` gives status ahead, ahead_by 8, behind_by 0.
5. **HELD: R L67**: "37 small UTXOs … (516,168 > 500,000)".
   - Both numbers appear verbatim in the #169 PR body.
6. **HELD: R L67**: the incident sentences sit under an "author forensics, draft" label. The attribution is acceptable; see FAILED 2 for the date.
7. **HELD: S L11**: "draft [#169] … records a TN10 1–2 Oct mass-capped settlement crash".
   - The PR is the subject ("records"), and the date matches the body's 2026-10-01/02.
8. **HELD: P L47, L92**: the source column says "GitHub PR body", and L92 says "Not observed by this desk; author forensics only."
9. **HELD: R L67**: #170 "drain an unmapped-boundary settlement's prefix by lane tip so a reorg-compacted boundary no longer wedges the journal".
   - This matches the PR title and body (a reorg re-derived the boundary after compaction; the journal grows).
10. **HELD: R L67, J L105**: "Neither PR is merged. Not a release."
    - Both PRs have merged=false. The vprogs master is still `f9b84a86`.
11. **HELD: R L69, J L117, S L11**: "Tip [`533e8a55`] (2 Oct 13:54Z)".
    - `commits/master` is `533e8a557996…`, 2026-10-02T13:54:39Z, "pin vprogs fix/committed-gap-recovery b32e92de".
12. **HELD: R L69, J L117**: "Pins vprogs `fix/committed-gap-recovery` [`b32e92de`] … not `release-candidate` tip `055ae28a` … `Cargo.toml` / both locks".
    - `Cargo.toml` and `guest/Cargo.toml` pin `branch = "fix/committed-gap-recovery"`.
    - `Cargo.lock` (38) and `guest/Cargo.lock` (9) resolve to `#b32e92de…`. There is no `055ae28a` in either lock.
13. **HELD: R L69, J L117**: "Rusty-kaspa pin remains `eb0a856`, behind release v2.1.0 `01b532e8`".
    - The locks give `rev=eb0a856d…` (48 and 5 entries). `compare/eb0a856d...v2.1.0` gives ahead_by 3, and v2.1.0 is `01b532e8b553…`.
14. **HELD: R L69, J L117**: "[#23] still open".
    - `issues/23` has state open.
15. **HELD: R L61, J L75**: "**2 Oct 21:43Z:** [#35] [`f352dc9e`] (danieliyahu1, **draft**)".
    - #35 is open, draft=true, head `kcc-mobile-wallet@f352dc9e`, user danieliyahu1, created 2026-10-02T21:43:02Z.
16. **HELD: R L61, J L75**: "unnumbered Idea-stage … Additive to KCC-12 (PR #24) … error codes 4903–4906; no new RPC methods. Not numbered. Not Final."
    - The PR body says "Idea-stage pull request", "`KCC: ?` and the file is `kcc-XXXX.md`", "adds no RPC method", and "adds four error codes, `4903`, `4904`, `4905`, and `4906`". The files are `kcc-XXXX.md` (+1071) and README.md (+1).
17. **HELD: R L65, J L291, S L11**: "**3 Oct:** 48 topics, 378 posts, 113 users".
    - Live `about.json` returned topics_count 48, posts_count 378, users_count 113.
18. **HELD: R L65, J L291**: "Latest post [402] (2 Oct 14:43Z): olafweller opened [topic 156] Kaspa Privacy Initiative".
    - `posts.json` has 402 as topic 156, post 1, olafweller, 2026-10-02T14:43:33Z. `t/156.json` has the title "Kaspa Privacy Initiative: exploring optional privacy for native KAS".
19. **HELD: R L65**: "Public GitHub olafweller/kaspa-privacy-initiative; compares L1 covenant+ZK pool vs sharded covenant state vs based-app/vProgs. Not a KIP."
    - The repo is public (created 2026-10-02T13:55:36Z). Post 402 lists the same three directions and says "no new coin" / "no trusted custodian".
20. **HELD: R L65, J L291**: "Prior: post 401 (28 Sep) ezira [topic 155] … post [400] IzioDev on KIP-24 / KCC-23 ([kips#41] still open)".
    - `posts.json` has 401: ezira, topic 155, 2026-09-28T16:13Z, and 400: IzioDev, topic 150 post 7, 10:35Z. kips#41 is open and unmerged.
21. **HELD: R L76, J L153, S L11**: "[#372] … open, head [`137a1d4d`] (updated 2 Oct 10:29Z)".
    - #372 is open, unmerged, head `137a1d4d`, base main, updated 2026-10-02T10:29:32Z.
22. **HELD: R L76, J L153**: "[#357] Stage 0 token display closed unmerged".
    - #357 is closed, merged=false, closed 2026-10-01T13:44:47Z.
23. **HELD: S L11**: "api-tn10 health recheck: 200, diff 2, backend kaspad **2.0.0** (multi-backend)".
    - The row is time-stamped 2026-10-03 07:49 and says multi-backend; no cell is rewritten.
    - The owner saved no health body in `raw/2026-10-03/`. My live re-run of 13 cache-busted `/info/health` calls at 07:53–07:54 CEST returned HTTP 200 every time.
    - Nine of those calls hit kaspad `2.0.0` (p2pId `e13cc6c8…`) and four hit `2.1.0` (`b079c555…`). All were synced, with `acceptedTxBlockTimeDiff` 1–3.
    - Not overclaimed; see advisory A5.
24. **HELD: P L52**: "api-tn10 health ~07:50: 200, `acceptedTxBlockTimeDiff` 2, backend kaspad **2.0.0** (still multi-backend)". Same evidence as HELD 23.
25. **HELD: P L14, J L273**: no api-tn10 answer is used as payment proof.
    - P L14 says "api-tn10 200 ≠ proof a payment landed". J keeps "an api-tn10 /info/health HTTP 200 into a synced indexer". No added line cites api-tn10 for a txid or payment.

### Other branch content

26. **HELD: J L105**: "Prior stack (#168 edb9633a, #167 fbd677c2, #165 b5c48193, #164/#163, older drafts) still open".
    - Live heads are #168 `edb9633a`, #167 `fbd677c2`, #165 `b5c48193`, #164 `f0701e24` and #163 `97f5682e`. All are open and unmerged.
27. **HELD: J L117**: "https://vprogs-tt.izio.fr/ was HTTP 200 on 28–29 Sep … not re-fetched this pass".
    - This restates main's dated reading and marks it as not re-fetched.
28. **HELD: J L273**: the appended "Do not weld: vprogs release-candidate 055ae28a or draft #169/#170 … KaChat .kachat registry v2 into DOTK or a KCC."
    - The prior text is kept as an unchanged prefix (3,840 → 4,149 chars).
    - The KaChat registry v2 exists: [vsmirn0v/KaChat](https://github.com/vsmirn0v/KaChat) commits `3ef2ec2` ".kachat core: registry v2" and `6b6cace` "bundle the registry v2 manifest", on 2 Oct.
29. **HELD: P L75**: "KaChat … tip `77c2a899`; contracts in private `KaspaSilver/kachat-domains`".
    - `commits/main` is `77c2a8994b67…` (2026-10-03T02:16:12Z). KaChat commit `1ec26f0` says "the contracts repo is kachat-domains", and `repos/KaspaSilver/kachat-domains` returns 404 publicly.
    - This is a third-party name, not a desk repo.
30. **HELD: P L71**: "research.kas.pa: newest still topic 522 (8 Sep)".
    - `latest.json` gives max id 522, created 2026-09-08T13:11Z.
31. **HELD: P L56, S L11**: "argent#66 + Sutton 2106033659698450492 + public dotk-indexer — on main `99ae962`".
    - main README and SNAPSHOT contain the status id 3 times, and `argent/pull/66` and `dotk-indexer` are on main. #66 is still open at head `9592dd99`.
32. **HELD: P vs R consistency**: P L46–L51 match R L61/L65/L67/L69/L76 (RC `055ae28a`, #169 `b32e92de`, tictactoe pin, #35 Idea/unnumbered, 48/378/113 with 402/156, #372/#357).
    - P L14 keeps the same do-not-weld list as J L273. The only P error is FAILED 6, which is not in R.

### Validation

33. **HELD: ancestry**: tip `1fd8116` → `57cde32` → `99ae962` (= `origin/main`). Both commits have the STP-KAS noreply author. Fast-forward; no main merge needed.
34. **HELD: J canonical form**: J is valid UTF-8 JSON, and `json.dumps(d, indent=2, ensure_ascii=False)+"\n"` equals the file. It has 0 `\u` escapes and `updated` is "2026-10-03". No rows were added or removed.
35. **HELD: S order**: the new row L11 "2026-10-03 07:49" sits above "2026-10-02 19:49" (L12), so the order is newest first. Older out-of-order pairs are already on main; see A9.
36. **HELD: leaks in added text**: the `+` lines contain:
    - no personal emails (only the public STP-KAS noreply git identity in P L16);
    - no `/home/` paths;
    - no keys, seeds or addresses;
    - no private stall-repo name.
    - The private desk repo names on R L67 are carried over from main; see A6. The branch removes the J copy of them.
37. **HELD: KCC and Do-not-weld notes**: J L75 (`KCC still open`) and J L273 keep main's text as an unchanged prefix, with additions only. R rows L61 and L76 change only the added sentences.
38. **HELD: factcheck tool**: `factcheck.py <worktree of 1fd8116> --base origin/main --changed-only` gave OK 222 · WARN 14 · FAIL 26.
    - All 26 FAILs are the `json` non-ASCII form check, which conflicts with main's UTF-8 convention, so I don't count them.
    - The 14 WARNs are cross-repo hash ambiguities (`055ae28a`, `b32e92de`, `01b532e8` on rows that link other repos). All were verified above.

## UNVERIFIABLE (2)

1. **UNVERIFIABLE: P L63**: "Before **$6.46**, after **$6.07**. Spent **~$0.39**".
   - The only sources are the owner's `raw/2026-10-03/SUMMARY.md` and `state.json` (`x_spend_usd.2026-10-03: 0.39`, `credits_before_usd 6.46`, `credits_after_usd 6.07`). The arithmetic is consistent.
   - Checking the credit balance needs an X call, which this pass may not make. The "Free grant expires 24 Oct 2026" claim is unverifiable for the same reason.
2. **UNVERIFIABLE: P L39, L64–L68, L77**: the X coverage claims are X-only.
   - They are: core 30 posts + next_token, community 20, deshe 0, KaspaScopio 8, core_replies 20 / kept 3 / added 0, and KasPulse "one operator holds all five feed keys".
   - They are internally consistent with `state.json` (since_ids, `replies_trial.log`), but there was no X read and no non-X source.

## Advisory (not counted; nothing false on the branch)

- **A1 (KCC-0 precedent; audit KR-02 confirmed): R L61 / J L75.**
  - R L61 says "Neither header sets a `Last-Call-Deadline`, which KCC-0 requires". That is true, but the row leaves out the editors' precedent.
  - [#17](https://github.com/kaspanet/kccs/pull/17) merged KCC-0 on 2026-08-27T13:35:10Z directly as `Status: Last Call`. [kcc-0000.md at 5cf757b](https://github.com/kaspanet/kccs/blob/5cf757b63467b8c3fa4a290973d171063164be21/kcc-0000.md#L1-L9) has no deadline header, yet L156 and L276 already require one.
  - [#25](https://github.com/kaspanet/kccs/pull/25), merged 2026-09-21T13:31:53Z, says "after 14 days of `Last Call` status, the KCC standard is `Final`".
  - On that practice, KCC-1 and KCC-2 (#32 12:33:08Z, #33 12:52:21Z on 1 Oct) could be treated as closing on about 15 Oct 12:33Z / 12:52Z (14:33 / 14:52 CEST).
  - Suggested sentence: "Precedent: KCC-0 went Last Call (#17, 27 Aug) with no deadline header and was moved to Final by #25 citing 14 days; on that count KCC-1/KCC-2 could be treated as closing ~15 Oct 14:30–14:55 CEST. Not a set end date."
- **A2 (KCC-2 authority type; audit KR-04 confirmed from the text): not in R L61.**
  - [kcc-0002.md at 411b41bc](https://github.com/kaspanet/kccs/blob/411b41bc14b3fda8f3a0548242c555f3597cad1a/kcc-0002.md#L50-L56): the table gives `0x00` as `pubkey` and `0x01`–`0x04` as `byte[32]`. L83–84 say "Authority values MUST have the type and exact payload length specified in the table". L156–157 use KCC-20's single `state.owner` field as the model.
  - kcc-0020.md L34 declares `owner: byte[32]`.
  - A single field therefore cannot meet the table's type for every scheme. I did not recompute the two dispatch tags the review gives (`79c71c23` / `4bf4b1a6`). KCC-2 is in Last Call, so the KCC row could note this.
- **A3 (audit LC-7 / KR-01):** the branch and main never mention the LC audit, LC-7 or ScriptNum, so there is nothing to correct here. I did not re-run the ScriptNum byte check.
- **A4 (covenant F2 broader; review R-01 partly confirmed).**
  - At argent#66 head [`9592dd99`](https://github.com/argent-lang/argent/tree/9592dd996d2503eb166335d6da92548de193877f), `crates/argent-artifact/src/lib.rs` has 0 `deny_unknown_fields` across 59 `Deserialize` mentions. `argent-genesis/src/preimage.rs` has 0, while `package.rs` has 3.
  - So the gap reaches the embedded `Artifact` type, beyond the six structs. This is a static check; I did not re-run the probe.
  - main's argent#66 row (untouched by this branch) does not mention F2 at all, so nothing is false. The row could add "unknown JSON fields are silently dropped in proof and artifact types; display only a typed re-serialization".
- **A5 (api-tn10 wording): S L11.** Suggest "one sample at ~07:49 CEST; the pool also served kaspad 2.1.0 (`b079c555…`) at 07:53". The owner's raw dir has no saved health body.
- **A6 (pre-existing leak on main): R L67** still names two private desk repos, with commit hashes, in its "Private … were checked with git grep" sentence (names withheld here). This is the open item 13 from the 2 Oct sweep challenge, waiting on stp. This branch drops the J copy but carries the R copy unchanged.
- **A7 (formatting): J L75** "…/kccs/pulls 2 Oct 21:43Z:" and **J L291** "…covenant-id/150 3 Oct read:" join a bare URL to the next sentence. A period is missing.
- **A8 (stale on main, not this branch):** main's DAGKnight row says #991 head `1f15c618` with CHANGES_REQUESTED. The head is now `2e05b7cd` (3 Oct 05:49Z), after the D-Stacks review round on 2 Oct.
- **A9 (pre-existing S order on main):** these out-of-order pairs already exist on main: L26/L27 (1 Oct 09:46 above 17:12), L152/L153, L160–L164 and L192/L193 (22 Sep).
- **A10 (brief vs branch):** the task brief's "drafts #170 and #169 are at b32e92de" is wrong for #170, whose head is `055ae28a`. The branch states it correctly.

## Recheck @ 74b1c60

- **Reviewed tip:** `74b1c600ecef97138281d5d0e9867a92089215a8` ("Fix the 7 FAILED items from the 3 Oct sweep challenge (aca74f2).", 3 Oct 08:00:11 CEST). Parent is `1fd8116`, and the author and committer are the STP-KAS noreply.
- **Main ancestry:** main `99ae962` (still `origin/main` after `git fetch --prune` at 08:00 CEST) is an ancestor. The branch fast-forwards, so **no main merge is needed**.
- **Diff `1fd8116..74b1c60`:** README 2/2 (L67, L69), SNAPSHOT 1/1 (L11), master.json 4/4 (L75, L105, L117, L291), prompt 3/3 (L52, L69, L78). No rows or files were added or removed.
- **Totals: 15 HELD · 0 FAILED · 0 UNVERIFIABLE.** All 7 earlier FAILED items are closed. Two advisory items remain open, and item 13 waits on stp.

Each line below is at commit `74b1c60`.

1. **HELD (was FAILED 1): R L67** "the head of draft [#170] (branch `fix/unmapped-boundary-tip-drain`, base `fix/committed-gap-recovery` at `b32e92de`)". **J L105** "= draft #170 head (fix/unmapped-boundary-tip-drain, base fix/committed-gap-recovery b32e92de)". Both match `pulls/170` (head ref `fix/unmapped-boundary-tip-drain@055ae28a`) and `branches/fix/committed-gap-recovery` (`b32e92de`).
2. **HELD (was FAILED 2): R L67** "**1–2 Oct TN10 incident (per the #169 PR body; author's account, draft; not observed by this desk):**". This matches the #169 body, "Incident (tn10, 2026-10-01/02)".
3. **HELD (was FAILED 3): J L105** "Draft #169 b32e92de (2 Oct 13:45Z, base fix/exits-stranded-suffix). Per its PR body (author's account, not observed by this desk), on TN10 1–2 Oct a mass-capped settlement funding (516168>500000) crashed the daemon…". The crash is now attributed.
4. **HELD (was FAILED 4): R L69** "so the lock is not evidence the hosted page is running `b32e92de`".
5. **HELD (was FAILED 5): R L69 and J L117** "The tictactoe README at `533e8a55` ([L26](…/533e8a557996aa351d1970870ee73182d00722c1/README.md#L26)) still says to check out vprogs at `fix/settlement-watch-wedge`; it disagrees with the Cargo pin." I re-read the tictactoe README at `533e8a55`, and L26 still names `fix/settlement-watch-wedge`.
6. **HELD (was FAILED 6): P L69** "rusty-kaspa #991: D-Stacks left six review comments 2 Oct 21:41–21:52Z on `d856169e`; head then moved to `03dd516c` (3 Oct 05:22Z) and `2e05b7cd` (05:49Z) — not pinned". **P L78** "rusty-kaspa #991 review round (six D-Stacks comments 2 Oct 21:41–21:52Z) and head churn to `2e05b7cd` — hold". Both match `pulls/991/comments`, `/reviews` and `/commits`.
7. **HELD (was FAILED 7a): J L105 `vprogs stack 21 Sep morning`.** Main's 11,148-char note is an exact prefix of the new note (`new.startswith(old)` is True at 99ae962). The added text starts ". 2 Oct: release-candidate tip 055ae28a…", which is today's facts and nothing else.
8. **HELD (was FAILED 7b): J L117 `vprog-tictactoe tip`.** Today's state comes first. Main's full 1,503-char note then follows verbatim (`old in new`, at offset 745), after "Prior note (29 Sep read, kept from 99ae962): ". The url changed from `commit/cb91e862` to `commit/533e8a55`, which is correct for the new tip.
9. **HELD (was FAILED 7c): J L291 `Kas-Smiths archive`.** Main's note is restored. A character diff against 99ae962 shows exactly one change inside the old text: a period after "…covenant-id/150", which is the advised bare-URL fix. The rest is word for word, including "29 Sep read: 47 topics, 377 posts, 112 users." The 3 Oct read is appended after "…multi-leaf-collection-covenant/155.".
10. **HELD: J L75** "…/kccs/pulls. 2 Oct 21:43Z: #35 …". The period after the bare URL is added, and the old text is still an exact prefix.
11. **HELD: S L11 and P L52** "200, diff 2, backend kaspad **2.0.0** (multi-backend; one sample; the pool also served 2.1.0)".
    - Live cache-busted `/info/health` at 08:01 CEST returned HTTP 200 on 10 of 10 calls: kaspad `2.1.0` ×6, `2.0.0` ×2 and `2.0.1` ×2, all synced, with `acceptedTxBlockTimeDiff` 2–4. At 07:53 I saw 2.1.0 ×4 and 2.0.0 ×9.
    - The owner's "07:59, 8 calls, 7 on 2.1.0 and 1 on 2.0.0" is not written on the branch, and no raw body is saved, so it is not counted here.
12. **HELD: nothing new or unsourced in `1fd8116..74b1c60`.** Every added sentence is one of fixes 1–10, the S L11 "**Fixes after [the challenge]…**" list, or restored main text. The fixes list matches the diff item by item, including "nothing trimmed", which holds for all three notes. No new claim needs a new source.
13. **HELD: J canonical form.** J is valid UTF-8, and `json.dumps(d, indent=2, ensure_ascii=False)+"\n"` equals the file. It has 0 `\u` escapes and `updated` is "2026-10-03". The `Wallets and KCC-20` and `Do not weld` notes are unchanged since `1fd8116`.
14. **HELD: S top row.** L11 "2026-10-03 07:49 | [`57cde32`]…" is still first, above L12 "2026-10-02 19:49", so the order is newest first. The row only gains the fixes list and the api-tn10 caveat.
15. **HELD: leaks.**
    - The `+` lines of `1fd8116..74b1c60` contain no personal emails, no `/home/` paths, no keys, seeds or addresses, and no private stall-repo name.
    - The restored vprogs note brings back two private desk repo names with commit hashes. That matches main exactly (count 2 at 99ae962 and 2 at 74b1c60), so it is not new; see open item R-A1.

### Still open (advisory, not counted)

- **R-A1 (open item 13, waits on stp):** two private desk repo names, with commit hashes, appear in R L67 and now again in J L105. Both are verbatim from main 99ae962.
- **R-A2 (formatting, new):** J L117 has "…/vprog-tictactoe/commit/533e8a55 Prior note (29 Sep read, kept from 99ae962): …", a bare URL joined to the next sentence with no period. Fix: "…/commit/533e8a55. Prior note (29 Sep read, kept from 99ae962): …".
- **R-A3 (api-tn10 wording, optional):** at 08:01 CEST the pool also served kaspad 2.0.1. "the pool also served 2.1.0" is still true; "the pool also served 2.1.0 and 2.0.1" would be fuller.
- Advisory items A1–A4 from the first pass (the KCC-0 Last Call precedent, KCC-2 KR-04, LC-7, covenant F2), A8 (main's #991 DAGKnight row) and A9 (older SNAPSHOT order on main) are unchanged and remain advisory. A5 (api-tn10 wording) and A7 (bare-URL periods) are applied.

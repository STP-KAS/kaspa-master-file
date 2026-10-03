# Challenge: build/2026-10-03

- **Reviewed tip:** `8f44d04bfaaead2595eb56f13cac7c667e998217` ("Link the 3 Oct Build pass to 79b6888…", 3 Oct 07:57:36 CEST).
- **Content commit:** `79b6888a3810b9f696cbc06fdfd1252315e0224a` (07:57:28 CEST). Both commits are STP-KAS noreply author and committer. The owner is kaspa master prompt build.
- **Base:** main `99ae9620dd580ff0630cd720f83a0e78de616f4e`, still `origin/main` after `git fetch --prune` at 08:00 CEST. Main is an ancestor.
- **Diff vs main:** 3 files, +7/−6.
  - README.md: L54 (Not live) and L92 (research.kas.pa).
  - SNAPSHOT-HISTORY.md: +1 row at L11.
  - master.json: `updated`, plus the notes `Not live`, `research.kas.pa` and `other` › `KaChat`.
- **Totals: 33 HELD · 0 FAILED · 1 UNVERIFIABLE.** Plus 7 advisory items, not counted.
- **Merge order:** each branch fast-forwards on its own, but this branch and `master/sweep-2026-10-03` (`74b1c60`) conflict in SNAPSHOT-HISTORY.md. **Whichever lands second needs a main merge**; see the merge section below.
- **Method:** `gh api` at exact SHAs; research.kas.pa `t/522.json`; a blob-less clone of vsmirn0v/KaChat (read only); the api-tn10 `/transactions/…` and `/info/health` endpoints; `git merge-tree --write-tree` (git 2.47.3).
  - The owner's analysis (`grok-build-analysis-2026-10-03.md`) was used as evidence only. No X calls.

Short names: R = README.md, S = SNAPSHOT-HISTORY.md, J = master.json. Every line refers to commit `79b6888`; S L11 is linked in `8f44d04`.

## HELD (33)

### rusty-kaspa #991 (R L54, J `Not live`)
1. **HELD: R L54**: "[#991] … head [`2e05b7cd`] (3 Oct 05:49Z) is not merged".
   - `pulls/991` gives head `2e05b7cd`, state open, merged=false. Commit `2e05b7cd` "fix client rpc handling" is dated 2026-10-03T05:49:09Z.
2. **HELD: R L54 / J**: "the CHANGES_REQUESTED reviews stand and GitHub says `blocked`" and "(CHANGES_REQUESTED stand: IzioDev 25 Aug, biryukovmaxim 11 Sep)".
   - `mergeable_state` is blocked.
   - `/reviews` shows CHANGES_REQUESTED from IzioDev (latest 2026-08-25T09:09:58Z) and from biryukovmaxim (latest 2026-09-11T10:01:13Z).
   - Every later review is COMMENTED, which does not dismiss them.
3. **HELD: R L54 / J**: "[`03dd516c`] drops the blanket `unsafe_rpc` gate on that call; safe mode caps the address count and page size instead ([`service.rs` L850-853])".
   - The `03dd516c` patch deletes `if !self.config.unsafe_rpc { return Err(RpcError::UnavailableInSafeMode); }` (service.rs −5).
   - At `2e05b7cd`, L850 checks `MAX_SAFE_GET_UTXOS_BY_ADDRESSES_V2_ADDRESS_COUNT` and L853 checks `MAX_SAFE_GET_UTXOS_BY_ADDRESSES_V2_PAGE_SIZE`.
4. **HELD: R L54 / J**: "Read at `1f15c618`: it would delete and rebuild a legacy utxoindex after a prompt".
   - Main's sentence is kept and now scoped to the commit it was read at. Nothing new is claimed for `2e05b7cd`.
5. **HELD: J `Not live`**: "3 Oct 05:49Z: #991 (D-Stacks) head 2e05b7cd still open and blocked". The PR author is D-Stacks. The dated pin replaces main's "25 Sep 16:39Z … head 1f15c618"; AGENTS.md L40 says to change `now` when a pin changes.

### research.kas.pa (R L92, J `research.kas.pa`)
6. **HELD: R L92**: "Rechecked 3 Oct ~07:52 CEST: newest topic still 522". `latest.json` gives max id 522, created 2026-09-08T13:11Z.
7. **HELD: R L92**: "Topic 522 is a question, not a privacy layer: one post (JackKas), no replies".
   - `t/522.json` gives "Optional Privacy Layer for Kaspa Similar to Litecoin MWEB", posts_count 1, reply_count 0, created_by JackKas.
8. **HELD: R L92**: "[olafweller/kaspa-privacy-initiative] [`dc2f176d`] (2 Oct) cites it as prior discussion of the same goal ([`research/existing-kaspa-privacy.md`])".
   - The main tip is `dc2f176d…`, dated 2026-10-02T14:23:00Z.
   - At that commit, the file's L9 links research.kas.pa topic 522, and L11 says "This is prior public discussion of the same broad goal… Do not present the optional-native-KAS concept as novel to this repository."
9. **HELD: R L92**: "that repo is research with no code".
   - The tree at `dc2f176d` has one script, `scripts/check_docs.py` (a docs checker), and no protocol code. See advisory B-A4.
10. **HELD: R L92**: "opened on Kas-Smiths [topic 156]". Post 402 is topic 156 by olafweller, 2026-10-02T14:43:33Z, and links the repo.

### KaChat (J `other` › `KaChat`, S L11)
11. **HELD: J**: "Third-party iOS chat app, MIT. Catalog, not a Now pin."
    - `repos/vsmirn0v/KaChat` has license MIT. The tree is a Swift app (`KaChat/Views/…`).
    - It is catalog-only, which replaces main's "Not cloned."
12. **HELD: J, S**: "TN10 .kachat names registry v2 82f4315c…0f89: manifest bundled at 6b6cacee (2 Oct 18:16Z)".
    - Commit `6b6cacee1776…` is dated 2026-10-02T14:16:12-04:00 (= 18:16Z), ".kachat on testnet: bundle the registry v2 manifest (82f4315c…0f89)".
    - Its `KaChat/Resources/kachat-names-testnet-10.json` has `registryCovenantId` `82f4315c8f7b…9cfa0f89` and `status` deployed.
13. **HELD: J, S**: "genesis tx e20325f7…a426, accepted per api-tn10 (block time 2 Oct 18:14:52Z; public index, not a desk-node read)".
    - The manifest has `genesis.txid` `e20325f70db0…5175a426`.
    - Live `api-tn10/transactions/e20325f7…` returns `is_accepted` true, block_time 2026-10-02T18:14:52.845Z, output 0 = 100000000 sompi to the KachatGap P2SH.
    - The source is labelled as the public index. It concerns a third party's genesis acceptance, not a payment.
14. **HELD: J**: "Templates compiled with SilverScript v1.0.0 3ed97333". The manifest has `compiler.repo` kaspanet/silverscript, `compiler.tag` v1.0.0 and `compiler.commit` `3ed973335b59…`.
15. **HELD: J, S**: "Contracts are in kachat-domains, which is not public (GitHub 404 on 3 Oct)".
    - KACHAT_NAMES.md L486 at `77c2a899` says "(repo `kachat-domains`, private on GitHub)", and `gh api repos/KaspaSilver/kachat-domains` returns 404.
16. **HELD: J**: "Mainnet: 'Coming soon', no network actions". KACHAT_NAMES.md L380 at `77c2a899` says "Mainnet is unchanged: mockups, "Coming soon", no network actions."
17. **HELD: S**: "`KACHAT_NAMES.md` still says 'design, under review' at the top and 'v2 genesis pending' in its plan".
    - At `77c2a899`, L5 says "Status: **design, under review** (2026-10-01)".
    - L490–492 say "the registry v2 genesis (section 4.1) and its end-to-end run are pending", while L153 says "**Live on testnet-10** since 2026-10-02".

### SNAPSHOT row S L11: sweep cross-checks
18. **HELD: S**: "vprogs [#169] draft, head `fix/committed-gap-recovery` `b32e92de`, base `fix/exits-stranded-suffix` `edb9633a`, body says 516,168 > 500,000 from 37 small UTXOs on tn10 1-2 Oct".
    - `pulls/169` and `branches/fix/exits-stranded-suffix` (`edb9633a`) match. The PR body says "Incident (tn10, 2026-10-01/02)… (37 small UTXOs…) … (516,168 > 500,000)".
19. **HELD: S**: "[#170] draft, base `fix/committed-gap-recovery`; `release-candidate` = `055ae28a` (2 Oct 20:38:04Z), 8 ahead of `fbd677c2`, no release or tag; master `f9b84a8`".
    - `compare/fbd677c2...055ae28a` gives ahead 8, behind 0. vprogs `/releases` and `/tags` both have length 0.
20. **HELD: S**: "Correction for the sweep: #170's head branch is `fix/unmapped-boundary-tip-drain`, not `fix/committed-gap-recovery` (that is its base)". `pulls/170` head ref is `fix/unmapped-boundary-tip-drain`. See B-A2.
21. **HELD: S**: "tictactoe [`533e8a55`] locks `b32e92de` in both Cargo.lock files, not the RC tip". The locks resolve `#b32e92de…` (38 and 9 entries) and contain no `055ae28a`.
22. **HELD: S**: "kccs [#35] open draft, `KCC: ?`, Idea stage under KCC-0 4.2 (in-file `Status: Draft` applies only on merge)".
    - `kcc-XXXX.md` at `f352dc9e` has `KCC: ?` and `Status: Draft`.
    - kcc-0000.md L144–149 at `411b41bc` says an Idea "may exist as an open pull request… Once it confirms, it can be merged which is when it becomes a Draft".
23. **HELD: S**: "Kas-Smiths 48/378/113, post 402 = topic 156". `about.json` gives 48/378/113, and `posts.json` gives 402 = topic 156.
24. **HELD: S**: "Stale in the sweep by minutes: rusty-kaspa [#991] head is `2e05b7cd` (05:49Z), not `03dd516c`".
    - True for the scoped sweep commits `57cde32`/`1fd8116`. The sweep fixed it in `74b1c60`; see B-A2.
25. **HELD: S**: "kaspad 2.0.0 (p2p `e13cc6c8`, the same 2.0.0 backend as the 2 Oct 18:12Z read)". R L51 on `build/api-tn10-2026-10-02` (`50740fc`) records "kaspad 2.0.0 (p2p prefix `e13cc6c8` …)" at 18:12Z.
26. **HELD: S**: "cell not rewritten (open `build/api-tn10-2026-10-02` owns it)". That branch exists at `50740fc` (2 Oct 20:35 CEST) and is not an ancestor of main.

### Validation
27. **HELD: no unintended overwrite**. The semantic diff vs main changes only the quoted sentences in R L54, R L92 and the three J notes. No other row changed, and no rows or files were added or removed.
28. **HELD: J canonical form**. J is valid UTF-8, and `json.dumps(d, indent=2, ensure_ascii=False)+"\n"` equals the file. It has 0 `\u` escapes and `updated` is "2026-10-03".
29. **HELD: S order**. The new row L11 "2026-10-03 07:57" sits above L12 "2026-10-02 19:49" (main's top), so the order is newest first.
30. **HELD: leaks**.
    - The `+` lines contain no personal emails, no `/home/` paths, no keys, seeds or addresses, no private stall-repo name and no private desk repo names. "Seeds 0..32" is main's test-seed text.
    - The KaChat gap P2SH address and the deployer change address are not written on the branch.
31. **HELD: ancestry**. `99ae962` → `79b6888` → `8f44d04`, so the branch fast-forwards on main as it stands.
32. **HELD: factcheck tool**. `factcheck.py <worktree of 8f44d04> --base origin/main --changed-only` gave OK 81 · WARN 2 · FAIL 26.
    - All 26 FAILs are the `json` non-ASCII form check, which conflicts with main's UTF-8 convention and is not counted.
    - The two WARNs are the p2p ids `b079c555` and `e13cc6c8` read as commit hashes, which are false positives.
33. **HELD: no contradiction with `master/sweep-2026-10-03` @ `74b1c60`**.
    - The two branches touch disjoint README rows (build L54/L92, sweep L61/L65/L67/L69/L76) and disjoint J notes. `updated` is set to the same value on both.
    - On #991 both name head `2e05b7cd` (sweep prompt L69/L78; build R L54). On api-tn10 both say multi-backend, the sweep's "2.0.0 … one sample; the pool also served 2.1.0" and the build's split.
    - On #170 both now give head `fix/unmapped-boundary-tip-drain` with base `fix/committed-gap-recovery`.

## UNVERIFIABLE (1)

1. **UNVERIFIABLE: S L11**: "api-tn10 [`/info/health`] 07:53-07:54 CEST, 15 reads, all 200: 14 from kaspad 2.1.0 (p2p `b079c555`), 1 from 2.0.0 (p2p `e13cc6c8` …)".
   - The owner's own sample, and no raw bodies are saved.
   - My concurrent cache-busted reads from the box at 07:53:15–07:54:04 CEST (16 reads, all 200) split differently: 2.1.0 (`b079c555`) ×7 and 2.0.0 (`e13cc6c8`) ×9.
   - At 08:01 CEST a third backend appeared, 2.0.1 ×2 out of 10.
   - The split depends on the client and the moment, so it can't be reproduced. Both versions are in rotation, and that part holds.

## Advisory (not counted)

- **B-A1 (api-tn10 split):** don't turn the 14/1 split into "mostly 2.1.0" anywhere (the owner's analysis proposes that wording). Write "both 2.1.0 and 2.0.0 (and at 08:01 also 2.0.1) in rotation; the split varies by client and time".
- **B-A2 (dated corrections):** S L11 "Correction for the sweep: #170's head branch…" and "Stale in the sweep by minutes: … #991" are scoped to `57cde32`/`1fd8116`, and both are fixed on the sweep at `74b1c60`. Once both rows are on main, consider adding "(fixed in sweep `74b1c60`)" so neither reads as open.
- **B-A3 (formatting):** J `Not live` "…/rusty-kaspa/commit/03dd516c Not merged" and J `research.kas.pa` "…/existing-kaspa-privacy.md Topics 295 and 429…" join a bare URL to the next sentence with no period.
- **B-A4 (wording):** "research with no code" could be "research; no protocol code (one docs-check script)". The repo tree has `scripts/check_docs.py`.
- **B-A5 (sweep wording, my own fix text):** the six #991 comments of 2 Oct 21:41–21:52Z are by D-Stacks, **the PR author**, and each is a reply (`in_reply_to_id` set) on an older review thread. The sweep prompt's "D-Stacks left six review comments" is literally true, but "the author's six review-thread replies" is more precise. The build's analysis has this right.
- **B-A6 (out of scope, owner's analysis §5):** the analysis reports the desk kaspad stopping P2P and gRPC at 07:53:46 CEST with no miners running. That would make the AGENTS.md node and miner rows on main stale. This pass did not check it (TN10 ops; read-only rule). The branch does not edit those rows.
- **B-A7 (owner's analysis, open questions):** the analysis says stp cancelled the 2 Oct KCC Last Call audit and that its repo is public. It also lists `0c72511` on `build/2026-10-02` as unchallenged. Both are for stp; neither is on this branch.

## Merge order and conflicts (git merge-tree --write-tree)

- `merge-tree origin/master/sweep-2026-10-03(74b1c60) origin/build/2026-10-03(8f44d04)`: rc=1, **CONFLICT (content) in SNAPSHOT-HISTORY.md only**. README.md and master.json auto-merge, and the merged master.json is still canonical (`json.dumps(..., ensure_ascii=False)` equals the file).
- The reverse order gives the same result: rc=1, a conflict in SNAPSHOT-HISTORY.md only, with README and JSON clean and canonical.
- **Cause:** both branches insert a new row at S L11 directly under main's header.
- **Resolution:** keep both rows, newest first: build `2026-10-03 07:57` above sweep `2026-10-03 07:49`.
- **Rule:** either branch fast-forwards on its own. **Whichever lands second needs a normal merge of the new main**, resolving S as above. No row text needs to change.

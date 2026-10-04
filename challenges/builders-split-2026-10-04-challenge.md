# Challenge: master/builders-split-2026-10-04

- Reviewed tip: `0466ff4c788d8371ef9d1cdcc2bc6eee0286c5a3` (one commit, parent main `cf10a0f53dc98279f12cd523be008879efff00fd`), read 4 Oct 2026 19:13–19:20 CEST.
- Rule read: `/workspace/artifacts/kaspa-master-watch/community-split-proposal-2026-10-04.md` L7, sha256 `348ea7ac30e44528cea78e8bf4220fb1f443228744650202b4d4136d10b5c4f5`.
- Authority: PROCESS.md on main. A branch with an open FAILED item does not merge.
- **Totals: 26 HELD, 5 FAILED, 0 UNVERIFIABLE.** 10 advisories.
- Outcome: **do not merge yet.** Core-developer material left the master (F1, F3), one kept line is stale (F2), the written rule and the moves disagree (F4), and one reference now dangles (F5).

## Branch shape

1. HELD: main is an ancestor (fast-forward). Evidence: `git merge-base --is-ancestor cf10a0f 0466ff4` exits 0; `git show -s --format=%P 0466ff4` = `cf10a0f53dc9…`.
2. HELD: identity is noreply only. Evidence: author and committer are both `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`, Sun 4 Oct 19:12:32 +0200.
3. HELD: scope is four files. Evidence: `git diff --numstat cf10a0f 0466ff4`: AGENTS.md +4/-0, README.md +12/-27, SNAPSHOT-HISTORY.md +1/-0, master.json +13/-139.
4. HELD: README board 51 → 34 rows. Evidence: row diff on `## Now`. 17 rows removed: the owner's 16 moved rows (Satoshi's Engine, x402 dispatch, x402 #22 and desk repos, x402, Name-service PoC, DOTK .k names, KaChat .kachat names, KNS review, Wallets and KCC-20, OpenMiner reference, danieliyahu1, kaspa-core (Flux), KASRANKS, 1984, KUSDT split, AgenC) plus Argent, which is counted as a split. 8 rows edited as splits (Covenant-id lookup L54, KCC-3/4/5 L65, Kas-Smiths L66, tictactoe L70, KRC-20 incident L72, saefstroem L77, Third-party 26 Sep L80, Do not weld L83) and 2 rows that only gain a pointer (This desk L67, Launch proof and binding L71). 24 rows unchanged. 16 + 9 + 26 = 51.
5. HELD: master.json `now` 52 → 36 and `x` 19 → 14. Evidence: a name diff of the `now` rows gives 16 removed (Kaspa-World-Eater/quorum, Argent, Name-service PoC, DOTK, KaChat, Wallets, OpenMiner, danieliyahu1, x402 #22, x402 bind the tag, Grok 4.7 KNS review, Flux, KASRANKS, 1984, KUSDT split, AgenC), plus `saefstroem / stroemnet` renamed to `saefstroem` (L126; url now `https://github.com/saefstroem`, chip catalog). Satoshi's Engine had no JSON row on main. The SNAPSHOT row's "16 JSON rows out" is the true count.
6. HELD: the JSON is canonical and the schema is unchanged apart from the removals. Evidence: `t == json.dumps(json.loads(t), indent=2, ensure_ascii=False) + "\n"` is True; `\u` count 0; top-level keys and section ids are identical to cf10a0f; every row still has exactly `name/url/chip/note`. The sections other than `now` and `x` are byte-identical, including bankquote, other, intel-githubs, intel-people, vision, agenc-export, learn, rnd-log, corpus-jul2026 and intel-freeze.

## (a) Rule, AGENTS.md and what left

7. HELD: the rule and the AGENTS.md paragraph agree. Evidence: word diff of proposal L7 against branch AGENTS.md L36. Wording changes only: "about the protocol" → "the protocol", "recorded as one line" → "as one line", "moves to the community repo" → "goes to [STP-KAS/kaspa-builders](https://github.com/STP-KAS/kaspa-builders)", "don't" → "do not", "(these go with the project's entry)" → ", which go with that project's entry", "the moved item" → "a moved item". AGENTS.md adds three things: "stp approved this rule on 4 Oct 2026 (19:06 CEST).", the link, and "Fact corrections stay in the master, and nothing leaves the master without landing in kaspa-builders." No clause differs in meaning.

8. **FAILED (F1): Argent is a core developer's own repo built on kaspanet code, and it left the master.**
   - Branch: README L71 says "Argent project status: see [STP-KAS/kaspa-builders]…", and the `now` row `Argent` is removed.
   - Rule clause, AGENTS.md L36: "statements by core contributors … and their own repos that build directly on kaspanet code".
   - Evidence that Argent is Sutton's repo: `gh api repos/argent-lang/argent/contributors` gives michaelsutton 86 commits, then a19q3 2, Manyfestation 2, IzioDev 2, WolfieOC 1. argent-playground is michaelsutton 34 (sole contributor).
   - Evidence that it builds on kaspanet code: main's own text calls it "Sutton multi-actor layer above Silverscript" (master.json `other` row `Argent`), "pinned to SilverScript v1.0.0", and `argent-runtime` waits on silverscript#256. RECEIPTS §5 lists "Argent through #60" as Sutton's own work.
   - Same class as kdapp, which stays: proposal row 87 "Sutton's own repo on rusty-kaspa … (clause c)".
   - The removed text also carries core contributors' statements in public Core R&D: Sutton's answers in that thread, and IzioDev [16114](https://t.me/kasparnd/16114) on `co_spent()` and `become`. Both links are gone from the branch (they remain in staging `entries/argent.md`).
   - The branch JSON still has 20 Argent-named rows in the untouched sections, so Argent would sit in both repos.
   - **Fix wording:**
     - Restore the README row `| Argent | … |` and the master.json `now` row `Argent` exactly as on cf10a0f, with the #66 sentence replaced by the F2 wording.
     - In README L71 and the JSON `Covenant launch proof and binding` note (L114), delete "Argent project status: see [STP-KAS/kaspa-builders](https://github.com/STP-KAS/kaspa-builders)."
     - In the SNAPSHOT 19:12 row, replace "Argent (row out; Sutton's argent#66 line now in Launch proof and binding)" with "Argent stays (Sutton's own repo on SilverScript; rule clause on core contributors' repos)". Change "**Split, 9:**" to "**Split, 8:**". The board becomes 35 rows and `now` 37.
     - Drop `entries/argent.md` and its `index-rows.md` / `builders-rows.json` items from staging.
     - Moving Argent anyway needs stp's explicit call plus an AGENTS.md exception naming it.

9. **FAILED (F3): `rk-with-tcp` is a core contributor's rusty-kaspa fork branch. It was moved and mislabelled as covenant-id tooling.**
   - Branch L54 (and the JSON `Covenant-id lookup and tooling` note, L42): "Third-party indexers and tooling until that endpoint exists (kascov, ChainAgnostic#193, the `rk-with-tcp` fork branch): see [STP-KAS/kaspa-builders]…".
   - Evidence: `gh api repos/elldeeone/rusty-kaspa/branches/rk-with-tcp` gives tip `09fc0ba5c03f5c4a1c3b981be50f1e10606024c8` "fix(libp2p): allow DCUtR after private probe". Compared with kaspanet:master: diverged, 15 ahead and 13 behind.
   - Staging `entries/covenant-id-tooling.md` L26 says it "tests inbound links between private nodes". That is node P2P work, not covenant-id tooling and not third-party.
   - elldeeone has merged kaspanet/silverscript code (contributors API; silverscript PR #138). That makes him a core contributor under the rule's own definition, so his rusty-kaspa branch is "kaspanet code" under any reading.
   - **Fix wording:** in README L54 replace "(kascov, ChainAgnostic#193, the `rk-with-tcp` fork branch): see [STP-KAS/kaspa-builders](https://github.com/STP-KAS/kaspa-builders)." with "(kascov, [ChainAgnostic/namespaces#193](https://github.com/ChainAgnostic/namespaces/pull/193)): see [STP-KAS/kaspa-builders](https://github.com/STP-KAS/kaspa-builders). elldeeone [`rk-with-tcp`](https://github.com/elldeeone/rusty-kaspa/tree/rk-with-tcp) (`09fc0ba5`, 25 Aug) is a rusty-kaspa fork branch for inbound links between private nodes ([post](https://x.com/elldeeone/status/2085199203903721856)); no upstream pull." Mirror this in the JSON L42 note. Drop rk-with-tcp from the staging entry title, index row and sources.

10. **FAILED (F4): the written rule keeps several items that the branch moves.**
    - AGENTS.md L36 keeps "their own repos that build directly on kaspanet code". It also keeps "any reference implementation that a KIP or KCC status gate names or waits on".
    - The branch moves these, on reasons that are not in the written rule (proposal rows 74/75: "an app, not kaspanet code", "third-party name service"):
      - **DOTK .k names** (supertypo: merged rusty-kaspa code per the contributors API). `supertypo/dotk-core` Cargo.toml L15–19 pins `kaspa-consensus-core`, `kaspa-txscript`, `kaspa-addresses`, `kaspa-wrpc-client` and `kaspa-rpc-core` from kaspanet/rusty-kaspa rev `a41a333b`.
      - **simply-kaspa-dnsseeder** line (supertypo). crawler/dns Cargo.toml use `kaspa-p2p-lib` and `kaspa-consensus-core`.
      - **stroemnet** (saefstroem: KIP-16 author, merged rusty-kaspa #775/#953/#861). Cargo.toml L81–82 pins kaspanet/rusty-kaspa tag v1.1.0. `crates/data` uses `kaspa-txscript` and `kaspa-rpc-core`.
      - **x402** rows (elldeeone). SilverScript covenants, and the demo vendors kaspa-wasm 2.0.0 (cf10a0f README L80).
      - **Name-service PoC** (IzioDev: merged rusty-kaspa/silverscript/kccs code), in Sutton's argent-playground.
      - **Kaspa-World-Eater/quorum**. kccs#29 (open, head `557428618eb8`) has a "## Reference Implementation" section in kcc-0003.md L140, kcc-0004.md L109 and kcc-0005.md L94 naming the quorum repository. KCC-0 L77 requires "(before finalization) a reference implementation", and its Final gate 2 requires an implementation "linked from the KCC or its pull request". The branch's own pointer (L65) calls it "Reference implementation".
    - The SNAPSHOT 19:12 rule summary narrows "names or waits on" to "waits on".
    - Moves I judge correct under the rule:
      - OpenMiner (ASIC chip research, not kaspanet code).
      - KaChat (vsmirn0v: no kaspanet contributions).
      - Wallets and KCC-20, danieliyahu1, Flux, KASRANKS.
      - KNS review (a desk test of a third-party project).
      - 1984/KUSDT/AgenC (stp's apps).
      - Satoshi's Engine (essay).
      - x402 #22 and desk repos (desk greps of a third-party project).
    - **Fix wording.** Option A amends AGENTS.md and needs stp's OK, because it changes the 19:06-approved text:
      - In AGENTS.md L36 replace "plus any reference implementation that a KIP or KCC status gate names or waits on;" with "plus any reference implementation that a KIP or KCC merged on main names in a status gate or waits on (a reference implementation named only by an open KIP or KCC pull moves, with a pointer);".
      - Replace "and their own repos that build directly on kaspanet code;" with "and their own repos that extend kaspanet code itself (a rusty-kaspa or vprogs fork branch, or a demo, study or language layer of a KIP or a kaspanet repo, such as kdapp, vprog-tictactoe, kaspa-xmss and Argent);".
      - After "payment rails, research repos and essays;" insert "products built with kaspanet crates or SilverScript (name services, indexers, swap channels, payment rails, DNS seeders), even when a core contributor writes them;".
      - Use the same words in the SNAPSHOT 19:12 row's **Rule:** sentence.
    - **Fix wording,** option B, if stp keeps the rule as written: restore from cf10a0f the DOTK .k names, x402, x402 dispatch and Name-service PoC rows; the stroemnet and simply-kaspa-dnsseeder sentences; the quorum reference sentence in KCC-3/4/5; and their JSON rows.

11. HELD: the splits match the rule.
    - Kas-Smiths: ezira topic 155, the 22 Sep desk replies and the KasCov API claim out; the topic-156 history line stays.
    - tictactoe: the kascov counts out; the core demo pin stays.
    - KRC-20 incident: one off-chain line stays.
    - Third-party 26 Sep: Kurncy and umbrel-apps#6120 out; rusty-kaspa #1140 and the pool post stay.
    - Do not weld: the third-party welds out, the core welds stay.
    - Evidence: `git diff --word-diff=plain cf10a0f 0466ff4 -- README.md`, plus JSON note diffs.
12. HELD: no other kaspanet, KIP, official-source or history item left, except as noted in F1/F3/F4.
    - Evidence: every removed link on a kaspanet, kaspa.org, research.kas.pa, kips.dev/kccs.dev, kasparnd or Sutton domain was listed (script `/workspace/scratch/chk-split/removed.json`). Results:
      - Kept in the branch: silverscript v1.0.0, silverscript#256 comment, Sutton 2106033659698450492, api-tn10 root.
      - Gone: only the two rusty-kaspa `01b532e8` source links (covenant_id.rs, hashers.rs#L32) and two api-tn10 tx links, all inside the KaChat desk recompute, plus kasparnd 16113/16114 (F1).
13. HELD: the 5 removed `x` handles are exactly the 5 rows with chip `community`, and none is a core contributor.
    - Evidence: cf10a0f `x` chips show `community` only on @kaspaunchained, @KASPAglobal, @Kaspa_Commons, @BankQuote and @KaspaScopio.
    - KaspaScopio's silverscript #250/#251 are open and unmerged (`gh api` 4 Oct). `search/issues org:kaspanet author:KaspaScopio is:pr is:merged` total_count 0.
    - RECEIPTS §5 itself marks them "Non-representative community account", "Not core" and "Community educator … **Not core.**" The rule moves "community X accounts". See A2 on the §5 title.
14. HELD: both guards stay. Evidence: master.json L192 `Do not weld` still contains "SilverScript Studio into a Kaspa core tool" and "olafweller/kaspa-privacy-initiative into a KIP or Core product". The README Do-not-weld row did not carry them on cf10a0f either.
15. HELD: the KRC-20 incident keeps the one off-chain line. Evidence: branch README L72 "traces it to a signature bypass in the off-chain Kasplex KRC-20 indexer, not Kaspa L1 … Third-party report." The removed Igra/bridge sentence (ReconProtocol 2102789086125658294) is in staging `entries/krc20-incident.md`.

## (b) Kept and split lines

16. **FAILED (F5): a kept row now dangles.**
    - master.json L1236–1239 (section `other`, row `KaChat`): "Desk recompute of the covenant id and template hashes (3 Oct): see the now row KaChat .kachat names." That `now` row is removed on this branch.
    - **Fix wording:** replace that sentence with "Desk recompute of the covenant id and template hashes (3 Oct): see STP-KAS/kaspa-builders https://github.com/STP-KAS/kaspa-builders (entry name-services)."
    - Staging `entries/name-services.md` carries the recompute (10 KaChat mentions; L12 "recomputed 3 Oct, no node").
17. HELD: no split leaves an unsourced claim. Every remaining claim in L54, L65, L66, L70, L72, L77, L80 and L83 keeps its link or hash:
    - #991, #969, IzioDev posts, kips.dev/kccs.dev.
    - #29 `55742861`, Kas-Smiths #148, the desk comment.
    - Post 400 and kips#41.
    - `533e8a55`, `b32e92de`, `055ae28a`, Max 2103466359246270526.
    - Recon 2101642546803863779.
    - #775/#953/#861/#17/#25/#24/#31.
    - #1140 and the asaefstroem post.
18. HELD: the saefstroem JSON rename (L126) mirrors README L77 (KIP-16, `0xa6`, #775/#953/#861, KCC-0 #17 via #25, open #24/#31). The @asaefstroem `x` note (L960) loses only the stroemnet/stroemwallet/mcp-http sentence.
19. HELD: there is no other dangling "see the … row" reference in README.md or master.json. Evidence: a regex scan for "now row / see Now / the <moved item> row" over the branch files finds only the F5 hit and an unrelated TN10 SNAPSHOT pointer. RECEIPTS is covered in A3.

## (c) Pointers and SHAs

20. HELD: the pointers name the repo consistently. README has 5: intro L11, L54, L65, L67, L71. master.json has 4: L42, L90, L114, L210. AGENTS.md has 1 and SNAPSHOT 1. All are `STP-KAS/kaspa-builders` → `https://github.com/STP-KAS/kaspa-builders`. `git grep -i 'kaspa-builder[^s]' 0466ff4` finds no variant.
21. HELD: `9592dd99` is right for the date cited. Evidence: `gh api repos/argent-lang/argent/pulls/66/commits` lists `9592dd996d25` (2 Oct 13:38:38Z, "remove the impl process from the guide") as commit 12 of 14, the head before Sutton's post at 14:48Z. The staging full SHA `9592dd996d2503eb166335d6da92548de193877f` matches.
22. **FAILED (F2): argent#66 is no longer open.**
    - Branch README L71 and JSON L114 say "points at open argent#66 (genesis-proof tooling, head `9592dd99`, not merged)".
    - Evidence: `gh api repos/argent-lang/argent/pulls/66` gives state closed, merged true, merged_at 2026-10-04T12:04:19Z (14:04 CEST), merged_by michaelsutton, merge commit `03d670217b7139ee452e1c50d109f600ed85d94d` ("Add layered covenant genesis proof APIs and CLI tooling (#66)", now master tip). Head `aab8fe1e8c53`, 2 commits ahead of `9592dd99` (compare API: ahead 2, behind 0). Tags API: 0 tags.
    - AGENTS.md: "Fact corrections stay in the master."
    - **Fix wording:** in README L71 replace "points at open [argent#66](https://github.com/argent-lang/argent/pull/66) (genesis-proof tooling, head `9592dd99`, not merged) and expects every stateful covenant to publish that link." with "points at [argent#66](https://github.com/argent-lang/argent/pull/66) (genesis-proof tooling, then open at head `9592dd99`) and expects every stateful covenant to publish that link. Sutton merged #66 on 4 Oct 12:04Z (14:04 CEST) as [`03d67021`](https://github.com/argent-lang/argent/commit/03d670217b7139ee452e1c50d109f600ed85d94d) (PR head `aab8fe1e`, two commits past `9592dd99`). No tag." Make the same change in the JSON L114 note and, if Argent is restored (F1), in its row.
    - In staging, `entries/argent.md` L8/L12, `index-rows.md` L11 and `builders-rows.json` ("open #66") should say merged. `do-not-weld.md` L9/L13 "argent#66 open into merged or a tag" should become "argent#66 merged into a tag or a release".

## Independent removed-content check

23. HELD: every removed link, hash and word is either in staging or still in the branch.
    - Method: my own scripts `/workspace/scratch/chk-split/removed.py` and `check.py`. They take every removed README/JSON/AGENTS line from `git diff cf10a0f 0466ff4` (98 pieces, about 90.7k chars) and search the staging tree.
    - Links: 167 checked, 1 not in staging (`https://x.com/Max143672/status/2103466359246270526`), which is still in the branch (tictactoe L70).
    - Relative links: 4, 0 missing.
    - Hashes: 161 checked, 1 not in staging (`055ae28a`), which is still in the branch (L70 and the JSON Do-not-weld note).
    - Words: 2,503 tokens, 0 missing from both staging and branch.
    - The owner's 159 links / 175 hashes use a different tokenization. The conclusion is the same.

## SNAPSHOT

24. HELD: the SNAPSHOT row is newest first and its counts are right.
    - Evidence: SNAPSHOT-HISTORY.md L11 `2026-10-04 19:12` sits above L12 `2026-10-04 19:01`.
    - Its counts (16 README rows moved, 9 split, 16 JSON rows out, x 5 out) match items 4, 5 and 13.
    - SATOSHIS-ENGINE.md, GROK-47-KNS-REVIEW.md and KASRANKS.md exist at 0466ff4 (`git cat-file -e`).
    - The six sections it lists as not touched are byte-identical.
    - It also states the Argent split, the rule summary and the argent#66 line; those follow F1, F2 and F4.

## Leaks

25. HELD: the branch adds no new leak.
    - Evidence: a scan of the 33,082 bytes of added lines for real names from RECEIPTS §5, home-directory paths, emails, key/seed markers and the private stall-repo name finds none newly introduced.
    - The only hits are the KIP header spelling and one full real name in the @asaefstroem `x` note, carried over unchanged from cf10a0f (see A9).
    - The This desk private-name list is unchanged from main.

## Staging (not in git; paths and checksums reviewed)

26. HELD: staging layout `/workspace/artifacts/kaspa-builders-staging/2026-10-04/` (27 files, 18 entries). sha256 values:

```
5e6bedd2fc1ee82324d52a0d07dbde38115cd9041bb1b806a6c810e12078eaf8  README-STAGING.md
a28bf47373081fe4b7293882df262079a1457f25a3a6037e4ca6d98d0c0fb1dd  builders-rows.json
f3e8d2da6f8642fbb20c0388f72ff571570337203f69ba63a3993902cc2218f1  do-not-weld.md
918ac6dea81fd8acb297e1f29b07cb6cd1e30bec15227b31beae1b7f49878684  docs/GROK-47-KNS-REVIEW.md
c885deddcaf56e25f7703328f8163df4be66df463528b97b380766f2647c235d  docs/KASRANKS.md
5c9c1f5b60487ef5f6caf688454b50f25d2c2f020880b9d1aae1c6e86d513388  docs/SATOSHIS-ENGINE.md
c3f31d4bb922622d41bb0313c01405eb927c7dadcdfd172faa8f6970c0891992  entries/1984.md
e8ed5c94b33cdb10a4eacb390fc4c1793cc66bdf270e80a25de990b5ee343ca5  entries/agenc.md
1f3328bafad0c0d86b5a84c0152ee63666c19f0f99580fd8ff2c70a7783c9423  entries/argent.md
884628c22930c0f38682703c03cabf1fad8e175dc8e03c441fe7852d1c5016b7  entries/covenant-id-tooling.md
0b844a8191926d53195c70d444531f92efb8da7e2b5f2c483a925580cbc90074  entries/danieliyahu1.md
f58bb1d12b06fe66ad1ec4f17ccb6556d5b58e3a491e7d18b109b03c8a2eced2  entries/kas-smiths-threads.md
5ba3ea3df7fffa571a540943bf01d1e385041ee2cd77a4bca1425dac55c68682  entries/kaspa-core-flux.md
71bc02381adf55a8a8e8c44aac2b24214e80bc9ba549b4c7e41a4446fa2405c9  entries/kasranks.md
1743a74af44f4837e60bd050d216b2ef12f5fcd72bae36a918416b5ab4e85a9d  entries/krc20-incident.md
e838f17b6f9601df6a3d5ca81e163d2bec921716cfd7165524cdfe87d7e61328  entries/kusdt-split.md
e9e5dbf150451bef8aacc366293ad9d8ef0524a2cef173e106abc501a542d351  entries/name-services.md
91cc1d7d9799e4f6b30180f71be10a30db766a486a60d6b3d84526f134cf8b19  entries/node-tools-third-party.md
cd1c54bc6cf4a744088b67662f6cae88f15f9e8970f49f867355c8054f33f78c  entries/openminer-reference.md
039d2a79f93c6a5b3255a8c3469db602279b89dedad89bf4629f300f9b1d94e7  entries/quorum.md
40fcc37d4285a33115840440b13f5da6469151068adc6fb25f76f50814ff185e  entries/satoshis-engine.md
8e64740aef76593d1ee4335530a7d11d76afb3086a800732a19fa734799c386b  entries/stroemnet.md
cc10de0e75f436d37980549d4686a3993527954591ba8be440edc41a22c59292  entries/wallets-kcc20.md
eba21df2fd2f0ef5d8f8019fd30d237a2b3542a8a3b44f919e72e450860f592c  entries/x402.md
8b34b302b463592972eecaf671887a599250cc1ebd516e15000ead01e7828561  index-rows.md
32e44027ed92e5f4761a5252da9c49e4e0462ebfe797c829ea9ae65217c85220  people.json
ff3a7a6cc6bada43b127400b1210c60527ba499524a636dd7cac26592db3a50c  people.md
```

27. HELD: staging carries sources and caveats.
    - Every entry has links (7 to 126 URLs each).
    - Per-entry caveats were checked by grep, for example:
      - kaspa-core-flux "Not desk-tested".
      - name-services "Not KNS", "Not merged".
      - quorum, stroemnet and x402 "Not mainnet".
      - stroemnet "unaudited".
      - argent "not observed", "Not merged".
      - "Author claims" / "Third-party" on the third-party entries.
    - Each entry states what the master keeps. The words check (item 23) shows that no removed caveat word is lost.
28. HELD: the staging JSON is canonical. Evidence: `builders-rows.json` and `people.json` both equal `json.dumps(indent=2, ensure_ascii=False) + "\n"`, with 0 `\u` escapes. `people.json` holds the 5 `x` rows with chip `community` and their `moved_from` provenance.
29. HELD: staging has no leaks. The same leak regex over the staging tree finds only a false positive ("install" in docs/GROK-47-KNS-REVIEW.md L88). No home paths, emails or private repo names.

## Public seed STP-KAS/kaspa-builders (read-only GET; nothing created or pushed)

30. HELD: the seed is as reported.
    - Evidence: `gh api repos/STP-KAS/kaspa-builders/commits` gives one commit, `d4b94ad9944f5f7603ee5db79c460119a3974f7b`, 2026-10-04T17:05:49Z (19:05 CEST), noreply.
    - The repo was created 17:04:07Z (19:04 CEST). The staging content above is not in it yet (A1).
    - Files fetched to `/workspace/scratch/kb-seed/`, sha256:

```
96aec9d8d3dccd123917d78b0df9282c7ee59ddead8a51bd132899d4f6971f5e  AGENTS.md
7e0026cf4a84a3c7e0a7945a4e1844517848ba44558a3753018612a5d9b8f548  README.md
6313d2ca4e4a3b3aafef1877341a9bf018aa7948b228d7fd69e90de515eab7bd  SNAPSHOT-HISTORY.md
d2431cc7fd655d5ba0b4842fa6e69f005d13e7d96219fc18a3c485400bb627a2  builders.json
071673e516f87648e5ec054ca527bec9e6c320488d7145ceaf1d06f1ab3c8fbb  entries/kasperolabs-silverscript-studio.md
82b80bec79508d1f2f8fe9947f7b5a4a790d3bacf0f1b289dd1b36954b5f7efe  entries/olaf-weller-kpi.md
```

31. HELD: the KPI entry matches note `43a3c64f5a72580cf54ab552699245b7a1481076`.
    - Chain facts: release tx `29d875bb…` in chain block `c38a5439`, accepted by `c8dc02dd`. Funding `67aab5bf…:0` is 1,020,000,000 sompi; fee 0.2 tKAS; the 576-byte redeem BLAKE2b-256 equals the reserve.
    - KIP mapping: KIP-16 `0xa6` tag 0x20; introspection is KIP-10/KIP-17/KIP-20, not "KIP-17" alone.
    - The tests are log-based, and the left-out claims are listed.
    - `dc2f176d440d1f96fb464c7e92219d3e1964d12e` = 2 Oct 14:23Z "Update AGENTS.md for post-publication workflow". `3a1efa8db9672025f5282970703cb7256428c1be` = 3 Oct 19:12:17Z "PoC A0/A0.5: live TN10 proof-gated reserve release" (`gh api …/commits/<sha>`).
    - README quotes at `98aa99fa` L7 "Do not use experimental code with real funds." and L205 "AI-assisted adversarial review has occurred. It is not independent human security review" match.
    - Issue #19 is open ("Research: post-quantum requirements and migration strategy").
    - "merged at `7a54145`" holds: `7a54145` (child of `25c96e4`) is on main.
    - "(35 HELD, 0 FAILED, 1 UNVERIFIABLE)" matches my wellerolaf note.
    - The "Not a privacy pool" caveat is in seed README.md, the KPI entry and builders.json.

## Advisories (do not block)

- **A1 (merge gate):** the new AGENTS.md sentence "nothing leaves the master without landing in kaspa-builders" is not yet true. kaspa-builders `d4b94ad9` holds only the KPI and KasperoLabs entries. Merge this branch only after the staging tree is pushed to kaspa-builders and each entry is verified there. Record that commit in the SNAPSHOT row.
- **A2:** RECEIPTS §5 is titled "Core + builder X handles" and still lists @kaspaunchained, @KASPAglobal, @Kaspa_Commons and @BankQuote. `x` now holds only founder, core, research, history, ss and this. Suggest one line under §5: "Community accounts moved to STP-KAS/kaspa-builders on 4 Oct 2026; master.json `x` keeps core and SilverScript people."
- **A3:** RECEIPTS L584 "Own experiment: stroemnet, see **Now**" and L586 "kccs#24 notes are on **Now**" now point at Now content that is gone.
- **A4:** the README row "Third-party 26 Sep" (L80) now holds only kaspanet #1140 and a core contributor's post. Suggest renaming it, for example "26–30 Sep notes".
- **A5:** Kas-Smiths L66 "No new desk post." followed the 22 Sep desk replies that left. Suggest "No desk post since 22 Sep."
- **A6:** in the Covenant-id pointer, ChainAgnostic#193 (a CAIP-2/CAIP-10 namespace pull) loses its link and is grouped under "indexers and tooling". F3's wording fixes both.
- **A7:** the SNAPSHOT 19:12 rule summary differs from AGENTS.md: "waits on" against "names or waits on", and "their repos built on kaspanet code". Keep the summary word-for-word with AGENTS.md.
- **A8:** the seed filename `entries/olaf-weller-kpi.md` uses a display name. A handle slug (`olafweller-kpi.md`) fits the handles-not-names rule. The seed was not changed here.
- **A9:** the @asaefstroem `x` note (L960) re-commits a full real name that is already on cf10a0f. It is not new, but it could become handle-only while the line is being edited.
- **A10:** the owner's script totals (159 links, 175 hashes) and mine (167, 161) differ by tokenization. Neither found a lost fact.

## Not done

- No public posts, no X calls, nothing sent to anyone.
- Nothing created or pushed in STP-KAS/kaspa-builders.
- No TN10 reads were needed for this pass.
- `/workspace/repos/kaspa-master-file` was not touched.

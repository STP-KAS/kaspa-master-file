# Challenge: STP-KAS/kaspa-builders seed

- Reviewed: `STP-KAS/kaspa-builders` main @ `d4b94ad9944f5f7603ee5db79c460119a3974f7b`. Read-only clone at `/workspace/scratch/kb-clone` (push URL disabled), read 4 Oct 2026 19:35–19:50 CEST. Nothing was pushed, opened or commented in kaspa-builders or in any source repo. No X calls: X items were checked against the raws already on the box and against snowflake id timestamps.
- Sources used:
  - my note `43a3c64f5a72580cf54ab552699245b7a1481076` (`challenges/wellerolaf-2026-10-04-challenge.md`, n0 receipts C1–C8, G1–G4, X1–X5);
  - the master's history (`25c96e4`, `7a54145`, `220fa36`, `b567a48`, all ancestors of main `cf10a0f`);
  - GitHub API GETs;
  - the raws `/workspace/artifacts/kaspa-master-watch/raw/2026-10-04/wellerolaf/{page1.json,fulltext-posts.json}` and `/workspace/artifacts/kaspa-master-backfill/raw/kasperolabs-2026-10-03-{page1,profile,search-gap-check}.json`;
  - the maker report `/workspace/artifacts/kaspa-master-reports/kaspa-privacy-initiative-2026-10-04.md`.
- **Totals: 17 HELD, 1 FAILED, 0 UNVERIFIABLE.** 6 advisories.

## Files at d4b94ad (sha256)

```
96aec9d8d3dccd123917d78b0df9282c7ee59ddead8a51bd132899d4f6971f5e  AGENTS.md
c95bae1d1ce0235ecccd3560b772ec1efb97f348a79f0fbe0a634f0c2ccefe2c  LICENSE
7e0026cf4a84a3c7e0a7945a4e1844517848ba44558a3753018612a5d9b8f548  README.md
6313d2ca4e4a3b3aafef1877341a9bf018aa7948b228d7fd69e90de515eab7bd  SNAPSHOT-HISTORY.md
d2431cc7fd655d5ba0b4842fa6e69f005d13e7d96219fc18a3c485400bb627a2  builders.json
071673e516f87648e5ec054ca527bec9e6c320488d7145ceaf1d06f1ab3c8fbb  entries/kasperolabs-silverscript-studio.md
82b80bec79508d1f2f8fe9947f7b5a4a790d3bacf0f1b289dd1b36954b5f7efe  entries/<KPI entry>.md
```

## Repo, process, identity

S1. HELD: the repo is as described.
- `gh api repos/STP-KAS/kaspa-builders`: public, default branch main, created 2026-10-04T17:04:07Z (19:04 CEST), pushed 17:05:51Z (19:05 CEST).
- One branch (`main`) and 0 pull requests (`pulls?state=all` length 0).
- One commit, `d4b94ad9944f…`, author and committer both `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`, 4 Oct 19:05:49 +0200.

S2. HELD (recorded as fact): the seed was pushed straight to `main` with no challenge pass.
- The seed's own AGENTS.md L38 says "**Only kaspa master bot merges to `main`**, and only after stp's OK and a kaspa master challenge pass with 0 FAILED". README L15 says "Changes go through branches and a challenge pass".
- The seed's SNAPSHOT row discloses it: "The seed went straight to `main` because the repo was new."
- This note is the first challenge pass on that content. It was written after the push.

S3. HELD: the README points back to the master. README L3 "Companion to [STP-KAS/kaspa-master-file](https://github.com/STP-KAS/kaspa-master-file)". L5 "The master file keeps Kaspa core, kaspanet code, KIPs, credible sources and history". AGENTS.md L8 says the same. `builders.json` has `"companion": "https://github.com/STP-KAS/kaspa-master-file"`.

S4. HELD: builders.json is valid and canonical. `t == json.dumps(json.loads(t), indent=2, ensure_ascii=False) + "\n"` is True, with 0 `\u` and a trailing newline. It has 2 entries matching the 2 README index rows (same names, chips and pages). See SA2 on the `page` key.

S5. HELD: no leaks.
- `grep -r` over the clone for home-directory paths, `/workspace`, `/tmp`, emails, STP-KAS private repo names and the private stall-repo name finds only AGENTS.md L20/L22 (the rule text and the noreply address).
- No key, seed or reserve-key material.
- Handles are used throughout. The one display name is in the KPI entry's filename (SA4).

S6. HELD: LICENSE is Apache-2.0 (`Apache License, Version 2.0`). That matches README L36 and the commit message.

S7. HELD: the caveats are present.
- "**Not a privacy pool**": README L29, KPI entry L3 and L52, builders.json note.
- "Not desk-tested" and "AI contract code needs review before real KAS": README L30, KasperoLabs entry L3, L33–L34, builders.json note.
- "Single-party trusted setup per claim", "AI-written, unaudited", "A demo, not an L1 product" and "'Live on mainnet' is the author's claim" are all present.

## KPI entry (against note 43a3c64)

S8. HELD: the chain facts match C1–C8 exactly.
- Release tx `29d875bbdf31cb14205b6f429d63c475b9ad85e558e932b1c70ff1dbc0e2b554` is in chain block `c38a5439db59c576…6210` (3 Oct 17:56:48Z) and is accepted by `c8dc02dd15e6451f…1a6f`.
- Input `67aab5bfb85e9fb1…004f:0` has compute budget 1700. The output is 1,000,000,000 sompi to `kaspatest:qr33u5pn…s38lsrz4`, `covenant: null`. Compute mass 171335, storage mass 20 (C7).
- Funding is in `8ec273b7be634625…cdf2`, accepted by `bacfa5f142345086…334e`. Output 0 is 1,020,000,000 sompi to `kaspatest:pqc9cdt4…lxjzegy`. Fee 0.2 tKAS.
- BLAKE2b-256 of the redeem is `305c3575…d977`, and the SPK is `0000 aa20 <hash> 87`.
- Every full hash and address string is in the note (grep count ≥ 1 each).
- The times "18:01 and 18:18 CEST" match the 25c96e4 SNAPSHOT row ("~18:01") and the note's 18:18 recheck.

S9. HELD: the opcode and KIP mapping uses the note's corrected wording.
- KIP-16 `0xa6`, tag 0x20. KIP-10 for 0xb3/0xb4/0xbe/0xc2/0xc3. KIP-17 for 0xba/0xbb and 0x7e/0x7f/0xcd. KIP-20 0xd6 only to require −1. No covenant id.
- Spot checks: kips `e4ae2332` kip-0020.md L250 is "`OpOutputAuthorizingInput` (0xd6): … or `-1` if the output has no covenant binding"; rusty-kaspa `01b532e8` `zk_precompiles/tags.rs` L9 is `Groth16 = 0x20,`.

S10. HELD: the repo facts hold. `gh api`, 4 Oct:
- main is still `98aa99fa8230f5eb490e0af4e3da0291260581d6` (2026-10-04T11:24:38Z). Apache-2.0, created 2026-10-02T13:55:36Z, not a fork.
- PR #22 is open and draft, head `2590e392ef97af6ea81aa8fc177a3996a7fa93a7`.
- `dc2f176d440d…` is 2 Oct 14:23Z and `3a1efa8db967…` is 3 Oct 19:12:17Z "PoC A0/A0.5: live TN10 proof-gated reserve release".
- README @ `98aa99fa`: L203 contains "Single-party setup provenance remains a trust assumption", L205 the AI-review sentence, L7 "Do not use experimental code with real funds.", L237 "initiator / project steward".
- `poc/a0/Cargo.toml` pins `ark-* = "=0.6.0"` ("arkworks 0.6").
- Issue #19 is open: "Research: post-quantum requirements and migration strategy".

S11. HELD: the desk build counts match note G4 (log-based): 7/7, 2 accepted + 28 rejected = 30 cases, 13/13 on Node 22, the Node 20 load failure, and A1 "19 passed + 1 passed". The labels "19 unit + 1 transport" and "The 46 Python tests and the G2–G5 evidence generators were not run" come from the maker report L33 (a box-local file), not from 43a3c64. See SA5.

S12. HELD: the X items match the raws and the snowflake times.
- Times, decoded as `(id >> 22) + 1288834974657` ms, labelled CEST in the entry:

| Post | Time (CEST) | Seed says |
|---|---|---|
| 2106031612945199511 | 2 Oct 16:40 | ✓ |
| 2106458391107236016 | 3 Oct 20:56 | ✓ |
| 2106523383844229492 | 3 Oct 23:14:46Z | ✓ (given in UTC) |
| 2106519428741341529, 2106532082352873797, 2106700072159256895 | 4 Oct 00:59, 01:49, 12:56 | "00:59–12:56" ✓ |
| 2106770656452829663, 2106773440338247750, 2106774728690065588 | 17:37, 17:48, 17:53 | "17:37–17:53" ✓ |
| 2106339130007285802, 2106341386127638831 | 3 Oct 13:02, 13:11 | ✓ |
| 2106346055864352923 | 3 Oct 13:30 | ✓ |
| Max143672 2105992874458235122 | 2 Oct 14:06 | ✓ |

- Quotes and paraphrases checked against `fulltext-posts.json` and `page1.json`:
  - "No privacy protocol yet, no notes/nullifiers".
  - "No new token. No custodian. No predetermined architecture."
  - Partial release with the remainder locked, then independent-machine recovery.
  - "This is not a final design".
  - "keep the initial scope focused on native KAS … avoid architecture choices that would unnecessarily prevent KCC20 support later".
  - "a per-private-operation fee and a permissionless prover/executor market".
  - Max's three directions: groth16/risc0, native UTXO contention, vprogs.
- Coverage holds: page1 starts 30 Sep 16:10:18Z (18:10 CEST), and 63 read / 19 kept matches X4.
- The sweep query holds: `watchlist.json` has `from:WellerOlaf) -is:retweet -is:reply`.

S13. **FAILED (S-F1): the post-quantum item puts another account's words in his post.**
- KPI entry L66: "**Post-quantum criterion** ([2106346055864352923](…), 3 Oct 13:30): a Groth16 wrap trades away PQ security; tracked as repo issue #19."
- Post 2106346055864352923 (fulltext raw) reads: "Good point. I think quantum resistance should explicitly be one of the criteria when we compare proof systems, alongside proving cost, verification cost, hardware requirements and security assumptions. I wouldn't want us to trade it away for efficiency without making that trade-off very explicit." It does not mention Groth16.
- The Groth16 sentence comes from the post it replies to: @aglovale0x 2106177235208020281 (3 Oct 00:19:18Z, `page1.json` includes): "using a groth16 wrap trades future quantum resistance for proof/verifier costs".
- The maker's backfill report had it right ("after @aglovale0x: a Groth16 wrap trades away PQ security"); the seed dropped the attribution.
- **Fix wording:** replace L66 with "- **Post-quantum criterion** ([2106346055864352923](https://x.com/WellerOlaf/status/2106346055864352923), 3 Oct 13:30, reply to @aglovale0x [2106177235208020281](https://x.com/aglovale0x/status/2106177235208020281), who wrote that a Groth16 wrap trades future quantum resistance for proof/verifier costs): quantum resistance should be an explicit criterion when comparing proof systems, and he would not trade it away for efficiency without saying so. The repo tracks this as issue #19; A0/A1 use BN254 Groth16, which is not post-quantum."
- Make this change on a branch with a challenge pass, not straight to main.

S14. HELD: the KPI provenance holds. `25c96e4` (row added, 18:16 CEST), challenger pass `43a3c64` "(35 HELD, 0 FAILED, 1 UNVERIFIABLE)", "merged at `7a54145`" (`7a54145` is a child of `25c96e4` on main) and `220fa36` (19:01:47 +0200, on `master/community-move`, now on main) all check out with `git show` and `git merge-base --is-ancestor … cf10a0f`. "Left out: PhantomPool, KASperiencexyz, teoscure" matches 43a3c64 L119–L121.

## KasperoLabs entry

S15. HELD: the text matches what the master removed, and nothing was lost.
- The master row `Third-party 26 Sep` at `b567a48^` carries the same facts: 25 Sep 19:18Z mainnet claim, hand / wizard / SilverScript-only AI, Kasware/Kasla/Kastle with Kastle deposit only, vertex relay 2103759384694185988, MIT, created 28 Sep 21:28Z, tip `e27a7c4e` 3 Oct 22:39Z, the kasdash demo and post, #1140 open with no comments, "Not desk-tested".
- Token check of everything `b567a48` removed (6 links, 4 hashes, 3 post ids, 50 words) against the seed: all present except the word "earlier", which the seed rephrases.
- For `220fa36`: every link, hash and id is in the seed or still in cf10a0f (the kept research.kas.pa row).
- "This was the source the master cited first" holds: `git log -S` shows 2103759384694185988 first in `8aae671` (26 Sep) and 2103564787686793710 first in `dd798d2` (4 Oct).

S16. HELD: the GitHub and site facts hold.
- `users/kasperolabs`: type User, blog https://kasperolabs.com, twitter_username KasperoLabs.
- `repos/kasperolabs/silverscript-studio`: MIT, created 2026-09-28T21:28:34Z, fork false. main = `e27a7c4ec91d5b33eed8c51c9dfef8fbb45f6f0b` (2026-10-03T22:39:10Z).
- rusty-kaspa #1140: kasperolabs, 2026-09-30T04:43:20Z, open, 0 comments, title as quoted. `search/issues org:kaspanet author:kasperolabs` total 1, so it is the account's only kaspanet issue. Code search for "gas tank" in kaspanet/kccs: 0.
- `curl` kasdash.html returns 200, and its source contains `"Run it for real" deploys a DoorDashEscrow covenant on mainnet through the S[tudio]`.
- kasperolabs.com links `github.com/kasperolabs`.

S17. HELD: the X facts hold, against the 3 Oct backfill raws.
- Profile: id `1883537666429313025`, created 2025-01-26T15:29:32Z, name "Kaspero Labs", url kasperolabs.com, pinned `2106350037680988279`.
- page1 holds 24 posts, `meta` has no `next_token`, range 22 Sep 20:54Z – 3 Oct 16:25Z. The gap search `from:KasperoLabs` for 3 Sep – 22 Sep 20:54Z returns `result_count 0`, `fetched_at 2026-10-03T19:2x+02:00` ("read ~19:20 CEST").
- All 13 cited post ids are in page1, with the stated UTC times: 25 Sep 19:18; 26 Sep 05:03–20:48; 26 Sep 11:39; 28 Sep 12:05 / 12:53; 1 Oct 23:42; 29 Sep 12:54–14:29; 3 Oct 11:45.
- The included @kasperopay 2103946374647873794 mentions KasperoPay and KasperoConnect.
- Text checks: "Kastle to deposit; signing support is coming"; Kaspium has no dApp signing hook, but deposit works; the freelancer posts state no network.

S18. HELD: the seed SNAPSHOT row is accurate. One row, newest first; "19:05" matches the commit time 19:05:49. `25c96e4`, `43a3c64`, `220fa36` and `b567a48` are as stated. "rusty-kaspa #1140 re-read … unchanged" matches S16.

## Advisories (seed)

- SA1: process. Because S2 happened, treat S13's fix as the first change that goes through a branch and a challenge pass. Record this note in the seed's SNAPSHOT when that fix lands.
- SA2: builders.json entries carry a `page` key that AGENTS.md L32 does not list (`name`, `url`, `chip`, `note`, `sources`, `checked`). Either add `page` to L32 or drop it.
- SA3: KPI entry L3 says "**Chip:** `experiment` (catalog)", while README and builders.json say `experiment`. Drop "(catalog)".
- SA4: the KPI entry filename is built from the account's display name. A handle slug (`olafweller-kpi.md`) fits README L12 and the handles-not-names rule. The same goes for the project README's "Initiated by …" line, which the entry does not quote (good).
- SA5: "19 unit + 1 transport" and "46 Python tests … not run" are sourced only to a box-local maker report. Either cite them as the desk's own run note, or reduce them to "20/20 Rust tests (19 + 1)" as in 43a3c64.
- SA6: the seed predates the builders-split rule (repo 19:04 CEST, rule approved 19:06 CEST). Its README L5 scope sentence ("third-party builders, community people, their projects and ideas") is broader than the master's AGENTS.md wording. Once F4 is decided, align the README L5 and AGENTS.md L7–L8 scope wording with the master rule.

## Recheck: builders-move @ 3b333fa

- STP-KAS/kaspa-builders branch `master/builders-move-2026-10-04` @ `3b333fa06adab53c96618a132b8e84c9a894ffd5`, from `d4b94ad`. Read-only clone at `/workspace/scratch/kb-move` with the push URL disabled. Nothing was pushed to kaspa-builders. `git ls-remote`: main is still `d4b94ad9944f…`. Read 4 Oct, about 23:15–23:45 CEST.
- Option A is stp's decision as reported by kaspa master bot (23:02 CEST, "Move them but keep interesting reasoning in master").
- **Recheck totals: 14 HELD, 0 FAILED, 1 UNVERIFIABLE.** S-F1 is closed. SA1–SA4 and SA6 are closed. SA5 stays open as an advisory, with wording proposed below.

B1. HELD: shape and identity.
- There is one commit, `3b333fa` (23:06:55 +0200, parent `d4b94ad`). Author and committer are `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. It exists only on the branch.
- `git diff --stat -M d4b94ad 3b333fa`: 28 files, +1382/−12. The changes are AGENTS.md, README.md, SNAPSHOT-HISTORY.md, builders.json, do-not-weld.md, 3 new `docs/`, 17 new entries, the KPI rename, and new `people.md` / `people.json`.

B2. HELD: S-F1 is closed with my line. KPI entry L66 is byte-equal to the fix wording in S13 (script `fix in lines` is True, at L66).

B3. HELD: SA4 is closed.
- `entries/olafweller-kpi.md` is a rename (similarity 94%). Only L3 and L66 changed.
- The README index link and the builders.json `page` both point at the new path. `git grep` finds the old filename only in the new SNAPSHOT row, which records the rename.

B4. HELD: SA3 is closed. KPI L3 reads "**Chip:** `experiment`. Third-party community research." `git grep "(catalog)"` hits only the SNAPSHOT row, which records the drop.

B5. HELD: SA2 is closed.
- AGENTS.md now lists `page` ("the entry's path, `entries/<slug>.md`") among `name`, `url`, `page`, `chip`, `note`, `sources`, `checked`.
- All 19 builders.json entries have exactly those 7 keys, and every `page` file exists.
- The README index has 19 rows, and its link order equals the JSON `page` order.

B6. HELD: SA6 is closed.
- README L5 and the AGENTS.md scope bullets now follow the master's final rule at `206577a`. They cover the kaspanet / KIP-KCC / reference-implementation clause, core contributors' repos that extend kaspanet code (naming Argent), products built with kaspanet crates or SilverScript that move, and the reasoning clause.
- Both name the master's AGENTS.md section as the authority.

B7. HELD: SA1 is closed. The change comes through a branch, and the SNAPSHOT row links this note at `b8eed70` and says "first change through a branch, SA1".

B8. HELD: the Option-A content is all there.
- 17 new entries: name-services, x402, quorum, covenant-id-tooling, wallets-kcc20, openminer-reference, satoshis-engine, danieliyahu1, kaspa-core-flux, kasranks, 1984, kusdt-split, agenc, krc20-incident, stroemnet, node-tools-third-party, kas-smiths-threads.
- Also present: people.md / people.json (5 accounts, chip `community`, 0 `\u`), do-not-weld.md with the community list, and 3 `docs/` notes.
- builders.json is canonical: `json.dumps(…, ensure_ascii=False, indent=2) + "\n" == raw`, with 0 `\u`.
- Argent and `rk-with-tcp` are not moved.

B9. HELD: the content matches the staging I reviewed, for 20 moved files.
- These files in `3b333fa` have the same sha256 prefixes as my recorded staging checksums: docs/GROK-47-KNS-REVIEW `918ac6de`, docs/KASRANKS `c885dedd`, docs/SATOSHIS-ENGINE `5c9c1f5b`, 1984 `c3f31d4b`, agenc `e8ed5c94`, covenant-id-tooling `317b7f11`, danieliyahu1 `0b844a81`, kas-smiths-threads `f58bb1d1`, kaspa-core-flux `5ba3ea3d`, kasranks `71bc0238`, krc20-incident `1743a74a`, kusdt-split `e838f17b`, node-tools-third-party `80da0dd6`, openminer-reference `cd1c54bc`, quorum `039d2a79`, satoshis-engine `40fcc37d`, wallets-kcc20 `cc10de0e`, people.json `32e44027`, people.md `ff3a7a6c`, do-not-weld.md `a2d91b4e`. The seed's kasperolabs entry is still `071673e5`.
- The staging `builders-rows.json` is still `7c439579` and `index-rows.md` is still `8b287884`. All 17 staged rows appear unchanged in builders.json, and all 17 staged index rows appear verbatim in README.md.

B10. UNVERIFIABLE: the exact difference in three regenerated entries.
- The staging was regenerated at 23:05. Three entries differ from the checksums I reviewed:
  - `entries/name-services.md`: `e9e5dbf1` → `7f675a08`
  - `entries/stroemnet.md`: `d2ca0cfc` → `6ca87a66`
  - `entries/x402.md`: `eba21df2` → `548e4997`
- The `3b333fa` files equal the regenerated staging byte for byte. The pass-2 bytes are not on the box, so I cannot diff them.
- What I can see: each file's "**The master keeps:**" line names the reasoning line kept under Option A. name-services names three lines ("No product status"), stroemnet names "one reasoning line there on the hand-built kaspa_txscript HTLC", and x402 names "One short reasoning line in 'SilverScript holes'".
- The builders and index rows did not change. B11 and B12 cover the rest of their content.

B11. HELD: my moved-content check finds nothing missing.
- Script: `/workspace/scratch/chk-move/removed.py` + `check.py`. It takes everything removed from the master between `cf10a0f` and `206577a`: README rows and word spans, README non-table and RECEIPTS lines, and master.json rows, spans and fields in every section. Renamed rows count as whole rows removed.
- It checks those tokens against all files tracked at kaspa-builders `3b333fa` (JSON strings included) and against the master's README, master.json, RECEIPTS and AGENTS at `206577a`.
- Result, unique tokens:

| Token type | Total | In kaspa-builders | Still only in the master | Missing |
|---|---|---|---|---|
| Links | 154 | 150 | 4 | 0 |
| Hashes | 152 | 150 | 2 | 0 |
| Post ids | 19 | 16 | 3 | 0 |
| Words | 2356 | 2343 | 13 | 0 |

- The owner's 262 links / 297 hashes use a different tokenization (likely occurrences and short forms). Both counts agree: 0 missing.

B12. HELD: caveats and sources are kept.
- `cav.py` found 201 removed sentences that carry a caveat (not / no / only / draft / unaudited / claim / prerelease / desk …). 188 appear verbatim (link targets ignored) in kaspa-builders or the master.
- I checked the other 13 by hand:
  - 11 are row-prefix or punctuation artifacts. Examples: "`18795f05` is a Solana program. Not a Kaspa object." is in entries/agenc.md L18, and "multi-leaf quantum-safety idea (no code)" is in entries/kas-smiths-threads.md L18.
  - 1 is still in the master (#1140, row 26–30 Sep notes).
  - 1 is Argent's "#66 … is open, not merged". That was a fact correction (F2), not a move.
- Every new entry keeps its source links and the "Moved from … `cf10a0f`" provenance line.

B13. HELD: the SNAPSHOT row is accurate.
- It is one new row, newest first, at 23:06, matching the commit time 23:06:55.
- The counts are right: 17 entries, "19 entries in all", 5 accounts, 3 desk notes. The links are right: tip `206577a`, seed challenge `b8eed70`. "Argent and elldeeone's `rk-with-tcp` stay in the master" and "Open: SA5" are also correct.
- The seed row is unchanged.

B14. HELD: no leaks. A grep of the added lines for home paths, `/workspace`, `/tmp/`, mail addresses, real names, keys and tokens finds only the word "install". There are no email addresses.

B15. HELD: the master's pointers land. The five kept lines at `206577a` name the entries name-services (DOTK, KaChat, PoC), x402 and stroemnet. All three files exist at `3b333fa` and cover those projects.

### SA5: proposed wording (KPI entry L48)

The counts can be derived from the public repo, but not at `98aa99fa`.
- At main `98aa99fa` there is no `poc/a1` and no `scripts/test_*.py`. The only `#[test]` functions are A0's 7 (`circuit.rs` 4, `live.rs` 3, which matches "A0 7/7").
- At PR #22 head `2590e392ef97af6ea81aa8fc177a3996a7fa93a7` (read-only clone, `git grep -c`):
  - `poc/a1/src/lib.rs` modules have 19 `#[test]` functions: artifact 2, circuit 8, encoding 5, model 2, stateful 1, validator 1.
  - `src/main.rs` `mod transport_tests` has 1.
  - `scripts/test_a1_*.py` (7 files) has 46 `def test_` functions: check 10, context_oracle 3, extra_negatives 3, fee_check 10, recovery 9, recovery_rehearsal 6, reorg_check 5.
- That fits note 43a3c64 G4's log, "`19 passed` + `1 passed`".
- "Not run" is a statement about the desk, so it can only be attributed.

Replace L48 with:

"- A1 (PR #22 head [`2590e392`](https://github.com/olafweller/kaspa-privacy-initiative/tree/2590e392ef97af6ea81aa8fc177a3996a7fa93a7)): 20/20 Rust tests passed in the desk's run (log `19 passed` + `1 passed`, [challenge note `43a3c64`](https://github.com/STP-KAS/kaspa-master-file/blob/43a3c64f5a72580cf54ab552699245b7a1481076/challenges/wellerolaf-2026-10-04-challenge.md) G4; build targets since deleted). At that head the crate has 19 `#[test]` functions in its library modules and 1 in `src/main.rs` (`mod transport_tests`), and `scripts/test_a1_*.py` holds 46 Python test functions (counted from the public source). By the desk's own run note, the Python tests and the G2–G5 evidence generators were not run; that is not independently verifiable."

### Advisories @ 3b333fa

- BA1: AGENTS.md L10 says "Each entry says what the master keeps ("The master keeps:")", but 5 of the 17 new entries have no such line. Before merge, add one after the "Moved from" paragraph:
  - `entries/kaspa-core-flux.md`, `entries/openminer-reference.md`, `entries/wallets-kcc20.md`: "**The master keeps:** nothing; the whole row moved."
  - `entries/kasranks.md`: "**The master keeps:** its copy of `KASRANKS.md` as a receipt; no row."
  - `entries/satoshis-engine.md`: "**The master keeps:** its copy of `SATOSHIS-ENGINE.md` as a receipt; no row."
- BA2: the KPI PR #22 head has moved to `f4a4ddc50a41` (commit 4 Oct 22:22 CEST, PR updated 22:26 CEST; still an open draft). The entry pins `2590e392`, so it stays true. The test counts above are the same at the new head. The next KPI pass should re-read it.
- Merge order (A1): merge kaspa-builders `master/builders-move-2026-10-04` first, then the master branch, after its K-F1 and K-F2 fixes.

## Recheck: builders-move @ 7d013d5 (4 Oct 2026, 23:20 CEST)

Reviewed tip `7d013d53fbbc923389b0fbfbcb33a2b8a8b58c11` on STP-KAS/kaspa-builders `master/builders-move-2026-10-04`. It is one commit on `3b333fa`, with the noreply identity only. Six entry files changed, +11/−1.

- HELD BA1: "**The master keeps:**" lines were added to kaspa-core-flux, openminer-reference and wallets-kcc20 ("nothing; the whole row moved."), kasranks (`KASRANKS.md` receipt) and satoshis-engine (`SATOSHIS-ENGINE.md` receipt), each with the exact wording.
- HELD SA5: KPI L48 is the proposed line byte for byte. It links `2590e392` and note `43a3c64` G4, counts the tests from public source, and attributes the not-run claim to the desk.
- HELD: builders.json and people.json parse with 0 `\u` escapes.
- ADVISORY: the two seed entries, kasperolabs-silverscript-studio and olafweller-kpi, have no "The master keeps:" label. KasperoLabs says it in prose (L40, "The master keeps the rusty-kaspa #1140 line"). KPI could add "**The master keeps:** nothing; the research.kas.pa fact fix is unrelated to this entry." This does not block.

Totals at 7d013d5: HELD 17 · FAILED 0 · UNVERIFIABLE 1 (the regenerated-staging item, unchanged). No open FAILED. Clear to merge first, with stp's OK.

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

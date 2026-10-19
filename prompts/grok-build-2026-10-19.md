# Prompt for Grok Build — independent analysis of the 19 Oct 2026 Kaspa daily sweep

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (sweep 19 Oct ~07:42–08:00 CEST, window from 18 Oct 05:46Z). It pushed branch `master/sweep-2026-10-19` on https://github.com/STP-KAS/kaspa-master-file and `master/builders-sweep-2026-10-19` on https://github.com/STP-KAS/kaspa-builders. Do **not** trust the report. Analyse it your own way.

## Branch for your work
Use a new `build/2026-10-19` from current `origin/main` (`69f83cd` at sweep time), in a fresh clone (the shared checkout `/workspace/repos/kaspa-master-file` is in a restored, unborn-branch state). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`. Do not touch or merge the parked `build/2026-10-15`.

Branches: `master/sweep-2026-10-19`. Commits in order: `2c67785` (content), `a18387b` (SNAPSHOT row); this prompt commit is the next and last commit on the branch.

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-19.md` on `master/sweep-2026-10-19`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, X, Facebook). No reactions, issues, PRs, tags or releases, on any repo, including STP-KAS ones. A new sourced fact goes into the master file and stops there.
- **No cargo or builds of any kind** (stp's ban stands). Do not touch TN10 processes (TN10 ops owns them). Delete nothing.
- **Master is core-only (stp, 4 Oct 2026).** Third-party projects (x402, KPI, KasperoLabs, KaChat, kascov, Kastle, KasPass, KaspaHub, …) live in STP-KAS/kaspa-builders; cite it only with its caveat (third-party, not audited, demo, not desk-tested).
- Cite a URL for every claim. Times with zone (CEST in chat; Z fine in the master), from saved server `Date` headers or API timestamps.
- No fabrication. If you cannot verify, say "not verified". Never claim an HTTP status without saved headers. Quotes character for character from saved raw. Every review/comment fact from a fully paginated read.
- Do not weld objects: an APPROVED review followed by CHANGES_REQUESTED (#1141) is not an approval or a merge; D-Stacks' COMMENTED reviews on #1152 are not an approval, and #1152 is still a draft; Sutton's name-service replies are X posts, not a KCC; a kaspa.org page is not a release pin; KPI GPU proofs are offline fixtures, not TN10 transactions.
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (old cell copied verbatim to SNAPSHOT-HISTORY "Moved from README on <date>"); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; `master.json` notes plain text, absolute links, validated. Count cells per README row WITHOUT stripping code spans; confirm with the GitHub markdown API render. Stage files by name; no global sed; never edit old SNAPSHOT rows.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain merges and plain pushes of your `build/` branch only; no rebase, no `git pull --rebase`. Never force main.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** (including `master/sweep-2026-10-19`).
- X: no X calls unless stp asks; the sweep covered X.
- Never share seeds/keys.
- Main merges: kaspa master bot merges on a challenger pass with 0 FAILED at the exact tip.
- Do not name private STP-KAS repos in either repo (check `gh api repos/STP-KAS/<name> --jq .visibility` before linking any STP-KAS repo); run the private-name guard before pushing.

## Tasks
1. **rusty-kaspa #1141:** read every page of reviews and comments at head `1d77a486`. Confirm the order (APPROVED 05:28:58Z, then CHANGES_REQUESTED 05:32:36Z "Build fails after rebase"), and check from the diff (no build) what could fail after the rebase onto `f7d78773` (for example a remaining `TRANSIENT_BYTE_TO_MASS_FACTOR` use on master that the PR does not touch: grep master at `f7d78773`). Say "not verified" if the diff alone can't tell. Keep "not merged".
2. **rusty-kaspa #1152:** read D-Stacks' 10 inline comments against the code at `b58e51e4` (`indexes/utxoindex/src/stores/indexed_utxos_by_covenant_id.rs`, `store_manager.rs`, `kaspad/src/args.rs`, `rpc/core/src/model/message.rs`, `rpc/grpc/core/proto/rpc.proto`). Say which points describe the code as written (limit vs filter order, per-range queries, range bounds, duplicate field). Keep "draft, unreviewed for approval".
3. **KGI #13 / increment 10:** read status.md at `a2660876` and the #13 merge; confirm increment 10 and what remains.
4. **kaspa.org/build:** confirm the v2.1.0 links on the live page with saved headers, and that kaspamedia/kaspa-org #57 changed only `src/app/build/constants.ts` and `public/llms-full.txt`.
5. **Covenant-id names (Launch proof and binding):** check the quoted Sutton, Manyfest and IzioDev text against the watch raw `raw/2026-10-19/x/threads-fulltext.txt` (no X call). Say whether KCC-23 at kccs `1516a6c4` already offers a hook for a name at launch (read the file; no claim beyond the text).
6. **KRC-20 incident:** check Ori Newman's two posts and the host reply against the same raw; keep "the desk did not watch the episode".
7. **TN10 public API:** two rounds, recording each backend; today the watch saw `821a1e6c` 9 and `af0bc9c5` 5. No pool size or ratio.
8. **Close watch #1147/#1146/#1150/#863:** every page; confirm nothing after `2026-10-18T05:46:00Z` except #863's merge-of-master head `41a9f4e6`.
9. **Builders (optional):** KPI #42–#51 and x402 posts 415/416 are on kaspa-builders `master/builders-sweep-2026-10-19`. Work them only on a kaspa-builders branch, with the caveat.
10. **What to test next** (TN10 only, read-only, no builds, no public posting): short ordered list.
11. Write sourced facts only to your `build/` branch. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch report — 2026-10-19

All times CEST unless marked Z. Window: GitHub since `2026-10-18T05:46:00Z`; X since the 18 Oct since_ids (core `2111550119925694698`, community `2111571586331615588`, deshe `2103861631738667208`); forum since post 414. core_replies paused.

## Added (master `master/sweep-2026-10-19`)
- rusty-kaspa [#1141](https://github.com/kaspanet/rusty-kaspa/pull/1141) (atharaldsen, drop `TRANSIENT_BYTE_TO_MASS_FACTOR`): now three new commits on master `f7d78773` (`51a0c771`, `556224cb`, head `1d77a486`, all 19 Oct 05:28:31Z; 10 files, +52/−46). Diff still sets transient 250,000, compute and storage 500,000. someone235 **APPROVED** 05:28:58Z ([review](https://github.com/kaspanet/rusty-kaspa/pull/1141#pullrequestreview-5567289527)), then **CHANGES_REQUESTED** 05:32:36Z "Build fails after rebase" ([review](https://github.com/kaspanet/rusty-kaspa/pull/1141#pullrequestreview-5567309321)). Not merged, blocked. (Not live cell)
- rusty-kaspa [#1152](https://github.com/kaspanet/rusty-kaspa/pull/1152) (covenant-id UTXO index): first review activity. D-Stacks, 10 inline comments (10 reviews, all COMMENTED, 18 Oct 13:04:21Z–17:52:28Z) on `b58e51e4`: multi-range seeks, limit before the spk filter, bypass the filter with no bounds, `to_spk`/`from_spk` range ends, covenant-store sync by tips instead of a version marker, flag naming (`--covindex`?), a duplicate field, an optional proto field. Still a draft, no approval. (Covenant-id lookup cell)
- KGI [#13](https://github.com/kaspa-live/kaspa-graph-inspector-rs/pull/13) merged 18 Oct 19:50:04Z, main `a2660876`; status.md: "Implementation increment 10 is implemented" (encoding scheduler, gzip, response cache, Head cache tiers). (KGI v2 design cell)
- kaspa.org/build now links Rusty Kaspa v2.1.0 (read 05:49:18Z, HTTP 200) after [kaspamedia/kaspa-org#57](https://github.com/kaspamedia/kaspa-org/pull/57) (elldeeone, merged 19 Oct 02:44:46Z, `6af357e4`; "from v2.0.1 to v2.1.0"). (Credible sites cell)
- Names for covenant ids (X, 18 Oct): Sutton [2111907376957956539](https://x.com/michaelsuttonil/status/2111907376957956539) — combine a covenant-id name service with "something like kcc23", link a covenant name to a global pre-established name service (itself a covenant) at covenant launch; [2111913727733661869](https://x.com/michaelsuttonil/status/2111913727733661869) handle-like alphanumeric name. Manyfest (spam/payment wall), IzioDev (alias binding, community-trusted platforms). Prompted by KasperoLabs' identical-token question. No KCC/PR. (Launch proof and binding cell)
- KRC-20 incident framing: Ori Newman [2112050585004306646](https://x.com/OriNewman/status/2112050585004306646) (19 Oct 07:17:54): "L1 was poisoned" implies an L1 bug; emdin clarifies it wasn't. Host: L1 accepted txs as script-valid, the Kasplex indexer interpreted them. (KRC-20 incident cell)
- TN10 public API: 14× HTTP 200 (05:49:40Z–05:49:49Z), Cloudflare MISS, all 2.1.0, isSynced true, blueScoreDiff 0–39; p2pId `821a1e6c` (9) and `af0bc9c5` (5: reads 1, 9, 12, 13, 14); DAA **600539306** at 05:49:50Z. (TN10 public API cell)
- Commits: content [`2c67785`](https://github.com/STP-KAS/kaspa-master-file/commit/2c67785cd657ccbe319260b5a96b7f54aa1ab9a1), SNAPSHOT row [`a18387b`](https://github.com/STP-KAS/kaspa-master-file/commit/a18387b), prompt commit next.

## Added (builders `master/builders-sweep-2026-10-19`)
- KPI #42–#51 merged 18 Oct 12:18Z – 19 Oct 05:38Z, main `98ee0e48`: L40S GPU proofs with CPU verification, private-note proofs, four-batch local lifecycle (#51: four Succinct receipts in 379.676 s). WellerOlaf X "4 minutes and 16 seconds", ~$0.12. elldeeone RTX 3070 reproductions in issue #11 ("Offline fixtures; no testnet transactions."). (entry olafweller-kpi.md)
- x402: Kas-Smiths posts 415 (v1.0.1 relay-policy fix, CI checks, funded TN10 rerun) and 416 (fixed per-request charge, escrow + vouchers, USD conversion left to the app). No new release; main `8d575de1`. (entry x402.md)
- Dated section: KasperoLabs identical KCC-20 tokens question + Kozmic Bridge video; KaspaScopio says the KasPass repo is no longer public; KaspaHub listing updates; danieliyahu1 kas-odds/kticket.
- Commits: content [`08bc54f`](https://github.com/STP-KAS/kaspa-builders/commit/08bc54f93efabc8919f519d74197c7b66f25104c), row `99c97c5`.

## Held / unchanged
- Close watch: #1147 open, head `239556a6`, dirty, 7 comments, last update 15 Oct; #1146 open, 4 comments, last update 13 Oct. #1150 head `3f7d591a`, no reviews. #863 head `41a9f4e6` (merge of master, catch-up). rusty-kaspa master `f7d78773`; tag v2.1.0.
- kccs main `1516a6c4`; kccs #24 open at `8e1053ec`, still no reply to noralane. argent #71 open at `187e462e`, unreviewed; argent master `9a9f4b10`. kcc20-reference #4 (KAS-backed KAST) still open at `d51ac4c2`.
- No kaspanet org repo was pushed in the window (orgs API).
- Core tag lists (rusty-kaspa, python-sdk, vprogs, kccs, silverscript) and dotk-*/x402 unchanged.
- Kas-Smiths 49 / 390 / 114; highest post 416.

## Skipped
- X: Sutton's "post-Toccata" and "baby boom in a few months" posts (no checkable fact), his replies to critics; manyfest's kas-backed KCC20 context post (kcc20-reference #4 already recorded); kaspaunchained/ReconProtocol "six things" recap (all items already recorded: #1148, #991, #1060, kccs #26, KPI, kcc20-reference #4); KASPAglobal KPI relay; Kaspa_Commons rally car; KasperoLabs quotes; Ori's eCash article; IzioDev/asaefstroem off-topic; DesheShai 12–13 Oct posts (Wikipedia/personal, not technical).
- GitHub: koja-sh/* (saefstroem, AI-agent sandbox SDK, not Kaspa), tetsuo-ai/agenc-core (Solana), grinev/opencode-telegram-bot, atharaldsen fork branches (reflected via #1141/#863).

## Per source
- GitHub A-Z: 97 repos (watchlist + event/org repos), 97 GraphQL + 215 REST page calls. Gaps: `Knitser/kascov-decode` not a repo (known), `trillskillz/clawdmarket` now HTTP 404 (not Kaspa). Raw: `raw/2026-10-19/az/`, cited reads in `raw/2026-10-19/gh/`.
- X: free public reads, $0 spent; balance $6.75 before and after. core 19 (page 2 empty), community 15 (page 2 empty), deshe 3 (page 2 empty), 17 full texts.
- Kas-Smiths: about/posts/latest HTTP 200 at 05:44:41Z; headers saved.
- Sites: all 200 except kns-2.gitbook.io, api.kaspa.org and api-tn10 root (307). kaspa.org `Date` is now 19 Oct (CloudFront Miss; on 18 Oct it was a cached 11 Oct copy). Bodies and headers in `raw/2026-10-19/sites/`.
- Bot mail: no hand-off found on the box for the last 24h (note, not a gap).

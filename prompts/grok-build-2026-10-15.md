# Prompt for Grok Build — independent analysis of the 15 Oct 2026 Kaspa catch-up sweep

You are Grok Build working for stp (STP-KAS). Below is a catch-up report from the kaspa master bot (sweep 15 Oct ~18:19–18:30 CEST, window from 13 Oct 07:38 CEST). It pushed branch `master/sweep-2026-10-15` on https://github.com/STP-KAS/kaspa-master-file and `master/builders-sweep-2026-10-15` on https://github.com/STP-KAS/kaspa-builders. Do **not** trust the report. Analyse it your own way.

## Branch for your work
Use your open branch **`build/2026-10-15`** (tip `2cd96d1`, 15 Oct 18:20 CEST) or a new `build/2026-10-15-r2` from current `origin/main`. Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`.

Main is at `9b0a748` (13 Oct). `build/rusty-1074-2026-10-14` and `build/2026-10-15` already record #991 merged (`7cc22fea`), #1074 (`67686482`), #1148 (`2ea8e9d1`), #1135 (`12db0f35`), #1142 (`a92c4f9f`), kccs#26 KCC-23 (`1516a6c4`), #1150 and #1147 head `239556a6`; the sweep did not repeat them.

Branches: Tip at the first prompt commit was `5253eab` (15 Oct 18:26 CEST); this refresh is the next commit on the branch. (First prompt commit `52cd2c6`; `2037533`/`5253eab` folded in the bot mail hand-off.)

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-15.md` on `master/sweep-2026-10-15`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, X, Facebook). No reactions, issues, PRs, tags or releases, on any repo, including STP-KAS ones. A new sourced fact goes into the master file and stops there.
- **Master is core-only (stp, 4 Oct 2026).** Third-party projects (KasperoLabs, Kasanova, x402, KaChat, DOTK, Kastle, …) live in STP-KAS/kaspa-builders; cite it only with its caveat.
- Cite a URL for every claim. Times with zone (CEST in chat; Z fine in the master), from saved server `Date` headers or API timestamps.
- No fabrication. If you cannot verify, say "not verified". Never claim an HTTP status without saved headers. Quotes character for character from saved raw. Every review/comment fact from a fully paginated read.
- Do not weld objects: #1147/#1150 open ≠ merged; a CHANGES_REQUESTED review is not a close; #1151 is an issue, not a deprecation in a release; KCC-23 Draft ≠ Final; KasperoLabs zk burn-proof test is the author's claim, not desk-verified; an X post about a "v2.1.0 security disclosure" is not verified (no GitHub advisory found).
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (old cell copied verbatim to SNAPSHOT-HISTORY "Moved from README on <date>"); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; `master.json` notes plain text, absolute links, validated.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain push of your `build/` branches only. Never force main.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** (including `master/sweep-2026-10-15`).
- X: no X calls unless stp asks; the sweep covered X.
- Never share seeds/keys. Do not touch TN10 processes (TN10 ops owns them).
- Main merges: kaspa master bot merges on a challenger pass with 0 FAILED at the exact tip.
- Do not name private STP-KAS repos in either repo (check `gh api repos/STP-KAS/<name> --jq .visibility` before linking any STP-KAS repo).

## Tasks
1. **Fold the sweep's dated section into README Now cells** on your branch (the sweep left README alone to avoid a conflict with `build/2026-10-15`): #1147 michaelsutton CHANGES_REQUESTED (13 Oct 11:04:27Z) and his comment https://github.com/kaspanet/rusty-kaspa/pull/1147#issuecomment-6143871731; atharaldsen's new approach https://github.com/kaspanet/rusty-kaspa/pull/1147#issuecomment-6146955360 ("so I'm dropping it"); verify whether head `239556a6` already implements the new approach (read the diff).
2. **#1151** (IzioDev, open): deprecate `getUtxosByAddresses` v1 in favour of `getUtxosByAddressesV2` after #991. Place it next to the #991 text.
3. **Sutton X post** https://x.com/michaelsuttonil/status/2110743841963757655 (covenant composability ready; sync composability between vprogs not): decide if it belongs in the vProgs or KCC-20 cell; quote exactly.
4. **v2.1.0 security disclosure:** find a primary source (rusty-kaspa advisory, release note or maintainer post). If none, leave it out.
5. **Kas-Smiths:** about.json now 49 topics / 386 posts / 114 users (13 Oct: 50 / 388 / 114), latest_post_id still 412. Something was deleted; find out what if you can (topic 161 still there?).
6. **Builders (optional):** KasperoLabs zk burn-proof test https://x.com/KasperoLabs/status/2110528084617134405 and Kasanova .k support https://x.com/KasanovaWallet/status/2110762584357867986 into the Kozmic / KNS entries on a kaspa-builders `build/` branch.
7. **Reviewer decisions from the bot mail hand-off** (SNAPSHOT-HISTORY "Bot mail hand-off fold-in (15 Oct 2026)"): put the approvals into the cells: #1148 biryukovmaxim APPROVED 14 Oct 11:49:34Z (https://github.com/kaspanet/rusty-kaspa/pull/1148#pullrequestreview-5517402226); kccs#26 IzioDev APPROVED 14 Oct 13:09:37Z (https://github.com/kaspanet/kccs/pull/26#pullrequestreview-5518401176); #991 biryukovmaxim APPROVED 15 Oct 15:32:52Z at `bc1000b6` (https://github.com/kaspanet/rusty-kaspa/pull/991#pullrequestreview-5535705448), which replaces his 21 Jul CHANGES_REQUESTED. Optional: argent-lang/argent #70 (open AST lowering refactor).
8. **What to build or test next** (TN10 only, no public posting): short ordered list.
9. Write sourced facts only to your `build/` branch. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch report — 2026-10-15 (catch-up)

All times CEST unless marked Z. Window: GitHub since `2026-10-13T05:50:00Z`; X since the 13 Oct markers; forum since post 412. The 14 Oct sweep and the 15 Oct morning sweep did not run (monitoring gap).

## Added (dated section in SNAPSHOT-HISTORY "Catch-up sweep 15 Oct 2026"; README not touched)
- rusty-kaspa #1147: michaelsutton CHANGES_REQUESTED 13 Oct 11:04:27Z ("needs more discussion to finalize a solution, if at all needed"); full revalidation "will also become a new DoS vector"; atharaldsen drops full revalidation and proposes reporting IBD body chunks to the mempool.
- rusty-kaspa #1151 (IzioDev, 15 Oct): make `getUtxosByAddresses` (v1) deprecated.
- X michaelsutton 15 Oct 14:45:22Z on covenant composability.
- Builders: KasperoLabs zk burn-proof test claim (15 Oct 00:28:01Z); Kasanova .k live (15 Oct 15:59:50Z).

## Already on Build branches, not repeated
#991 merged 15 Oct 15:34:07Z as `7cc22fea`; #1074 `67686482`; #1148 `2ea8e9d1`; #1135 `12db0f35`; #1142 `a92c4f9f`; kccs#26 KCC-23 `1516a6c4`; #1150; Kozmic bridge catalog page (builders).

## Skipped
DesheShai posts (Wikipedia/politics); kaspaunchained/KASPAglobal/BankQuote/ReconProtocol relays and essays; Kasanova rally car; IzioDev coding chatter; kccs#24 update (no new comments or reviews since marker); #1060 (no new reviews or comments since marker); #1069 (updated 13 Oct, reviews not read: monitoring gap).

## Per source
- GitHub: 64 watchlist repos × commits/issues/pulls fetched with pagination, 0 GAP; 2 orgs; 17 user event feeds (119 events). Reviews/comments read paginated for #1146, #1147, #1150, #1060, #1073 and kccs#24.
- X: core (2 pages, 25 + 18 posts) reached the old KaspaScopio marker; community (incl. DesheShai) 19 posts, `next_token` not followed. Credits $6.75 at start.
- Kas-Smiths: HTTP 200 (headers saved); 49 / 386 / 114; no post id above 412.
- Bot mail: one catch-up hand-off of 83 items (13 Oct 12:19 to 15 Oct 17:46 CEST); all 83 links resolve in the API. Hourly hand-off stalled from 13 Oct 08:29 CEST (monitoring gap). Overlap: 22 of 83 items already cited by URL/id on main or `build/2026-10-15` (16 main, 6 build), 2 by this sweep; most of the other 59 are review comments and pushes on PRs Build already records at PR level. Added: 3 approvals plus argent #70.
- Builders branches not merged, left alone: `build/x402-main-2026-10-14`, `build/kozmic-bridge-2026-10-14`, `build/kpi-based-apps-2026-10-13`.

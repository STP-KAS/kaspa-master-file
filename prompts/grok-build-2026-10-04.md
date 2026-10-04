# Prompt for Grok Build — independent analysis of the 4 Oct 2026 Kaspa watch findings

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (watch sweep). It updated branch `master/sweep-2026-10-04` on https://github.com/STP-KAS/kaspa-master-file. Do **not** trust it. Analyse it your own way.

## Branch for your work
Use branch **`build/2026-10-04`** (create from current `origin/main`). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`.

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-04.md` on `master/sweep-2026-10-04`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, X, Facebook). A new sourced fact goes into the master file and stops there.
- Cite a URL (commit, PR, issue, post, release) for every claim. Record times with zone (CEST in chat; Z fine in the master).
- No fabrication. If you cannot verify, say "not verified".
- Merged Active KIP is law. An open PR, a branch, a demo, or a tweet is not. Do not weld objects (Last Call ≠ Final; draft #169/#170 ≠ release; `release-candidate` tip ≠ release; Idea-stage kccs#35 ≠ numbered Final KCC; privacy initiative ≠ KIP/Core; #991 head move ≠ merge; kastle#372 open ≠ KCC-20 in production; DoorDash demo ≠ L1 product; api-tn10 200 ≠ proof a payment landed; dotk-core main ahead of tag ≠ new release).
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (short); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; validate `master.json`.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain push of your `build/2026-10-04` only. Never force main.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** so you do not duplicate this sweep or other open `build/*` work (especially `build/kcc-last-call-2026-10-02` for kcc20-reference `5b2a2312`).
- Never share seeds/keys. TN10 never goes to a mainnet kaspa bot.

## Standing role
Keep the master current with the kaspa master bot. Checkout for Build: `/workspace/repos/kaspa-master-file` (not the watch clone). Read the whole master periodically; fix stale lines against live sources. Public posts are forbidden. Challenge before merge: any open FAILED item blocks merge until fixed or stp overrides. Main merges only when challenge is clean **and** stp explicitly OKs (kaspa master bot is the merger).

## Tasks
1. **Verify** every item in the report against live sources. Flag wrong or stale lines.
2. **rusty-kaspa #991 `77d9a2e8`:** confirm the four commits after `2e05b7cd`, review/`blocked` state, and whether the Not live cell wording is accurate.
3. **kastle #372 `ddfaf373`:** confirm head and UAT merge story; any path to merge?
4. **DOTK:** verify dotk-sdk `42ee5124` (indexer API 1.1.0) and dotk-core `7ea661e2` vs tag v0.13.0; note any client break.
5. **kcc20-reference `5b2a2312`:** already on `build/kcc-last-call-2026-10-02` — decide whether main should move, or leave for that branch / a dedicated Build pass.
6. **KaChat tip `00d49193`:** keep SNAPSHOT/catalog-only unless you find a reason to pin.
7. **api-tn10:** recheck health / backend version (this sweep sampled **2.1.0**).
8. **What to build or test next** (TN10 only, no public posting): short ordered list.
9. Write sourced facts only to `build/2026-10-04`. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch: daily report, 4 Oct 2026

All times are CEST (Europe/Brussels, UTC+2). Sweep ~07:44–08:10.
Window: GitHub/forum since `2026-10-03T05:23:01Z`; X since 3 Oct markers.
Branch: `master/sweep-2026-10-04` (never main). Zero public actions.

Commits: content (this pass), snapshot link (follow-up). Pushed to origin. Main untouched.

## Added on this branch (README Now cells + master.json)

| Item | Source | Where |
| --- | --- | --- |
| rusty-kaspa [#991](https://github.com/kaspanet/rusty-kaspa/pull/991) head → [`77d9a2e8`](https://github.com/kaspanet/rusty-kaspa/commit/77d9a2e8) (3 Oct 08:58Z); four commits after `2e05b7cd` (optional `start_address`, `from_spk` rename, RPC cursor check, higher safe max addresses). Still open / `blocked` | GitHub | Not live |
| kastle [#372](https://github.com/forbole/kastle/pull/372) head → [`ddfaf373`](https://github.com/forbole/kastle/commit/ddfaf373) (3 Oct 15:02Z; merge main after UAT #373–#375, #377) | GitHub | Wallets and KCC-20 |
| dotk-sdk main → [`42ee5124`](https://github.com/supertypo/dotk-sdk/commit/42ee5124) (3 Oct 14:13Z; API description = indexer **1.1.0**) | GitHub | DOTK .k names |
| dotk-core main → [`7ea661e2`](https://github.com/supertypo/dotk-core/commit/7ea661e2) (3 Oct 16:27Z; two commits past tag v0.13.0 `5a0e6ae1`: per-input compute-budget pre-flight + pinned budget test) | GitHub | DOTK .k names |
| api-tn10 health ~07:46: 200, `acceptedTxBlockTimeDiff` 2, backend kaspad **2.1.0** (one sample) | https://api-tn10.kaspa.org/info/health | SNAPSHOT / report (cell already describes 2.1.0) |

## Already on main / other branches — not re-added

- [kcc20-reference#1](https://github.com/argent-lang/kcc20-reference/pull/1) head [`5b2a2312`](https://github.com/argent-lang/kcc20-reference/commit/5b2a2312) (2 Oct 13:45Z) — already on `build/kcc-last-call-2026-10-02`; main still pins `60064687`
- vprogs #169/#170 / RC `055ae28a`, tictactoe `533e8a55`, kccs #35, argent#66, x402 #22 / RC2, OpenMiner `ca5cee59` — hold
- Kas-Smiths **48 / 378 / 113**, latest post **402** — unchanged
- KASPAglobal genesis-proofs post — already covered by argent#66 / Sutton pin on main
- KasperoLabs DoorDash covenant demo ([2106350037680988279](https://x.com/KasperoLabs/status/2106350037680988279)) — at/below per-account backfill marker; community product demo, not a Now pin

## Per source

- **X credits.** Before **$4.27**, after **$4.11**. Spent **~$0.16** (under soft ~$0.20 and hard $1). Free grant expires **24 Oct 2026** (~19:32 CEST). Balance above $3. No $8 floor (stp, 2 Oct).
- **X core** (`since_id` 2106165257597255909): 15 posts + `next_token` (not paginated). elldeeone non-Kaspa chatter; asaefstroem `$KAS` logo meme. No new master pins.
- **X community** (`since_id` 2106138769321537645): 10 posts + `next_token` (not paginated). BankQuote DAA essay; KasperoLabs DoorDash demo (marker skip); KASPAglobal genesis proofs (already on main). No new pins.
- **X deshe:** 0 results; `since_id` held.
- **KaspaScopio:** 1 post (Spanish politics reply). Skip.
- **core_replies trial:** 5 replies + `next_token` (not paginated). Kept (≥3 likes): 2 (markcrypto8 question 6 likes; KaspaMobile chatter 4 likes). **added_to_master: 0.** Approx cost folded into the $0.16 day total. Trial continues through 5 Oct (verdict due on/after that run).
- **GitHub:** #991 head move; kastle #372 head move; dotk-sdk / dotk-core tip moves. KaChat tip `00d49193` (many 3–4 Oct commits; third-party app). Key heads hold: vprogs master/RC, silverscript, kccs, argent, x402, OpenMiner, tictactoe, rusty master/dagknight. No new releases.
- **Kas-Smiths:** 48 topics, 378 posts, 113 users; latest post **402** (unchanged).
- **research.kas.pa:** newest still topic 522 (8 Sep).

## Skipped / notable but not added

- KaChat tip [`00d49193`](https://github.com/vsmirn0v/KaChat/commit/00d49193) (was `77c2a899`) — Nextcloud sync, `.kachat` marketplace button, payment bubbles; contracts still private. Catalog for Build, not a Now pin.
- KasperoLabs DoorDash demo — community product; not law.
- BankQuote DAA long-form — community essay.
- core / community / replies `next_token` gaps — not paginated (budget).
- kcc20-reference `5b2a2312` — leave to the open `build/kcc-last-call-2026-10-02` branch (or Build).

## Open questions for Build (`build/2026-10-04`)

1. Verify #991 `77d9a2e8` against live PR (still `blocked`? review state?).
2. kastle #372: confirm head `ddfaf373` and whether any review moved it toward merge.
3. DOTK: indexer OpenAPI bump to 1.1.0 — any breaking client change? Confirm dotk-core main vs tag v0.13.0 wording.
4. Should main's kcc20-reference pin move to `5b2a2312` (already on Build's kcc-last-call branch)?
5. KaChat `.kachat` tip churn — still SNAPSHOT-only?
6. Pending from prior days: crates.io kaspa-* still expected 0.15.0; silverscript#256 / argent#64 blocked; reply-reading trial verdict due 5 Oct.

## Flags for stp / parent

- **X balance $4.11** after sweep; free grant expires **24 Oct 2026** (~20 days). Not under $3.
- Ask **kaspa master challenge** for a pass on `master/sweep-2026-10-04` (content + snapshot SHAs after push; files: README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-04.md).
- Do **not** merge to main until challenge has no FAILED item **and** stp explicitly OKs.

## State

See `/workspace/artifacts/kaspa-master-watch/state.json` after this run. Raw: `/workspace/artifacts/kaspa-master-watch/raw/2026-10-04/`.

# Prompt for Grok Build — independent analysis of the 2 Oct 2026 Kaspa watch findings

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (watch sweep). It updated branch `master/sweep-2026-10-02` on https://github.com/STP-KAS/kaspa-master-file. Do **not** trust it. Analyse it your own way.

## Branch for your work
Use branch **`build/2026-10-02`** (create from current `origin/main`). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`.

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-02.md` on `master/sweep-2026-10-02`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, X, Facebook). A new sourced fact goes into the master file and stops there.
- Cite a URL (commit, PR, issue, post, release) for every claim. Record times with zone (CEST in chat; Z fine in the master).
- No fabrication. If you cannot verify, say "not verified".
- Merged Active KIP is law. An open PR, a branch, a demo, or a tweet is not. Do not weld objects (Last Call ≠ Final; missing `Last-Call-Deadline` ≠ set deadline; #22 open ≠ RC2 tag; release-candidate ≠ release; npm 2.1.0 ≠ new code past its peel; api-tn10 200 ≠ proof a payment landed).
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (short); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; validate `master.json`.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain push of your `build/2026-10-02` only. Never force main.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** so you do not duplicate `build/2026-10-01` or this sweep.
- Never share seeds/keys. TN10 never goes to a mainnet kaspa bot.

## Standing role
Keep the master current with the kaspa master bot. Checkout for Build: `/workspace/repos/kaspa-master-file` (not the watch clone). Read the whole master periodically; fix stale lines against live sources. Public posts are forbidden. Challenge before merge: any open FAILED item blocks merge until fixed or stp overrides. Main merges only when challenge is clean **and** stp explicitly OKs (kaspa master bot is the merger).

## Tasks
1. **Verify** every item in the report against live sources. Flag wrong or stale lines.
2. **Priority — unblock Last Call on main:** `build/2026-10-01` @ `fde0918` has a challenge pass with **8 FAILED** (`challenges/sweep-2026-10-01-challenge.md`). Either fix those on a rebase onto current main, or re-apply the held Last Call / index Final / OpenMiner / DOTK release / KRC-20 / Kastle facts cleanly on **`build/2026-10-02`**, and correct the FAILED themes (Kaspire wording, kaspium `7af4704d`, Python-SDK/KCC-3 Draft→Last Call wording, kccs catalog row, referee lag again, SNAPSHOT time/coverage). Then ask kaspa master challenge for a re-pass. Do not ask stp for a main merge until FAILED = 0.
3. **x402 #22 (`06532aad`):** confirm scope (sighash types, fixture renames). Does any STP-KAS path assume SIGHASH_ALL-only? Keep RC2 peel `724c5fff` as the bind unless you prove otherwise.
4. **DOTK indexer:** is anything public beyond `dotk-core` + OpenAPI inside `dotk-sdk` (`c9194976` tip)? `supertypo/dotk` was still 404 on this sweep.
5. **crates.io:** confirm `kaspa-*` still not at 2.1.0 (sweep saw `kaspa-consensus` 0.15.0). silverscript#256 / argent#64 stay blocked until then.
6. **api-tn10:** recheck health; note multi-backend (2.0.1 vs 2.1.0). Policy: api-tn10 is never proof — check a synced node.
7. **Desk count:** confirm 95 / 85 public / 10 private if you touch the This desk cell.
8. **What to build or test next** (TN10 only, no public posting): short ordered list.
9. Write sourced facts only to `build/2026-10-02`. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch: daily report, 2 Oct 2026

All times are CEST (Europe/Brussels, UTC+2). Scheduled sweep ~07:38–07:45.
Window: GitHub/forum since last good watch state marker `2026-09-29T13:31:13Z` (~3 days). The 1 Oct routine watch run failed; this recovers cleanly from a fresh `origin/main` (`364b26b`).
Branch: `master/sweep-2026-10-02` (never main). Zero public actions. X skipped (stop rule).

## Added on this branch (README Now cells + master.json)

| Item | Source | Where |
| --- | --- | --- |
| x402 **#22** open head [`06532aad`](https://github.com/elldeeone/kaspa-x402/commit/06532aad) (updated 2 Oct 02:34Z): allow signer-chosen sighash types in covenants; drop SIGHASH_ALL-only; reference signing still defaults to SIGHASH_ALL. Renames escrow fixture→v5 and hash-chain head→v2 on the PR branch. Not merged. Not on RC2 tag `724c5fff`. | https://github.com/elldeeone/kaspa-x402/pull/22 | x402 |
| STP-KAS org **95** repos (85 public + 10 private), live `gh repo list` 2 Oct | GitHub API | This desk / STP-KAS org |
| api-tn10 recheck ~07:42: still 200 / `MISS` / `acceptedTxBlockTimeDiff` 2 / DB synced; this read showed kaspad **2.0.1** (p2pId `965d43fe…`) — multi-backend still present | https://api-tn10.kaspa.org/info/health | TN10 public API |

## Already on another open branch — not re-added

`build/2026-10-01` @ `fde0918` already carries (challenge pass has **8 FAILED**, so it must not merge yet):

- KCC-1 / KCC-2 **Last Call** via kccs #32 `815ecaff` / #33 `ad1b8996` (Sutton APPROVED + merged); index Final via #34 `411b41bc`
- Argent `b312deda`, DOTK v2.1.0 GitHub releases + OpenAPI `8035e36a`, OpenMiner `ca5cee59`, KRC-20/ZealousSwap indexer note, Kastle KCC-20 branch notes

Live kccs main confirms Last Call headers; **public main README still says Draft** for KCC-1/2 and that the index says Draft. Fix stays with Build after the 8 FAILED items are closed. Challenge file: `challenges/sweep-2026-10-01-challenge.md` on `challenge/sweep-2026-10-01`.

## Per source

- **X credits.** Start **$6.48**, after **$6.48**. Spent **$0.00**. **Hard stop:** balance already below $8.00, so every billed X call was skipped (core / community / deshe / KaspaScopio / core_replies). Free grant expires 24 Oct 19:32 CEST. Credits fell from ~$9.00 (29 Sep after) to $6.48 without a completed 1 Oct watch run — cause unknown (other bots, failed run, or late billing).
- **X core / community / deshe / KaspaScopio / core_replies:** not run.
- **GitHub:** key repos since `2026-09-29T13:31:13Z`. kccs: #32/#33/#34 merged (Sutton approvals); #31 still `dirty` at `cfb74cfa`; #26 head `d51721ad` blocked (Manyfestation 30 Sep I-JSON / KIP-24 comment). vprogs / silverscript / rusty-kaspa: no PR updates in window; heads hold (`f9b84a86` / `fbd677c2` / `3ed97333` / `01b532e8`). x402: #18–#21 merged; #22 open; tag v1.0.0-rc.2 peels to `724c5fff`. dotk-sdk tip `c9194976` (OpenAPI description); dotk-core tip `5a0e6ae1` (pre-flight VM etc.); `supertypo/dotk` still 404 — no public indexer repo. crates.io `kaspa-consensus` still **0.15.0** (silverscript#256 still waiting). openminer-reference `ca5cee59` (already on build/). KaChat tip `4e8cd48e` (.kachat names indexer handoff; private `KaspaSilver/kachat-domains`) — catalog only, not pinned.
- **Kas-Smiths:** still 47 topics / 377 posts / 112 users; latest post 401. **research.kas.pa:** newest still topic 522 (8 Sep).
- **Cited sites:** all 200 (kaspa.org, kaspaexplained.com/status, kaspa.news, kns-2.gitbook.io, kaspa-x402.org, api.kaspa.org, vprogs-tt.izio.fr, silverscriptstudio.com, docs.kaspa.org/programmability/full-vprogs).
- **kaspaexplained /status:** still stale vs live kccs (calls KCC-1/2 Draft and index Draft) — same FAILED theme as challenge item 41 on build/2026-10-01.

## Skipped / notable but not added

- Full KCC Last Call / DOTK release / OpenMiner / KRC-20 rewrite → already on `build/2026-10-01`.
- KaChat `.kachat` names TN10 registry docs — third-party app; private domains repo; SNAPSHOT mention only if useful later.
- onlykas fan-view UI commits — product polish, not a pin.
- rusty-kaspa#1140 (KasperoLabs SDK findings) — already logged on build/ SNAPSHOT.

## Open questions for Build (`build/2026-10-02`)

1. Fix the **8 FAILED** items on `build/2026-10-01` (or redo the Last Call / referee-lag / desk Draft lines cleanly on `build/2026-10-02` from current main `364b26b`), then ask challenge for a re-pass. Main must not stay on "KCC-1/2 Draft" and "index Draft".
2. Verify x402 #22 `06532aad`: does it change RC2 bind guidance? Any sixpack / desk signing path that assumed SIGHASH_ALL-only?
3. Is a public DOTK indexer repo out yet, or only `dotk-core` + OpenAPI inside `dotk-sdk`?
4. api-tn10 still flips between kaspad 2.0.1 and 2.1.0 — does the indexer follow a stale backend under load?
5. crates.io still 0.15.0 — silverscript#256 / argent#64 still blocked.

## Flags for stp / parent

- **X stop rule hit:** $6.48 < $8.00. No X sweep today. Prefer a top-up before the next scheduled run if full X coverage is required.
- **1 Oct routine watch failed** (no state.json update since 29 Sep). This run recovered with a clean fetch of `origin/main` and a new `master/sweep-2026-10-02` branch.
- **`build/2026-10-01` blocked:** 8 FAILED on challenge pass. Do not merge until fixed + stp OK.
- Ask **kaspa master challenge** for a pass on `master/sweep-2026-10-02` (head after push; files: README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-02.md).

## State

See `/workspace/artifacts/kaspa-master-watch/state.json` after this run. Raw: `/workspace/artifacts/kaspa-master-watch/raw/2026-10-02/`.

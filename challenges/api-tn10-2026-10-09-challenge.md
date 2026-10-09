# Challenge: build/api-tn10-2026-10-02

- Branch reviewed: `build/api-tn10-2026-10-02` (unowned / cancelled-audit inventory; treat as build/)
- Tip SHA reviewed: `50740fc15ddcdd1565bdb93a21902ebdac7240ac` ("Record the 18:12Z api-tn10 read.", 2026-10-02 20:35:54 +0200)
- Commits on tip not on main: `0c72511` (covenant-id / DOTK) then `50740fc` (api-tn10 18:12Z). Merge-base `99ae962`. Ahead 2, behind 129 vs main `cf44ce5`.
- Diff read: `git diff 99ae962..50740fc` and `git diff 0c72511..50740fc` (README.md, SNAPSHOT-HISTORY.md, master.json).
- Pass: 9 Oct 2026 ~17:55 CEST, kaspa master challenge. Sources: live `https://api-tn10.kaspa.org/info/health` (3 cache-busted), `/openapi.json`, `gh api` argent#66 and rusty-kaspa blobs (for inherited tip), main TN10 cell. Local TN10 wRPC 127.0.0.1:17210/18210 refused connection. **No X tool.** Nothing merged. Challenge branch only.

**Counts: HELD 6 · FAILED 4 · UNVERIFIABLE 3**

## FAILED

1. **F1 | inclusion.** Tip is 129 behind main `cf44ce5` with merge-tree conflicts in README.md, SNAPSHOT-HISTORY.md, master.json. Main's TN10 cell already records the 1 Oct resume, 7 Oct behind window, and 8–9 Oct re-sync. Fix: close without merge; any still-useful dated 18:12Z sample belongs in SNAPSHOT only on a fresh branch from main, not as the live Now cell.

2. **F2 | README / master.json TN10 public API as live Now cell.** The tip rewrites the Now cell to "**Acceptance clock live at 2 Oct 2026 18:12Z**" with specific backend scores. Live cache-busted `/info/health` this pass: HTTP **503**, Cloudflare `MISS`, `database.isSynced` **false**, `acceptedTxBlockTimeDiff` ~3485 s, single backend kaspad **2.1.0** p2pId `ba36f18d…`. Presenting the 18:12Z sample as the board state is stale. Fix: do not merge; re-read and rewrite from current main if a new sample is wanted.

3. **F3 | inherited from `0c72511`.** Argent cell still says "#66 is open, not merged, head `9592dd99`". Live: merged 2026-10-04T12:04:19Z as `03d67021`. Fix: same as challenge/build-2026-10-02 recheck @0c72511 item 1 — close tip.

4. **F4 | README Do not weld / JSON.** Tip adds api-tn10 weld lines but still carries the open-#66 weld framing from `0c72511` without the merged update main has ("argent#66 merged = a tag…"). Merging would regress main's weld text. Fix: close without merge.

## UNVERIFIABLE

1. **U1 | exact 18:12Z health bodies** (kaspad 2.0.0 blue 574796634 / 2.1.0 blue 574797223, Cloudflare `EXPIRED`, fee priority 616, marketcap 1140490448, blockdag HIT fields). Dated snapshot; cannot re-read those responses. Not scored FAILED as history, but they must not replace the live Now cell (see F2).

2. **U2 | "From the 08:49 CEST pin 574383833 … about 10 per second".** Arithmetic on a past pin; not re-derived from a live desk node this pass (local wRPC down).

3. **U3 | X-only lines** carried in surrounding Argent/DOTK cells from `0c72511` (Sutton/supertypo posts). No X tool.

## HELD

1. Structure: `50740fc`←`0c72511`←`99ae962`. Both tip commits STP-KAS noreply. `git show --stat 50740fc` touches README, SNAPSHOT-HISTORY, master.json.
2. OpenAPI app version **v2.3.0** on TN10 `/openapi.json` still holds (live read this pass).
3. Caveat "A search is still not proof a payment landed" retained.
4. Do not weld additions that are true as rules: health 200 ≠ fresh body; empty UTXO list ≠ empty wallet; one fee sample ≠ storm fee; marketcap ≠ mainnet market cap; TN10 OpenAPI v2.3.0 ≠ v2.4.1 submit API.
5. SNAPSHOT moves the prior 1 Oct cell under "## Moved from README on 2 Oct 2026" with the verbatims receipt pattern.
6. Leak scan of `+` lines: no private STP-KAS names, emails, home paths, seeds, keys, or reserve addresses. master.json parses.

**Open FAILED: 4. Do not merge. Advise close `build/api-tn10-2026-10-02`.**

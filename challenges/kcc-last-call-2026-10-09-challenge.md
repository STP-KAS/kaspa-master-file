# Challenge: build/kcc-last-call-2026-10-02

- Branch reviewed: `build/kcc-last-call-2026-10-02` (cancelled-audit inventory; treat as build/)
- Tip SHA reviewed: `3eb1bb9895b5c7f5cdae8dc05207d1735b727fb9` ("Record the 2 Oct KCC posts and the reference head.", 2026-10-02 20:18:22 +0200)
- Merge-base `99ae962`. Ahead 1, behind 129 vs main `cf44ce5`.
- Diff: README.md, SNAPSHOT-HISTORY.md, master.json (KCC still open, KCC20 reference, Do not weld, kccs JSON).
- Pass: 9 Oct 2026 ~17:55 CEST. Sources: `gh api` kccs main tip, kccs#31, argent-lang/kcc20-reference#1 and master, raw `kcc-0020.md` at `3fbec524`. **No X tool** (X posts in the tip left UNVERIFIABLE). Nothing merged. Challenge branch only.

**Counts: HELD 4 · FAILED 4 · UNVERIFIABLE 3**

## FAILED

1. **F1 | inclusion.** 129 behind main; merge-tree conflicts in README.md, SNAPSHOT-HISTORY.md, master.json. Main already has KCC-20 Last Call (`3fbec524` via #31) and kcc20-reference#1 merged (`c8a08711`). Fix: close without merge.

2. **F2 | README / JSON "kccs main still `411b41bc`" / "main was still `411b41bc` after the posts".** Live kccs main is `3fbec524abfbc20e87652eb938db218f8c17db17` (KCC0 Compliance for KCC-20 + Last Call, #31 merged 2026-10-07T20:38:09Z). Fix: close tip; do not rewrite from this base.

3. **F3 | KCC20 reference head `5b2a23124ef43730eca4f69248bc2866daf2c24c` / "master still `76648f99`".** Live #1 is **merged** (2026-10-07T19:50:09Z), merge commit `c8a08711`, head was `0175e2de`; master is `c8a08711`. Fix: close tip.

4. **F4 | "kcc-0020 stays Draft" as live status on the tip's KCC still open cell.** Live `kcc-0020.md` at `3fbec524` is `Status: Last Call`. Main board already says Last Call, not Final. Fix: close tip.

## UNVERIFIABLE

1. **U1 | @kccforum 2105991195583488410 / 2106008195114381508 and @manyfest_ 2106012029358047445.** X-only; not fetched.
2. **U2 | Comments-URI topic 141/95/8 last-post ids (354/355/364).** Not re-fetched this pass (research.kas.pa / kas-smiths not required for the FAIL outcomes above).
3. **U3 | `kcc-0000.md` lines 199-200 at `411b41bc` still saying Draft.** Historical file at that SHA not re-read; superseded by F2/F4 anyway.

## HELD

1. Structure: single commit `3eb1bb9` on `99ae962`, STP-KAS noreply. SNAPSHOT 20:17 row present.
2. Do not weld addition "an X post that says 14 days = a `Last-Call-Deadline`" is a correct weld rule (even without re-reading the post).
3. Leak scan of `+` lines: no private names, emails, home paths, seeds, keys, reserve addresses.
4. master.json @3eb1bb9 parses.

**Open FAILED: 4. Do not merge. Advise close `build/kcc-last-call-2026-10-02`.**

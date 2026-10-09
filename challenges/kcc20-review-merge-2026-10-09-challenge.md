# Challenge: build/kcc20-review-merge-2026-10-07

Reviewed tip: `0b48840d74c9311c45b273acb3358853b05ef1ae`. Base: merge-base `b7c52de6723b2b29800949ae3ec1547db92a1cc6`. Subset of build/kcc20-last-call-2026-10-08 without the Last Call commit `5d7dcc9`. Files: README.md, master.json, SNAPSHOT-HISTORY.md. Pass: 9 Oct 2026 ~08:32 CEST, kaspa master challenge. Same primary sources as the last-call pass. No compiles. No X tool reads.

**Result: HELD 14, FAILED 2, UNVERIFIABLE 1. Under PROCESS.md L7 this tip must not be merged.**

## FAILED

- **F1 | README.md KCC20 reference cell / master.json "KCC20 reference" note / SNAPSHOT-HISTORY.md 2026-10-07 21:25 row | private repo name going public.** Same leak as last-call F1: the tip links a private STP-KAS note repository five times. Main has zero hits. Fix: remove the private-note sentence and URL from README, JSON, and SNAPSHOT.
- **F2 | README.md KCC20 reference cell (present tense) / master.json chip Draft + "Open …#1" / Argent cell "master stays 76648f99" | false live status.** Live (9 Oct): argent-lang/kcc20-reference#1 was merged 2026-10-07T19:50:09Z as `c8a08711` (now master); kccs#31 merged 20:38:09Z as `3fbec524` with `kcc-0020.md` `Status: Last Call`. The tip's pin-board still says the org pull is open at head `0175e2de`, KCC-20 stays Draft, and argent-lang master stays `76648f99`. Historical SNAPSHOT rows dated 15:40–21:25 that say Draft while describing that morning are fine as dated history; the live cells are not. Fix: do not merge this tip as-is. Prefer `build/kcc20-last-call-2026-10-08` (after its F1 fix) which already rewrites these cells, or rewrite this tip the same way (Merged / Last Call / master `c8a08711` / Not Final).

## UNVERIFIABLE

- **U1 | Launch-proof / Argent cells | Sutton 7 Oct X thread text.** Post IDs are cited; body text was not re-fetched through X this pass.

## HELD

1. Tip is `b7c52de` plus 5 commits (e1c2199…0b48840). Ancestor of last-call tip `5d7dcc9`.
2. Head pin `0175e2de` (Manyfestation, 7 Oct 19:09:30Z, parent `6dda3631`) matches the pre-merge head of #1 (`gh` pulls API).
3. Prior heads in the chain exist: `6dda3631`, `72767847`, `2058c13c`, `8c8dc8ee`, `28dbbe45`, `5b2a2312` (commits API).
4. `fixtures/public-mint/kcc20.json` at `0175e2de` exists. Dispatch tags `79c71c23` / `fd3ef14a` recompute via blake3.
5. Argent #68 merge `9a9f4b10` (7 Oct 08:24Z) is live master; tip's Argent cell correctly moves the Now pin from `232c6ee6` to `9a9f4b10`.
6. Manyfestation/kcc20-reference#1 merge at 12:22:29Z as `8c8dc8ee` with head branch `kcc20-review` on argent-lang/kcc20-reference (not a separate repo) — consistent with public pull metadata.
7. Do not weld additions (placeholder signatures ≠ VM keys; author's 60 tests ≠ desk run; README commits ≠ lasting head) are correct welding rules.
8. master.json `updated` 2026-10-07; SNAPSHOT five new rows newest-first above the 6 Oct block.
9. No blank lines breaking the pin-board table.
10. BLAKE3 P2PKHHash vectors on the last-call tip are out of scope here; this tip still describes Draft-era kccs `411b41bc` in historical rows — accurate for those times.
11. Cargo test / 60 tests: tip says desk did not run them — honest.
12. Emails / home paths: zero. Only PROCESS name leak is F1.
13. Builders caveat for name-services / stroemnet pointers unchanged from base where present.
14. Trial: merging this tip onto current main without the Last Call rewrite would publish F2. Same evidence as last-call pass; last-call tip supersedes this one for the live cells.


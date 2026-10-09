# Challenge: build/kcc12-revision-2026-10-03

- Branch reviewed: `build/kcc12-revision-2026-10-03` (treat as build/)
- Tip SHA reviewed: `3682b2143cf1c76ae71791ac1a10bd431df424e0` (merge "Merge main and keep the kccs#24 head pin.", 2026-10-03 17:34:29 +0200). Content commit `fdf4002` pins head `568884c4`.
- Merge-base with main `cf44ce5`: `4183b7a`. Ahead 2, behind 116.
- Diff vs merge-base: README.md, SNAPSHOT-HISTORY.md, master.json (KCC still open #24 pin detail).
- Pass: 9 Oct 2026 ~17:55 CEST. Sources: `gh api` kccs#24, commit `7fa44f76`, comment 5970318652, raw `kcc-0012.md` at `568884c4`. **No X.** Nothing merged. Challenge branch only.

**Counts: HELD 8 · FAILED 1 · UNVERIFIABLE 0**

## FAILED

1. **F1 | inclusion / superseded pin.** Tip is 116 behind main with merge-tree conflicts in README.md, SNAPSHOT-HISTORY.md, master.json. Main already pins kccs#24 at [`568884c4`](https://github.com/kaspanet/kccs/commit/568884c4e125af2a4dad23c5809dd6bc3a73be75) in the KCC still open cell. The tip's extra Section 7.8 / 6.6 detail is not on main, but merging this tip would thrash far newer KCC-20 Last Call and reference text. Fix: close without merging this tip; if the Section 7.8 detail is still wanted, cherry-pick onto a fresh branch from current main and re-pass.

## HELD

1. Structure: `3682b21` merge of `fdf4002` + `4183b7a`; both STP-KAS noreply.
2. Live kccs#24: still **open**, not merged, head still `568884c4e125af2a4dad23c5809dd6bc3a73be75` (`gh api repos/kaspanet/kccs/pulls/24`). Matches the tip pin.
3. Revision commit `7fa44f769825d2d3afc3458f8cc355e62debe327` exists at 2026-10-03T14:51:54Z ("Add covenant-aware signing and KCC-12 updates").
4. Section 7.8 names `9007199254740991` (2^53-1) and the decode-exactly / do-not-re-emit-rounded rule: present in `kcc-0012.md` at `568884c4` around the PSKB section.
5. Accept / sequence `18446744073709551615`: present in that file (Uint64 / absent sequence wording).
6. "`extractedTransaction` is the crate rendering, not a Section 7.5 serialized transaction": file says the accept-case `extractedTransaction` member is informative / crate rendering.
7. Section 6.6 "address or script": present under `kaspa_signTransaction` output wording.
8. saefstroem comment [5970318652](https://github.com/kaspanet/kccs/pull/24#issuecomment-5970318652) exists (2026-10-03T14:56:05Z). Leak scan clean; master.json parses.

**Open FAILED: 1 (inclusion). Unique #24 detail is still true live but must not be merged via this stale tip. Advise close or re-cut from main.**

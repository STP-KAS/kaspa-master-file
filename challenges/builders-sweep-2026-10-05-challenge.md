# Challenge: master/builders-sweep-2026-10-05 (kaspa-builders)

- Branch tip: `87b0740b9fa58402061e46fa1943c3a3c0d5863a` (from main `7d013d53fbbc923389b0fbfbcb33a2b8a8b58c11`).
- Commits: `629a0fd` (content, 07:53:38 +0200), `87b0740` (SNAPSHOT link, 07:53:48). Both noreply.
- Read-only clone: `/workspace/scratch/kb-sweep` (push URL disabled). Nothing pushed to kaspa-builders. Main still `7d013d5` (`git ls-remote`).
- Standing rule (stp, 4 Oct 23:14): builders facts must carry their caveat. AGENTS: each entry keeps "The master keeps:".
- X checked against box raws `/workspace/artifacts/kaspa-master-watch/raw/2026-10-05/x-summary.json` and `kasnodes.html`; no new X calls.
- **Totals: 14 HELD, 2 FAILED, 0 UNVERIFIABLE.**

## Shape and process

1. HELD: main `7d013d5` is an ancestor. Files: README.md, SNAPSHOT-HISTORY.md, builders.json, five entries (`olafweller-kpi`, `name-services`, `node-tools-third-party`, `openminer-reference`, `wallets-kcc20`).
2. HELD: builders.json canonical (`ensure_ascii=False`, indent 2, trailing newline), 0 `\u`. 19 entries, each with keys `name/url/page/chip/note/sources/checked`.
3. HELD: README index ↔ builders.json consistency for the five touched rows: same `page`, `chip`, and `checked` = `2026-10-05`.
4. HELD: SNAPSHOT newest first; `87b0740` links the 07:53 row to `629a0fd`. Row summary matches the five entry updates.
5. HELD: noreply identity; no real names, home paths or private repo name in the added lines.
6. HELD: caveats kept on every touched entry (chip lines, "Not Kaspa core", "not desk-checked" / "Author's record" / "Posts only"). Four of five keep a formal `**The master keeps:**` line (name-services, node-tools, openminer, wallets). KPI still has only prose in Provenance ("The master keeps the research.kas.pa fact fix") — pre-existing on main; see advisory BA1.

## Claim-by-claim (@ 629a0fd)

### Privacy initiative (KPI) — entries/olafweller-kpi.md L75–L80; builders.json note

7. HELD: PR #22 head `f4a4ddc50a41aa5c640e0b43ff0962c9ed49e718` (open draft). Issue #23 open, created 2026-10-04T07:56:51Z, title about fixed-fee exit liveness; body calls it an open production-design blocker.
8. HELD: live-attempt record at that head (`docs/poc-a1-live-attempt-1.md`): S0 funding `c0968d62…` PASS, S0→S1 `5027a249…` PASS, boundary receipt FAIL, B not armed, independent recovery NOT RUN, separate terminal `c3e15501…` PASS, overall G5 **FAILED**, fail-closed. Entry caveats "Author's record; the desk did not check these txids" / "not desk-checked".
9. HELD: X backfill-marker claim. Posts 2106773440338247750 and 2106523383844229492 are both ≤ marker `2106774728690065588` (state.json / RUNBOOK). Present in 4 Oct wellerolaf raws.

### OpenMiner — entries/openminer-reference.md L24–L27

10. HELD: repo still `ca5cee59` (GitHub main tip).
11. **FAILED (B-F1): Goldshell quote drops words from the raw.**
- Entry L27: `elldeeone [2106910323668393999] (5 Oct 00:52Z): "this is a goldshell KA box - i'm just probing it".`
- Box raw (`x-summary.json` core posts): id 2106910323668393999, created `2026-10-05T00:52:20Z`, text `"@mhieechoii no this is a goldshell KA box - i'm just probing it"`.
- Time holds. Second post 2106928517384667439 at 02:04:38Z, text starts `my goal is to reverse engineer our miners` (quotes 2106572967622967606) — that quote holds. Section header "X posts only; not desk-checked" holds.
- **Fix wording (L27):** replace `"this is a goldshell KA box - i'm just probing it"` with `"@mhieechoii no this is a goldshell KA box - i'm just probing it"`.

### Node tools / KasNodes — entries/node-tools-third-party.md L24–L26; builders.json note

12. **FAILED (B-F2): KasNodes quote is not the raw text.**
- Entry L26: `elldeeone [2106703706003808697] (4 Oct 11:11Z): "kasnodes.com is back".`
- Box raw: id 2106703706003808697, created `2026-10-04T11:11:18Z`, text `"https://t.co/XrEyPp2T17 is back"` (77 likes). `curl -sI` on that t.co → `Location: https://kasnodes.com/`.
- Site read holds: HTTP 200, title `KasNodes — the Kaspa network, live` (saved `kasnodes.html`). Counts 290 public / 81 private / 40 countries appear in that HTML (`ro-v`); entry correctly says counts are not recounted. Caveat "not desk-checked" holds.
- **Fix wording (L26 and builders.json note):** replace `"kasnodes.com is back"` with `"https://t.co/XrEyPp2T17 is back"` (t.co expands to https://kasnodes.com/), or write: posted a link that resolves to kasnodes.com with the text "is back" (raw: `https://t.co/XrEyPp2T17 is back`).

### Name services — entries/name-services.md L60–L63; builders.json note

13. HELD: KaChat tip `7227d69a70f67f472a5d3fd2e5f8825d23f1a852` (2026-10-04T20:41:38Z). Commit message: `.kachat` UI and identity on mainnet too (registry still testnet-only); `isEnabled` / `isLaunched` split; mainnet never reads or writes a registry. Caveat "Author's commit message; the desk did not build it".
14. HELD: kastle #378 open, head `be88c8c6…`, base `main`, `blocked`, title Phase 1 read-only. #379 open, head `eb581482…`, base `feat/dotk/read-only` (stacked on #378), title Phase 2 transfer. Both 4 Oct. "Not merged into any release".

### Wallets — entries/wallets-kcc20.md L24–L26

15. HELD: kastle #372 still open at `ddfaf373…`, `mergeable_state: blocked`. Pointer to name-services for #378/#379.

## Advisories (do not block)

- BA1: KPI still lacks a formal `**The master keeps:**` line required by AGENTS L10 (only Provenance prose). Pre-existing on main `7d013d5`. Suggested add after the moved-from paragraph: `**The master keeps:** the research.kas.pa fact fix; nothing else from this entry.`
- BA2: builders.json `OpenMiner` note and README What column were not extended with the Goldshell X finds (only `checked` moved). Entry body carries them. Optional: add a short sourced clause to the JSON note and README What.
- BA3: OpenMiner and node-tools Sources lists were not extended with the new X URLs (body links them). Optional.

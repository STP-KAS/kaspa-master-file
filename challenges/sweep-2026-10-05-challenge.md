# Challenge: master/sweep-2026-10-05

- Branch tip: `92b52f797c1249217cf569fa4968cab0769a2b0a` (from main `9fd1009625c737552254054812c0f08fbd687f78`).
- Commits: `e9b88bb` (content, 07:51:30 +0200), `068801c` (SNAPSHOT link, 07:51:53), `92b52f7` (Build prompt, 07:55:20). All noreply `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`.
- Authority: PROCESS.md on main. Standing rule (stp, 4 Oct 23:14): the master is the default source; kaspa-builders is used only when a task names a third-party project, with its caveat. AGENTS.md on main: no product status in the master; no new third-party rows.
- Read 5 Oct ~08:00–08:20 CEST. Sources: GitHub API (rusty-kaspa, kccs, KGI), git, box X raws at `/workspace/artifacts/kaspa-master-watch/raw/2026-10-05/x-summary.json` (no new X calls). No TN10 changes. No push to kaspa-builders.
- **Totals: 18 HELD, 1 FAILED, 0 UNVERIFIABLE.**

## Shape and process

1. HELD: main `9fd1009` is an ancestor of the tip (`git merge-base --is-ancestor`). Files touched: README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-05.md only (`git diff --stat 9fd1009 92b52f7`).
2. HELD: untouched README lines are byte-identical to main (SequenceMatcher equal blocks, 93 of 97 lines).
3. HELD: master.json is canonical (`raw == json.dumps(..., ensure_ascii=False, indent=2)+"\n"`), 0 `\u` escapes, `updated` = `2026-10-05`.
4. HELD: noreply identity on all three commits (author and committer).
5. HELD: SNAPSHOT newest first. Row `2026-10-05 07:51` linked to `e9b88bb` by `068801c`. Historical rows 08:55 → `353e9ad` and 08:53 → `b8256bc` match those commits on main (times 08:55:40 and 08:53:22 +0200).
6. HELD: no real names, home paths, keys or private stall-repo name in the added lines. Grep of the diff for those patterns is clean (false hit: the word "stall" inside an untouched SNAPSHOT context line about TN10).

## Standing rule / AGENTS

7. HELD: no new third-party row. The four changed Now cells were already on main (Not live, KCC still open, 26–30 Sep notes, KGI v2 design). No product-status wording was added (open pulls flagged as not consensus; KGI kept as docs/catalog; #36 "Not a KCC"; #1140/#914 caveated "Not desk-tested" / "His reading, not desk-checked").
8. HELD: Build prompt does not steer Build to kaspa-builders as a default source. `prompts/grok-build-2026-10-05.md` L12: "The master is your default source. … cite it only when a task names a third-party project, always with its caveat … do not add them to the master." Third-party finds are listed under "For kaspa-builders".

## Claim-by-claim (content @ e9b88bb)

9. HELD: #1141 / #1142 on Not live (README L56; JSON `Not live` note). GitHub: both open on `master`, author atharaldsen, 0 reviews. Heads `11aca108…` and `644baafe…`. #1141 body: drops `TRANSIENT_BYTE_TO_MASS_FACTOR`, limit 1,000,000 → 250,000, block byte cap and normalized transient mass unchanged, supersedes #1025 (closed, base `toccata`). #1142 body: `SeqCommit` replaces `accepted_id_digests`, "encoding stays byte-identical". Wording says open pulls, not consensus changes.

10. HELD: kccs #36 on KCC still open (README L62; JSON). Open draft, Curious-being99, created 2026-10-03T06:38:08Z, head `d7809a17…`, title "Introduce initial draft for Covenant v2". Files API: one file `Covenant v2`, +12/−0, plain text, no KCC number/preamble/status. "Not a KCC" holds.

11. HELD: #1140 reproduction (README L81; JSON `26–30 Sep notes`). Comment 5983592399 by atharaldsen, 2026-10-04T19:30:16Z: testnet-10 params, one 100 KAS UTXO, `priorityFee` 0, output `input - 0.002` → `Storage mass exceeds maximum`; any `feeRate` succeeds; cause in `Generator::calculate_mass`; points at #894. #894 open, head `ad72faf6…`, `mergeable_state: dirty` (in conflict). Issue still open. "Not desk-tested" present.

12. HELD: #914 closure (same cell). Issue closed `completed` at 2026-10-04T21:32:54Z. Body pins `10a4af3b`. Comment 5984251477 (atharaldsen, 20:50:03Z): "every finding is resolved on master". Caveat "His reading, not desk-checked" present.

13. **FAILED (S-F1): KGI "45 files, all docs" is false.**
- README L82 and JSON `KGI v2 design` note: "`main` is [`247d69a7`](…) …: 45 files, all docs, no code."
- Prompt L52: "45 doc files, no code".
- GitHub: commit `247d69a71f3275417bb049a016127c135699bd9e` (2026-10-04T22:25:19Z) message "Merge pull request #1 from tiram88/initial-design / docs: establish the KGI v2 architecture". The commit's file list has **45** paths, of which **3 are not under `docs/`**: `.gitignore`, `AGENTS.md`, `README.md` (42 are under `docs/`).
- Status page at that sha (2 Oct) does say no production Rust, tests or migrations have started. rk-issues files still say "Local issue record. Not yet filed upstream." Those parts hold. Tip and url re-pin hold.
- **Fix wording (README L82 and JSON note):** replace "45 files, all docs, no code" with "45 files in the merge (42 under `docs/`, plus `.gitignore`, `AGENTS.md` and `README.md`); no production Rust".
- **Fix wording (prompt L52):** replace "45 doc files, no code" with the same phrase.

14. HELD: remaining KGI facts (tip time, PR #1 merge message, status.md, rk-issues c338d495). Catalog chip unchanged.

15. HELD: JSON mirrors match the README claims for the four cells (same SHAs, same caveats; markdown stripped in JSON).

## Build prompt (@ 92b52f7)

16. HELD: prompt is accurate and consistent with the branch/main for the master items it inlines (same SHAs and caveats as e9b88bb), names `build/2026-10-05` as Build's branch, and separates kaspa-builders finds. X credit figures match `x-summary.json` (`3.58` → `3.47`). KasNodes homepage counts in the prompt (290 public / 81 private / 40 countries) match the saved `kasnodes.html` (`ro-v` 290 / 81 / 40). The KGI "45 doc files" error is the same S-F1 (fix there too).

## Advisories (do not block)

- A1: the prompt's KasNodes line quotes `"kasnodes.com is back"`; the X raw is `"https://t.co/XrEyPp2T17 is back"` (t.co → https://kasnodes.com/). Same issue as builders B-F1; the prompt is not the merge board, but Build should not copy that quote.
- A2: PR #1 on tiram88/kaspa-graph-inspector-rs returns 404 from the pulls API now; the merge commit message still names it. Prefer citing the merge commit.

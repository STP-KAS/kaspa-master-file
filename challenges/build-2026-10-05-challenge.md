# Challenge: build/2026-10-05

- Branch tip: `ee6e1b48e0d7aa6cbd59b39c33835cdfab6f6772` (content `05f97ee82647333bd9c029001f927c70342e2b20` from main `9fd1009625c737552254054812c0f08fbd687f78`; SNAPSHOT link `ee6e1b4`).
- Owner: kaspa master prompt build. Analysis: `/workspace/artifacts/kaspa-master-reports/grok-build-analysis-2026-10-05.md`. Raws: `raw-2026-10-05/`.
- Net diff vs main: README.md, SNAPSHOT-HISTORY.md, master.json (+15/−14).
- Authority: PROCESS.md on main. AGENTS.md core-only rule; stp standing rule 4 Oct 23:14 (master is the default source).
- Read 5 Oct ~08:05–08:25 CEST. GitHub API, git, owner raws, live `research.kas.pa/latest.json`, 4 cache-busted api-tn10 reads, and a `nice -n 19` re-run of the owner's wasm #1140 script. No X calls. No TN10 node changes. No push to kaspa-builders.
- **Totals: 16 HELD, 1 FAILED, 1 UNVERIFIABLE.**

## Shape and process

1. HELD: main `9fd1009` is an ancestor of `ee6e1b4`. Commits noreply (`STP-KAS <227352643+STP-KAS@users.noreply.github.com>` author and committer).
2. HELD: untouched README lines are byte-identical to main (92 of 97 lines in equal blocks).
3. HELD: master.json canonical (`ensure_ascii=False`, indent 2, trailing newline), 0 `\u`, `updated` = `2026-10-05`.
4. HELD: SNAPSHOT newest first. Row `2026-10-05 08:02` linked to `05f97ee` by `ee6e1b4`. Historical rows 08:55 → `353e9ad` and 08:53 → `b8256bc` match those commits on main.
5. HELD: no new Now rows; no third-party product status added. Diff only extends existing kaspanet / catalog cells (TN10 public API, Not live, KCC still open, 26–30 Sep notes, KGI v2 design). Third-party finds stay in the analysis under "for kaspa-builders".
6. HELD: no real names, home paths, keys or private repo name in the added lines.

## Claim-by-claim (board @ 05f97ee)

7. HELD: api-tn10 recheck (README L53; JSON `TN10 public API`). Owner raws `raw-2026-10-05/api-tn10/h1..h8`: 8× HTTP 200, Cloudflare `MISS`, `database.isSynced` true, `acceptedTxBlockTimeDiff` 1–4; only `serverVersion` 2.0.1 (`82e9e396`×6, `965d43fe`×2). Wording "This sample saw only … No ratio is claimed" holds. Challenger live sample (4 reads ~08:10 CEST) also all 200/`MISS`/synced, and saw 2.0.0 and 2.0.1 — reinforces mixed pool / no ratio. api-tn10 is never proof of payment (unchanged board rule).

8. HELD: #1141 / #1142 on Not live (L56). Both open on master, atharaldsen, heads `11aca108` / `644baafe`, no reviews. #1141: transient limit 1,000,000 → 250,000; cofactor claim old 4×0.5 = new 1×2.0 matches the PR body. Supersedes closed #1025 on `toccata`. Open pulls, not consensus.

9. HELD: #1142 scope is not overgeneralized on this branch. README: "the PR's unit test asserts the one-element encoding is byte-identical to `vec![hash]`". PR `virtual_state.rs` test `encodes_as_one_element_vec` asserts equality with `bincode::serialize(&vec![hash])`; comments also document empty-vec decode as compatibility. The board does **not** claim every encoding path is byte-identical.

10. HELD: kccs #36 (L62). Identical to the sweep text: draft, Curious-being99, `d7809a17`, 12-line plain text, no preamble/status, "Not a KCC".

11. HELD: #1140 comment facts (L81). Comment 5983592399 (atharaldsen, 4 Oct 19:30Z): TN10 params, `priorityFee` 0, output input−0.002 → `Storage mass exceeds maximum`; any `feeRate` passes; cause in `Generator::calculate_mass`; points at #894 (`ad72faf6`, dirty/in conflict). Issue still open. Stale main wording "open with no comments" is correctly replaced.

12. HELD: #1140 desk repro (wasm32 SDK v2.1.0, offline, no broadcast). Owner log `repro-1140d.txt` (and `repro-1140d-rerun.txt`): no `feeRate` → `Storage mass exceeds maximum`; `feeRate` 1 or 100 → `ok` / `n: 1`; leftover 0.1 KAS no `feeRate` → `Mass calculation error`. Early failed attempts (`repro-1140.txt`, `repro-1140c.txt`) are superseded by `1140d`. Challenger re-ran `nice -n 19 node repro-1140d.mjs` against `/workspace/sdk210/.../kaspa.js` and got the same six outcomes.

13. HELD: #914 (L81). Closed `completed` 2026-10-04T21:32:54Z after comment 5984251477. Board correctly says desk spot-checked two of five at `01b532e8`: `transaction_output_estimated_serialized_size` adds covenant bytes when present (`mass/mod.rs` L72–74: `authorizing_input` + `covenant_id`); RPC `TryFrom<RpcTransactionOutput>` uses `with_covenant` (`convert/tx.rs` L156). "Two of five claims checked; the rest are his reading" holds. Does not over-claim that all five were desk-verified.

14. **FAILED (B-F1): KGI "45 files, all docs" is false** (same defect as sweep S-F1 at `92b52f7`).
- README L82 / JSON `KGI v2 design`: "`247d69a7` …: 45 files, all docs, no code."
- Merge commit file list has 45 paths; **3 are not under `docs/`**: `.gitignore`, `AGENTS.md`, `README.md` (42 under `docs/`).
- Status.md (2 Oct) and rk-issues "Not yet filed upstream" hold. Tip `247d69a7` holds.
- Owner analysis L44 marked this **held** ("commit files all docs") — that part of the analysis is wrong.
- **Fix wording:** replace "45 files, all docs, no code" with "45 files in the merge (42 under `docs/`, plus `.gitignore`, `AGENTS.md` and `README.md`); no production Rust".

15. HELD: research.kas.pa newest topic still 522 (board cell unchanged; owner table item 12). Live `https://research.kas.pa/latest.json` and `?order=created`: max topic id 522; topic 522 last_posted 2026-09-08. Owner raw `research-latest.json` agrees. (Owner left this "not verified"; challenger closes it as HELD.)

16. UNVERIFIABLE: X credit figures / unattributed $0.17 (owner table item 13). Not written to the master board. No credit raw or tool output in `raw-2026-10-05/`. Left UNVERIFIABLE.

17. HELD (analysis cross-check, board unchanged): Kas-Smiths about.json stats 48 topics / 378 posts / 113 users; posts.json latest max id 402.

## Overlap with `master/sweep-2026-10-05`

Compared to sweep tip **`92b52f7`** (open S-F1 in challenge note `1224799`) and noted later sweep tip `c0b1d3c`.

### Files / cells both touch

| Cell | build `05f97ee` | sweep `e9b88bb`@`92b52f7` |
| --- | --- | --- |
| Not live (#1141/#1142) | yes | yes |
| KCC still open (#36) | yes | yes (byte-identical to build) |
| 26–30 Sep notes (#1140/#914) | yes (+ desk tests) | yes (comment only) |
| KGI v2 design | yes | yes |
| TN10 public API | yes (5 Oct recheck) | no (unchanged from main) |
| SNAPSHOT 08:55/08:53 links | yes | yes |
| prompts/grok-build-2026-10-05.md | no | yes |

### Same facts?

- **Agree:** #1141/#1142 heads and open-on-master status; #36; #1140 comment 5983592399 and #894 pointer; #914 closed 21:32Z; KGI tip `247d69a7`; SNAPSHOT history links.
- **Not contradictory, build stronger:** #1140 desk wasm repro (sweep still said "Not desk-tested"); #914 "two of five" spot-check (sweep: "His reading, not desk-checked"); #1141 cofactor desk note.
- **Wording tension (prefer build):** sweep says #1142 "says the encoding stays byte-identical"; build correctly scopes that to the **one-element** unit test. Not a hard fact clash, but sweep is broader than the PR proves.
- **Shared FAILED at `92b52f7`:** both say KGI "45 files, all docs". Same fix.
- **Since sweep moved:** tip is now `c0b1d3c` ("Fix S-F1 KGI file count…"). Current sweep has the corrected KGI wording; **build still has the wrong phrase**. If both merge as-is after `c0b1d3c`, build would re-introduce the S-F1 error — fix B-F1 before merge, or rebase onto the fixed sweep.

### Merge note

Build and sweep are parallel cuts from the same main. They must not both land without reconciling the shared cells (especially KGI and #1142 wording). Prefer build's #1140/#914/#1142 precision once B-F1 is fixed.

## Advisories (do not block)

- A1: when merging with the sweep, take build's one-element #1142 wording and drop sweep's broader "encoding stays byte-identical".
- A2: sweep tip has moved past `92b52f7` to `c0b1d3c` (S-F1 fixed). Re-read sweep before any merge order decision.
- A3: owner analysis L44 (KGI "all docs") should be treated as corrected by B-F1.

## Recheck @ 9c2d222 (5 Oct 2026, 08:08 CEST)

Reviewed tip `9c2d2227828d5693d7c17e967ef620a6cd89032b`. It has three commits on `ee6e1b4` (e388f6c, a847a3c and 9c2d222), all with the noreply identity only. The diff is README +1/−1, master.json +1/−1 and SNAPSHOT-HISTORY.md +1. master.json parses with 0 `\u` escapes, and main `9fd1009` is an ancestor.

- HELD B-F1 (README L82 and the master.json KGI note): both now read "45 files in the merge (42 under `docs/`, plus `.gitignore`, `AGENTS.md` and `README.md`); no production Rust". I checked this against the GitHub API for tiram88/kaspa-graph-inspector-rs commit `247d69a7`: its parents are `c7eef7a9` and `f2cab146`, it has 45 files, and the only non-`docs/` paths are `.gitignore`, `AGENTS.md` and `README.md`.
- HELD (new SNAPSHOT-HISTORY L11 row, 2026-10-05 08:05): it links e388f6c and gives the same re-count against first parent `c7eef7a9`. "45 files, all docs" appears there only as the quoted old wording.

Totals at 9c2d222: HELD 18 · FAILED 0 · UNVERIFIABLE 1 (X credit figures, analysis-only). No open FAILED. Clear to merge with stp's OK. Whichever of this branch and master/sweep-2026-10-05 (cb9c7a9) merges second needs main merged in and my recheck.

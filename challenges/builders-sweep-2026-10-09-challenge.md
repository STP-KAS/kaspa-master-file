# Challenge: kaspa-builders `master/builders-sweep-2026-10-09` (9 Oct 2026)

- **Repo:** STP-KAS/kaspa-builders (read only; nothing pushed there).
- **Tip reviewed:** `adcb37750e458814a8a316ab295f13678557eb38` (base `main` `5487e1f7bea8bec35917ed3ba41ce022f8290e55`, fast-forward, 3 commits: `fc80e5c` content, `e585cb7` SNAPSHOT link, `adcb377` AGENTS.md).
- **Pushes:** activity API: branch created at `e585cb7` 9 Oct 06:43:10Z, plain push to `adcb377` 06:43:53Z (08:43 CEST). No force-push.
- **Reads:** 9 Oct ~08:45 to 08:49 CEST (GitHub API, raw.githubusercontent, saved 8 Oct raws). No compiles or tests.
- **Result: 23 HELD, 1 FAILED, 1 UNVERIFIABLE.**

## FAILED

**B1. The master does not point to the Ross Ku page.** On kaspa-master-file `main` (`84232f6`, 9 Oct), the Argent cell (README L71) ends the Ross Ku sentence at "argent master still `9a9f4b10` on 9 Oct 06:37Z)." It has no kaspa-builders link (0 `kaspa-builders` mentions in that row).
- `entries/rossku-kob.md` L6: replace ", with a pointer to this page." with "; it does not link to this page."
- `builders.json` L421 (note, end): replace "The master keeps one Argent sentence tied to #69 with a pointer here." with "The master keeps one Argent sentence tied to #69; it does not link here."

## UNVERIFIABLE

**U1. "rustc 1.98.1".** The saved logs in `raw-2026-10-08/build-argent/` (t2-build, cospent-03d67021) have no toolchain line. Only the desk's build prompt names the 1.98.1 cargo. Suggested hedge, the same in all four places: `entries/argent-desk-tests.md` L8, README L50, SNAPSHOT L7 and `builders.json` L438. Replace "rustc 1.98.1" with "rustc 1.98.1 per the desk's build setup; the saved logs carry no toolchain line".

## HELD

1. **AGENTS.md L44 vs master `PROCESS.md` L7.** Both say: since 8 Oct 23:47 CEST, no stp OK; merge on 0 FAILED at the exact tip; no newer commits; hold while a pass runs; tell stp the hash. L7 also says "plain fast-forwards"; L44 keeps "no force-push". Advisory: add "plain fast-forward".
2. **Stones only.** `artifact-compare-232c6ee6-vs-9a9f4b10.txt`: only stones CHANGED (id `7133efc5…` → `e843bab4…`, Player template `80109697…` → `9f1f6801…`), 9 SAME. GitHub compare `232c6ee6...9a9f4b10`: 1 commit; the only examples/ files are `stones/artifact.json` and `stones/sil/Player.sil`.
3. **"Regenerated trees match the committed `examples/build`".** For all 10 apps at both commits, the sha256 of the committed `examples/build/<app>/artifact.json` equals the regenerated hash in `artifact-sha256.txt` (20/20).
4. **co_spent.** `cospent-03d67021/03d-notcospent.txt` says "type mismatch". The parenthesized form at 03d, and both forms at 9a9, say "wrote". Commits: `03d67021` #66 (4 Oct 12:04Z), `232c6ee6` #67 "fix co-spend expression precedence" (5 Oct), `9a9f4b10` #68 (7 Oct 08:24:44Z), still argent master.
5. **Scope: `argent-desk-tests.md` belongs in builders.** AGENTS L9 limits the master's desk results to "kaspanet code, KIPs or KCCs". Argent (argent-lang) is not kaspanet code. L8 sends third-party desk tests to builders. stp left the Argent recompile out of the master on 8 Oct. Advisory: L8 says "on that project's entry", and Argent has no builders entry (the master keeps it), so a stand-alone page is the reasonable reading.
6. **RossKU/kob.** Public, not a fork, ISC, default `master`, tip `fdb92b63` (9 Oct 05:22:58Z, "web: a day order ends by 00:00 UTC"). `9d8030c9` (8 Oct 13:12:28Z, "docs: argent port comparison, shorter") and `7405d44c` (11:05:16Z, opcode listings) match.
7. **Port figures** are in `docs/argent-port-compare.md` @ `9d8030c9`: 1,684 / 2,705 (+1,021) / 1,584; 79, 21, 591, 514, 16; splice 1,713 (+29); 1,004 cases. The pin `b312deda`, 244, and 227/248/250 are in `docs/argent-feedback.md`; item 4/12 says the "interface fingerprint" excludes the handle. Advisory: "not against argent master `9a9f4b10`" is the page's inference, not his text. It is correct, since `b312deda` is the 30 Sep master.
8. **argent#69:** open, not a draft, unmerged, head `435fa89ae4e7…` on his fork, opened 8 Oct 14:52:06Z, 9 files, 0 reviews. The body does not mention the fingerprint. **#61:** issue, open, updated 16 Sep 16:00Z.
9. **Telegram replies** (8 Oct 13:14Z to 13:56Z) are labelled as unrecorded ids, not re-read, and his claims. They are hedged correctly.
10. **P2SH quotes** match `raw-2026-10-08/x-p2sh-posts.json` and `kaspa-master-watch/raw/2026-10-08/x-core.json`: all 6 ids, the times 17:22:56Z to 18:47:49Z, "very easy to implement in kaspa" and "a 2-line silverscript contract" verbatim. Sutton's double space ("wide-spread␣␣wallet") sits in paraphrased text only, so no quote is altered.
11. **x402 #28:** merged 9 Oct 00:12:42Z as `36f5136c`, now main. Head `39e1edbb`, by elldeeone. The body's three bullets match the summary. The latest tag is `v1.0.0-rc.2`; `releases/latest` returns 404.
12. **KaChat main `a632f81f`** (9 Oct 04:24:12Z, registry v4 docs). 18 commits since `1be4f6e6`, including IOS-061 fees, IOS-063 Address Book, and IOS-020 supply.
13. **dotk-indexer:** `26548583` (7 Oct 14:51:54Z) has the message "Lower the catch-up threshold to 20 chain blocks". The v1.1.1 tag peels to `b23e86d8`. The release body (14:55:42Z) is the fewer-than-20-blocks text. The rewording is correct.
14. **KPI #22:** merged 8 Oct 18:22:45Z as `e4a10390`, head `52256d7e`, not a draft. Main is `ccbdfbc7` (19:52:31Z). #27, #28 and #29 merged with the stated titles.
15. **Caveats.** Every new 9 Oct section, the two new pages, and the matching JSON notes carry the third-party caveat. Desk claims are marked desk; author claims are marked as the author's.
16. **`builders.json`** is canonical (indent 2, 0 `\u` escapes, `updated` 2026-10-09). It has 21 entries (was 19). The new entries mirror their pages.
17. **Mirrors.** The README rows, JSON notes and page texts agree, except B1 and U1.
18. **SNAPSHOT.** The 9 Oct 08:45 row is first, above 8 Oct 18:14. Its link `fc80e5c` resolves (06:43:04Z). Advisory: the row says 08:45 while the commit time is 08:43.
19. **Render** via POST /markdown: README has 2 tables, 25 → 27 tr (+2 new rows). SNAPSHOT is a single table.
20. **Leak:** per-name counts (whole word and substring) are equal on main and tip for all 20 names, and no name appears in commit messages. No private repo names beyond those approved on main.
21. **Live state at 9 Oct** matches every pinned head and merge above.
22. **Trial merge onto builders `main` `5487e1f`:** a fast-forward with no conflicts. `main` is unchanged since the base.
23. **Pushes are plain**, per the header.

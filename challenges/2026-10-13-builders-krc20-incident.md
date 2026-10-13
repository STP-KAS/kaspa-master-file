# Challenge: kaspa-builders master/builders-krc20-incident-2026-10-13

Reviewed 2026-10-13 08:16 CEST. Tip 4921e693eabaaf409f3ff7adb8c1c36a0eb386d5 (ebf3f29 content, 4921e69 row link). Builders main is 4e4101eda30db107a660f5eb09d02de096503058 (ls-remote) and is an ancestor, so this is a fast-forward; trial merge clean. The activity API shows the branch created 06:10:22Z at 4921e69. Both commits use the noreply address. This note lives in kaspa-master-file; nothing was pushed to kaspa-builders.

**Counts: 9 HELD, 1 FAILED, 0 UNVERIFIABLE.**

## HELD
1. The move is word for word: the paragraph from "**Fix release (primary source, GitHub):**" through "Desk read of the repo; indexer not run." on kaspa-master-file f0c55f0 README L73 is a line of its own in entries/krc20-incident.md (L28).
2. The caveat "Third-party indexer; desk read of the repo; indexer not run; not desk-tested." is on its own line after it.
3. The builders.json note includes the master.json row 19 plain paragraph verbatim, then the caveat. "checked" is 2026-10-13, and 8 go-krc20d source URLs are added.
4. Facts hold live (06:16Z): release krc20d-3.01.260930, published 2026-10-03T02:41:33Z, "Fixed a vulnerability in the script parser"; the tag ref points to ba3ab6f3; load.go L19–21 at ba3ab6f3 have Version 3.01.260930 and HfDaaScoreScriptParserFix = 97539090; a9754ffd ("bugfix", 2026-10-12T10:24:17Z) is still not released (latest release is still 260930).
5. The README index row adds a short summary with the same caveat, and the "Last checked" line is updated with a dated split (2026-10-13 go-krc20d section; 2026-09-23 moved text).
6. builders.json is canonical: indent 2, 0 \u, 0 markdown characters in the file.
7. The SNAPSHOT 08:10 row is on top, links ebf3f29 with its full SHA, and states the move and the caveat.
8. AGENTS rules hold: source on every claim (pinned SHAs, a release tag URL, file and line at ba3ab6f3), third-party labelled and not desk-tested, times in Z/CEST.
9. Guard: live 17 plus 1 old name of a renamed private repo = 18, case-insensitive. Diffs, trees and commit messages of ebf3f29 and 4921e69: 0 hits.

## FAILED
**F1. The text points to the old, unmerged branch.** entries/krc20-incident.md L26 ("Moved from the kaspa-master-file Build branch `build/2026-10-13` at `f0c55f0` (README.md L73, …") and the SNAPSHOT 08:10 row ("…copied verbatim from the master's Build branch `build/2026-10-13` at `f0c55f0` (README L73)…") cite f0c55f0. That commit will never be on main: it was replaced by build/2026-10-13-r2, and its history holds the stray-file commit. ceaa94a on r2 has an identical tree, so README L73 is the same there.
Fix:
- entries/krc20-incident.md L26: replace "Build branch \`build/2026-10-13\` at \`f0c55f0\` (README.md L73," with "Build branch \`build/2026-10-13-r2\` at \`ceaa94a\` (README.md L73, same tree as the replaced \`f0c55f0\`;".
- SNAPSHOT-HISTORY.md 08:10 row: replace "Build branch \`build/2026-10-13\` at \`f0c55f0\` (README L73)" with "Build branch \`build/2026-10-13-r2\` at \`ceaa94a\` (README L73)".
These are plain branch commits, with no force-push. The ebf3f29 commit message also names f0c55f0. That is history; it is only a SHA, and f0c55f0's own tree holds no private name, so I accept it rather than ask for a force-push.

## Note for stp (no action taken)
build/2026-10-13 is still pushed on kaspa-master-file, and its commit 1a65557 contains the old private repo name (14 characters). Leaving it unmerged keeps it off main, but the branch itself stays public on GitHub. Deleting it is an external, irreversible step and needs stp's explicit approval.

Merge order: this builders branch after F1 is fixed and rechecked, then kaspa-master-file build/2026-10-13-r2. r2's "(not merged there yet)" can be dropped in the next sweep.

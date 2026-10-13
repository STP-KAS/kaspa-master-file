# Recheck: kaspa-builders master/builders-krc20-incident-2026-10-13

Rechecked 2026-10-13 08:17 CEST. Tip ade95033c3b8cabba558e45f4901fac7e499f660, one commit on 4921e69. The activity API shows a plain push 4921e69→ade9503 at 06:16:41Z, and 4921e69 is an ancestor, so it was not a force-push. Builders main is 4e4101e and is an ancestor of the tip, so this is a fast-forward; trial merge clean. kaspa-master-file main is 9b0a7487432c83fffd2a46dd3a4d07cda6eacc9b (ls-remote), so r2 is merged.

**Counts: 6 HELD, 0 FAILED, 0 UNVERIFIABLE.**

1. F1 in entries/krc20-incident.md is word for word: "Build branch `build/2026-10-13-r2` at `ceaa94a` (README.md L73, same tree as the replaced `f0c55f0`;".
2. F1 in the SNAPSHOT 08:10 row is word for word: "Build branch `build/2026-10-13-r2` at `ceaa94a` (README L73)".
3. The word-diff 4921e69..ade9503 changes only those two spots (branch name and SHA, plus the inserted clause). Nothing is dropped.
4. builders.json is unchanged and canonical (indent 2, 0 \u, 0 markdown).
5. Guard against 18 names (live 17 plus 1 old name), case-insensitive, over the diff, tree and message of ade9503: 0 hits.
6. The commit uses the noreply address.

Next sweep: now that master r2 is on main, drop "(not merged there yet)" from the master KRC-20 incident pointer once this branch merges.

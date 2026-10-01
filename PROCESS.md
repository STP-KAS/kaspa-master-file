# Process

How work reaches main in this repository. stp approved this process on 1 Oct 2026.

## One main, one merger

Only kaspa master bot merges into main. It merges only after stp OKs it. No bot pushes content straight to main. The one exception is this PROCESS.md, which was added with stp's OK.

## Branch prefixes

- `build/` is for kaspa master prompt build: Grok Build prompts and analysis.
- `ask/` is for drafts from Ask.
- `grokbot/` is for TN10 ops: the TN10 node, the miners, and stress findings.
- `master/` is for kaspa master bot's own sweep updates.
- `challenge/` is for challenge notes.

Use one branch per topic. Name it `<prefix>/<topic>-YYYY-MM-DD`.

The existing branches `master-revisited-build` and `challenge-x402-tn10ops-2026-10-01` predate these prefixes. They are fine as they are.

## Challenge before merge

Every content branch gets a challenge pass from kaspa master challenge before it can merge.

Write the pass as `challenges/<topic>-YYYY-MM-DD-<bot>.md`. Put it on a `challenge/` branch, or on the same branch.

Each claim gets one line: HELD, FAILED, or UNVERIFIABLE. Then the file, the commit, the line, and a short quote.

Any other bot may add its own challenge note.

A branch with an open FAILED item does not merge. It waits until the item is fixed or stp overrides it.

## Weekly reread

Every Monday morning kaspa master challenge rereads main top to bottom. It looks for stale lines: old hashes, dead endpoints, and outdated status. It pushes the result as `challenge/weekly-main-YYYY-MM-DD`.

## Rules that always apply

- Commit identity is `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`.
- No real names, emails, home paths, seeds, keys, or reserve addresses.
- Nothing public on other people's repositories.
- No tags or releases.
- A public api-tn10 search is never proof a payment landed. Check a synced node.

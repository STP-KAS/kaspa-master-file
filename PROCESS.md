# Process

How work reaches main in this repository. stp approved this process on 1 Oct 2026.

## One main, one merger

Only kaspa master bot merges into main. Since 8 Oct 2026 23:47 CEST (stp, confirmed in kaspa master bot's chat), stp's OK is no longer needed: kaspa master bot merges a branch once it has passed the review gate for its kind (see "Fact-check before merge") at that branch's exact tip SHA. It merges that exact SHA, and only if no newer commits have landed on top of it; newer commits need a new pass. It holds the merge while its fact-check of that branch is still running. Merges are plain fast-forwards, never a force-push, and kaspa master bot tells stp the new main hash right after each one. stp can still stop or override any merge. No bot pushes content straight to main. The one exception is this PROCESS.md, which was added with stp's OK.

## Branch prefixes

- `build/` is for kaspa master prompt build: Grok Build prompts and analysis.
- `ask/` is for drafts from Ask.
- `grokbot/` is for TN10 ops: the TN10 node, the miners, and stress findings.
- `master/` is for kaspa master bot's own sweep updates.
- `challenge/` is for challenge notes. Since 19 Oct 2026 no new `challenge/` branch is pushed; the existing ones stay as history.

Use one branch per topic. Name it `<prefix>/<topic>-YYYY-MM-DD`.

The existing branches `master-revisited-build` and `challenge-x402-tn10ops-2026-10-01` predate these prefixes. They are fine as they are.

## Fact-check before merge

Every content branch gets an independent line-by-line fact-check before it can merge.

Each claim gets one line: HELD, FAILED, or UNVERIFIABLE. Then the file, the commit, the line, and a short quote. Every pass names the full tip SHA it checked.

Since 9 Nov 2026 (stp, 9 Nov 21:49 CET), kaspa master challenge is no longer used, and the pass works like this:

- **Daily sweeps** (`master/sweep-YYYY-MM-DD` and `master/builders-sweep-YYYY-MM-DD`): after each sweep, kaspa master bot runs the fact-check itself, independently of the sweep, line by line against the cited sources. Slips are fixed with new commits only (no history rewrite, no force-push), and the new tip is checked again. Its notes are kept privately, not on a public `challenge/` branch. When the result is FAILED 0, kaspa master bot fast-forwards main to that exact tip.
- **Build branches** (`build/YYYY-MM-DD`): since 23 Oct 2026 there is no daily Build pass and no settled-at-SHA gate; `build/` branches are held unmerged until stp sets a new gate (see AGENTS.md, Daily loop).

Any other bot may add its own review note.

A branch with an open FAILED item does not merge. It waits until the item is fixed or stp overrides it.

## Weekly reread

Until 9 Nov 2026, kaspa master challenge reread main top to bottom every Monday morning, looking for stale lines: old hashes, dead endpoints, and outdated status; its notes were kept privately. kaspa master challenge is no longer used; no replacement weekly reread is set in this file.

## Rules that always apply

- Commit identity is `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`.
- No real names, emails, home paths, seeds, keys, or reserve addresses.
- Nothing public on other people's repositories.
- No tags or releases.
- A public api-tn10 search is never proof a payment landed. Check a synced node.

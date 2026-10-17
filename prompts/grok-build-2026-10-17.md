# Prompt for Grok Build — independent analysis of the 17 Oct 2026 Kaspa daily sweep

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (sweep 17 Oct ~07:41–07:55 CEST, window from 16 Oct 05:50Z). It pushed branch `master/sweep-2026-10-17` on https://github.com/STP-KAS/kaspa-master-file and `master/builders-sweep-2026-10-17` on https://github.com/STP-KAS/kaspa-builders. Do **not** trust the report. Analyse it your own way.

## Branch for your work
Use a new `build/2026-10-17` from current `origin/main`, or continue an open `build/` branch if you still hold unmerged work — merge or rebase onto current main first. Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`.

Branches: `master/sweep-2026-10-17`. Tip at the first prompt commit was `ef4b48b` (17 Oct 2026 07:51 CEST); this refresh is the next commit on the branch.

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-17.md` on `master/sweep-2026-10-17`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, X, Facebook). No reactions, issues, PRs, tags or releases, on any repo, including STP-KAS ones. A new sourced fact goes into the master file and stops there.
- **Master is core-only (stp, 4 Oct 2026).** Third-party projects (x402, KPI, KasperoLabs, KaChat, kascov, Kastle, …) live in STP-KAS/kaspa-builders; cite it only with its caveat.
- Cite a URL for every claim. Times with zone (CEST in chat; Z fine in the master), from saved server `Date` headers or API timestamps.
- No fabrication. If you cannot verify, say "not verified". Never claim an HTTP status without saved headers. Quotes character for character from saved raw. Every review/comment fact from a fully paginated read.
- Do not weld objects: #1152 open ≠ merged; #1060 merged on master ≠ a release (tag still v2.1.0); "stable (and secure) testnet this year" ≠ a DAGKnight mainnet date or a TN13 genesis; x402 v1.0.0 ≠ mainnet or audited; a CHANGES_REQUESTED review is not a close; an X thread is not a security advisory.
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (old cell copied verbatim to SNAPSHOT-HISTORY "Moved from README on <date>"); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; `master.json` notes plain text, absolute links, validated.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain push of your `build/` branches only. Never force main.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** (including `master/sweep-2026-10-17`).
- X: no X calls unless stp asks; the sweep covered X.
- Never share seeds/keys. Do not touch TN10 processes (TN10 ops owns them).
- Main merges: kaspa master bot merges on a challenger pass with 0 FAILED at the exact tip.
- Do not name private STP-KAS repos in either repo (check `gh api repos/STP-KAS/<name> --jq .visibility` before linking any STP-KAS repo).

## Tasks
1. **rusty-kaspa #1152** (covenant-id UTXO index, `GetUtxosByCovenantIds`, head `b58e51e4`): read the diff and confirm the sweep's summary of the PR body (store layout, limits, `--unsaferpc`, no notifications). Tighten the Covenant-id lookup cell if needed. Keep it "proposed, unreviewed, not on master".
2. **rusty-kaspa #1060** merged as `f7d78773`: verify the `no_std` scope and the CI target from the merged code, not only the PR body. Not a release.
3. **Sutton DK testnet reply** https://x.com/michaelsuttonil/status/2110998749463929081: check the wording against the sweep's saved raw; keep KIP-2 Proposed and the TN13 hedges. Consider whether it touches the 3 Sep six-milestone line (testnet with no security relaxation).
4. **KGI #10/#11** (main `8e175b76`): read status.md at `8e175b76` and say which increments are now in.
5. **Close watch #1147/#1146:** re-read reviews and comments (paginated); confirm still open at `239556a6` (now `mergeable_state` dirty) with no new activity after `2026-10-16T05:50:00Z`.
6. **v2.1.0 disclosure claim (Recon thread):** look for a primary source (advisory, release-note edit, maintainer post, Kas-Smiths). If none, leave it out.
7. **Builders (optional):** x402 v1.0.0 (tag peels to `e5f5b0ed`; RC2 bind-tag text in the entry needs a decision); Kas-Smiths post 414 fee vs relay floor (could be desk-checked against a v2.1.0 node's mempool rules, TN10 only, no broadcast needed); KPI #31/#32 into the KPI entry; kascov-decode 0.2.0.
8. **What to build or test next** (TN10 only, no public posting): short ordered list.
9. Write sourced facts only to your `build/` branch. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch report — 2026-10-17

All times CEST unless marked Z. Window: GitHub since `2026-10-16T05:50:00Z`; X since the 16 Oct markers; forum since post 410. core_replies paused.

## Added (master `master/sweep-2026-10-17`)
- rusty-kaspa [#1060](https://github.com/kaspanet/rusty-kaspa/pull/1060) "Consensus core nostd" merged 16 Oct 12:03:37Z as `f7d78773` (michaelsutton APPROVED 12:03:17Z); new master tip. Not a release; tag still v2.1.0 `01b532e8`. (Not live cell)
- rusty-kaspa [#1152](https://github.com/kaspanet/rusty-kaspa/pull/1152) opened 16 Oct 11:54:21Z by biryukovmaxim: covenant-id UTXO index plus paginated `GetUtxosByCovenantIds` RPC, head `b58e51e4`, 42 files (+2051/−62), open, no reviews. A PR for the endpoint IzioDev called a future RPC on 16 Sep; still not on master. (Covenant-id lookup cell)
- Sutton X [2110998749463929081](https://x.com/michaelsuttonil/status/2110998749463929081) (16 Oct 07:38:16Z), answering aKaspamaxi's "is a 2026 release still the target, or should we expect DK sometime in 2027?": "i believe we can get to a stable (and secure) testnet this year". Plus [2110989422569132045](https://x.com/michaelsuttonil/status/2110989422569132045): applications incl. stables are high priority in parallel with DK. His belief, not a mainnet date. (TN13 / DK plan cell)
- KGI main `8e175b76` (16 Oct 20:29:01Z): #10 graph projection reads (`254d480b`) and #11 publication state/mutation kernel. (KGI v2 design cell)
- TN10 public API: 14× HTTP 200 (05:42:04Z–05:42:14Z), all 2.1.0 `af0bc9c5`, isSynced true, blueScoreDiff 0–38, DAA **598812634**.
- Kas-Smiths: 49 / 388 / 114; new post 414 (x402 topic); post 413 HTTP 403; topic 161 still HTTP 404.
- KeenHero closed his own unmerged rusty-kaspa #1092–#1095 and #1097 on 17 Oct 05:12Z (noted in the Not live cell).
- Commits: content [`97158dc`](https://github.com/STP-KAS/kaspa-master-file/commit/97158dcf6203b1dc2377eaf0c858e92b08165f90), SNAPSHOT row [`ab54415`](https://github.com/STP-KAS/kaspa-master-file/commit/ab54415).

## Added (builders `master/builders-sweep-2026-10-17`)
- x402 release **v1.0.0** published 16 Oct 06:06:05Z (tag `09411aa7` → `e5f5b0ed`); `releases/latest` HTTP 200 (Date 05:44:55Z); main `ee6670c6`. Kas-Smiths post 414 (Ross): `standardNative` vector fee 200000 sompi vs a 203600 relay floor he saw on a v2.1.0 node (his test).
- KPI #31/#32 merged (main `335fbca8`): author's TN10 deposit 10 / withdraw 4 cycle with real proofs; forged-state receipt rejected by the node (author's report).
- kascov-decode 0.2.0 (`c5a1aaa9`, KCC conventions at kccs `1516a6c`); KasperoLabs bridge superblock claim (X relay); KasSigner candidate (X); KaChat `b5bbd97b`; kob `08f1cae3`; Kaspire Windows 0.1.6 (`31148025`).
- Commits: content [`fb1c4f9`](https://github.com/STP-KAS/kaspa-builders/commit/fb1c4f9), row `6827fae`.

## Held / unchanged
- Close watch: #1147 open, head `239556a6`, `mergeable_state` dirty, 1 review (Sutton CHANGES_REQUESTED 13 Oct), 7 comments (last 13 Oct); #1146 open, 4 comments (last 13 Oct). atharaldsen: no new issues, comments or commits in kaspanet since 16 Oct.
- Core tag lists (rusty-kaspa, python-sdk, vprogs, kccs, silverscript) unchanged; `dagknight` tip `ad45e241`.
- core_replies paused.

## Not verified
- ReconProtocol thread (from https://x.com/ReconProtocol/status/2111146174430245132, 16 Oct 17:24Z): retroactive disclosure of four v2.1.0 DoS fixes, three credited reporters, a 14-day reporter-reward fundraiser. No primary source: rusty-kaspa advisory list empty, v2.1.0 release body last updated 22 Sep, no discussion in the A-Z read, web search found none. Not recorded in cells.

## Skipped
- kaspaunchained / Kaspa_Commons / KASPAglobal soft posts; Sutton "flying cars" joke; manyfest_ covenant-landscape musing; IzioDev HDD and transition replies; Recon network-stats post (third-party numbers).
- agenc-core flood (345 commits, 30 issues/PRs; stp apps, builders catalog only if Build wants).

## Per source
- GitHub A-Z: 85 repos, 93 GraphQL + 308 REST page calls, 0 gaps (`raw/2026-10-17/az/`). Orgs kaspanet, argent-lang, tetsuo-ai; 17 user event feeds; atharaldsen 3 searches OK.
- X: free `x` namespace, $0 user credits spent; balance $6.75 (unchanged). core 10 (page 2 empty), community 8 (page 2 empty), deshe 0, 11 full texts, Recon thread 9 posts.
- Kas-Smiths: HTTP 200 headers saved; 413 HTTP 403; 161 HTTP 404.
- Sites: TN10 healthy; kaspa.org `Date` still 9 Oct (CDN cache); api.kaspa.org, api-tn10 root and kns-2.gitbook.io 307; others 200. Bodies and headers in `raw/2026-10-17/sites/`.
- Bot mail: no hand-off file in the watch raws in the last 24h.
- Tags: full scan saved; only new tag is x402 v1.0.0 (builders).

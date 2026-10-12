# Weekly main reread, 12 Oct 2026

Reviewed tip: main `fd4320e2a342d86f9a085c9ea5bf4d7d804c3679` ("Link challenge-fix SNAPSHOT row to 2b5ba6f."), fetched 12 Oct 2026 09:31 CEST.
Writer: kaspa master challenge, under PROCESS.md (Weekly reread). Read-only checks. No public reply. Local TN10 wRPC on this box was unreachable; public api-tn10 used instead. X tools skipped.

Counts: **HELD 18, FAILED 5, UNVERIFIABLE 4.** Line numbers are at `fd4320e`.

## How this pass checked

- Leak scan of every tracked file (emails, home paths, seed/key patterns, `ghp_`/`sk-` tokens, Kaspa addresses).
- Live private STP-KAS list via `gh repo list STP-KAS --limit 300 --json name,visibility` (138 repos: 122 public + 16 private). Tree scan for those private names (word-boundary): **zero hits**. Private names are not written in this note.
- Spot-check of README **Now**, `master.json` section `now`, AGENTS.md, DESK-BOT.md, START-HERE.md, STP-REPOS.md, PROCESS.md, scripts/probe-nodes.ps1, and related pins through `gh api`, crates.io, PyPI, Discourse `about.json`, `api-tn10.kaspa.org`, and sample non-GitHub HEAD/GET. 30 Now-board commit links resolved. X links not opened.

## FAILED

- **FAILED W-F1** README.md L67 and master.json L219 (`fd4320e`): "STP-KAS owns **110** repos (6 Oct 08:01 CEST live count…): **95 public + 15 private**" (README); master.json "6 Oct 2026 live count (08:01 CEST): 110 repos, 95 public and 15 private". Evidence, 12 Oct 09:31 CEST: `gh repo list STP-KAS --limit 300 --json name,visibility` → 138 repos, 122 PUBLIC + 16 PRIVATE; `gh api users/STP-KAS --jq .public_repos` → 122. Fix: rewrite both to the 12 Oct live count (138 / 122 public + 16 private); keep private names off the board; leave older dated counts labeled as receipts in SNAPSHOT-HISTORY.

- **FAILED W-F2** DESK-BOT.md L26 (`fd4320e`): "**tn10 bot** — TN10 node | **Resyncing** since 29 Sep 22:25 CEST, not on public TN10 yet". Same residual as weekly-main-2026-10-05 W-F4. Contradicts AGENTS.md L18 ("Synced with public TN10… checked 4 Oct 2026 08:02 CEST") and live public TN10. Evidence, 12 Oct 09:34 CEST: `curl` `https://api-tn10.kaspa.org/info/health` → kaspad 2.1.0, `isSynced` true, `database.isSynced` true; `/info/blockdag` → `virtualDaaScore` 594558416. Local `127.0.0.1:17210`/`18210` did not connect from this box (see W-U1). Fix: replace the status cell with a pointer to AGENTS.md Standing authority (current synced reading), not a frozen 29 Sep resync line.

- **FAILED W-F3** README.md L53 and L67, master.json L39 and L219 (`fd4320e`): present-tense "#1147 open, **4 comments, one of them by STP-KAS** (11 Oct 19:44:32Z)" and the recorded-exception link `…/pull/1147#issuecomment-6112983771`. Evidence, 12 Oct 09:34–09:35 CEST: `gh api repos/kaspanet/rusty-kaspa/issues/1147` → `comments: 3`; issue comments are only oskrcl (6111076516, 6111091787) and atharaldsen (6111314427); `gh api …/issues/comments/6112983771` → **HTTP 404** (comment gone). Head still `b4df2d8f`, `mergeable_state` blocked, open. Fix: set comment count to 3; drop or rewrite the live "one of them by STP-KAS" clause; for the exception sentence, either note the comment was deleted after 12 Oct morning reads or remove the dead anchor (history of the exception can stay without a live link).

- **FAILED W-F4** README.md L60 and master.json L69 (`fd4320e`): Referee / kaspa-explained tip "**still** `a68bcaf6` (28 Sep 14:47Z)". Evidence: `gh api repos/parker2017code/kaspa-explained/commits/HEAD` → `e48f53b80cab1b3465b4dd91c1379399e17bad2c` (2026-10-06T08:21:27Z); compare `a68bcaf6…HEAD` → ahead_by 4. Fix: pin `e48f53b8` (or newer tip at fix time) and re-read `/status` against that tip.

- **FAILED W-F5** README.md L60 (`fd4320e`): after correctly noting kaspaexplained lag, the cell states as a board fact that "kccs main has KCC-1 and KCC-2 at Last Call …; **KCC-20 is Draft**". Evidence: `kcc-0020.md` at kccs `3fbec524` header `Status: Last Call` (`gh api repos/kaspanet/kccs/contents/kcc-0020.md?ref=3fbec524`). master.json L69 already says "KCC-1, KCC-2, and KCC-20 are Last Call, not Final" and correctly attributes "Draft" to the site. The site at read time still says KCC-20 is Draft (lag holds). Fix: change README L60's kccs-main clause to "KCC-20 is Last Call on main `3fbec524`; the site still says Draft".

## UNVERIFIABLE

- **UNVERIFIABLE W-U1** AGENTS.md L18–L19 (`fd4320e`): desk node pid/miners/`getServerInfo` on sandbox loopback. `curl` to `127.0.0.1:17210` and `18210` failed (connection refused) from this challenge box. Public api-tn10 health holds (see W-F2 evidence). No change proposed from here; TN10 ops owns the box.

- **UNVERIFIABLE W-U2** X / x.com links across the tree (including START-HERE.md L23–L25 and Now-board tweet pins). No X tools this pass (credits floor). Their quotes rest on the passes that added them.

- **UNVERIFIABLE W-U3** faucet `https://faucet-testnet.kaspanet.io` and eprint PDFs (`eprint.iacr.org/2018/104.pdf` and kin): curl → HTTP 403 (bot protection), not proof of dead pages. Huji inclusive PDF answered 200 this week.

- **UNVERIFIABLE W-U4** Discord widget / medium.com-style hosts that answer 403 under scripted curl (same class as last week). Not re-proven as dead.

## HELD (spot checks)

- **HELD W-H1** Leak scan, whole tree at `fd4320e`: no email except STP-KAS noreply `227352643+STP-KAS@users.noreply.github.com`; no `ghp_`/`sk-`/xprv/kprv/`BEGIN … PRIVATE`; mnemonic hits are "never share" rules only; Windows `C:\Users\<first-name>\…` paths remain allowed; only Kaspa address is the public TN10 pay-to in AGENTS/DESK-BOT/RECEIPTS/master.json/scripts.

- **HELD W-H2** Private STP-KAS names: live list has 16 private repos; word-boundary scan of every tracked file → **0 hits**; zero `github.com/STP-KAS/<private>` links. Meets the 9 Oct rule (main must have zero private names/links).

- **HELD W-H3** README L50 Live / release pins: rusty-kaspa latest release `v2.1.0` published 2026-09-22T13:55:36Z, tag object `01b532e8…`; v2.0.1 → `cfafeb4c…`; #1129 open, head `8b9f1c419f`, mergeable_state dirty. SilverScript release `v1.0.0` → `3ed9733…`.

- **HELD W-H4** Crates.io: `kaspa-consensus-core`, `kaspa-txscript`, `kaspa-hashes`, `kaspa-rpc-core`, `kaspa-wallet-core` all `max_version` 2.1.0 (last week's W-F1 is fixed on the board).

- **HELD W-H5** README L52 Python SDK: GitHub release `v2.1.0` 2026-09-24T23:54:14Z; PyPI `kaspa` 2.1.0.

- **HELD W-H6** README L55 KIPs: kips master still `e4ae2332` (2026-07-15T12:19:57Z); kips#41 open, head `028117f8`.

- **HELD W-H7** README L56 Not live: #1104 open head `a5888dab`; #1127 open head `3c267993`; #1135 open head `aaa5f25f`.

- **HELD W-H8** README L63 KCC20 reference: #1 merged, merge commit `c8a08711`, merged_at 2026-10-07T19:50:09Z; argent-lang/kcc20-reference master tip `c8a08711`.

- **HELD W-H9** README L65 KCC-3/4/5: kccs#29 open, head `55742861`, not merged.

- **HELD W-H10** README L66 Kas-Smiths: `about.json` → topics_count 50, posts_count 388, users_count 114 (matches the 12 Oct cell).

- **HELD W-H11** README L68/L70 vProgs / tictactoe: `release-candidate` `cc0d54bc` (2026-10-08T14:50:25Z); master `f9b84a86`; tictactoe HEAD `f93e52fe` (2026-10-08T14:54:51Z).

- **HELD W-H12** README L71 Argent: master `9a9f4b10` (2026-10-07T08:24:44Z); 0 tags; #69 open head `435fa89a`.

- **HELD W-H13** README L74 SilverScript holes / #256: #256 closed 2026-10-10T12:05:48Z; #243/#249–#254 open; #258 closed; silverscript master `a0dd7448`. Board already records the close.

- **HELD W-H14** README L79/L80/L82: kdapp `eade8531`; kaspa-xmss `e36538f9`; KGI main `82dcc0e6` (2026-10-11T20:37:55Z).

- **HELD W-H15** README L81: #1140 open (1 comment); #1141/#1142/#991 open.

- **HELD W-H16** README L83 research.kas.pa: `latest.json?order=created` newest topic still 522 (2026-09-08T13:11:33Z).

- **HELD W-H17** master.json docs.agenc.tech (agenc-export): marked dead, empty url, note "410 Gone as of 6 Oct 2026"; live curl still 410; agenc.tech 200. Last week's W-F6 fixed. explorer-tn10 still 402. scripts/probe-nodes.ps1 authority line no longer names retired kaspa bot as active peer (last week's W-F10 fixed).

- **HELD W-H18** START-HERE.md L27: 21 Sep host-pin wording is dated ("On 21 Sep… Current pin: README Now") — last week's W-F5 fixed. PROCESS.md Weekly reread section present. kaspanet org `public_repos` 26. Sample of 30 Now commit links all resolve. TN10 public API still answers 200 with synced indexer (versions in the pool may rotate; 09:34 sample saw 2.1.0).

## Not flagged on purpose

- RECEIPTS.md, STP-REPOS.md (21 Sep receipt counts), GROK-47-*.md, intel-pack.md, dated prompts and dated field notes: frozen receipts; old counts/pins not scored unless they leak private names (none did).
- DESK-BOT.md 19 Sep recheck table (v2.0.1, old DAA): dated receipt under a 17 Sep freeze card, not the Standing authority row (that row is W-F2).
- SNAPSHOT-HISTORY.md inherited private-name history: not re-scored; live main tree has zero private names (W-H2).
- X-only claims: W-U2.

## Serious?

**No.** No private STP-KAS name or secret on public main. Failures are stale counts, a leftover DESK-BOT status cell, a deleted #1147 comment leaving a wrong live count, and referee tip/status wording. Tell kaspa master bot; do not wake stp.

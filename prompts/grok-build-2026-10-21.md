# Prompt for Grok Build — independent analysis of the 21 Oct 2026 Kaspa daily sweep

You are Grok Build working for stp (STP-KAS). Below is a daily report from the kaspa master bot (sweep 21 Oct ~07:47–08:10 CEST, window from 20 Oct 05:49:15Z). It pushed branch `master/sweep-2026-10-21` on https://github.com/STP-KAS/kaspa-master-file and `master/builders-sweep-2026-10-21` on https://github.com/STP-KAS/kaspa-builders. Do **not** trust the report. Analyse it your own way.

## Branch for your work
Use a new `build/2026-10-21` from current `origin/main` (`b180500` at sweep time; it already contains `master/sweep-2026-10-20` and `build/2026-10-20-r2`), in a fresh clone (for example `/workspace/repos/kaspa-master-file-b21`; do not use the shared checkout `/workspace/repos/kaspa-master-file`). Do not push to main. Do not touch `master/*`, `challenge/*`, `grokbot/*`, or `ask/*`. Do not touch or merge the parked `build/2026-10-15` or `build/2026-10-20` (`4c29707`).

Branches: `master/sweep-2026-10-21`. Commits in order: `4af8643` (content), `692a269` (SNAPSHOT row), `7666dcc` (first prompt commit), `020c16e` (challenge F1/F4 fix: KIPs pointer, #1152 force-push timeline); `39bcdf3` (prompt fix, challenge F2/F3/F4); this builders-tip refresh is the next and last commit (the tip).

If a SendToAgent message is missing, the same prompt is also at `prompts/grok-build-2026-10-21.md` on `master/sweep-2026-10-21`.

## House rules
- **Zero public comments** anywhere (GitHub, Kas-Smiths, research.kas.pa, X, Facebook). No reactions, issues, PRs, tags or releases, on any repo, including STP-KAS ones. A new sourced fact goes into the master file and stops there.
- **No cargo or builds of any kind** (stp's ban stands). Do not touch TN10 processes (TN10 ops owns them). Delete nothing.
- **Master is core-only (stp, 4 Oct 2026).** Third-party projects (x402, KPI, KasperoLabs, KaChat, Kaspire, kascov, Kastle, KaspaHub, kob, …) live in STP-KAS/kaspa-builders; cite it only with its caveat (third-party, not audited, demo, not desk-tested).
- Cite a URL for every claim. Times with zone (CEST in chat; Z fine in the master), from saved server `Date` headers or API timestamps.
- No fabrication. If you cannot verify, say "not verified". Never claim an HTTP status without saved headers. Quotes character for character from saved raw. Every review/comment fact from a fully paginated read.
- Do not weld objects: three open kccs pulls ask for KCC-3 (#29, #37, #38) and none is merged; kips #48 and #37 both use 22; a KIP or KCC Draft is not Active; a post saying "KCC-20 is final on October 21" is not a status change while `kcc-0020.md` on main says Last Call; a wallet shipping a Draft derivation does not make it assigned; one TN10 backend in a sample is not a pool size.
- Follow AGENTS.md and PROCESS.md: README **Now** cells rewritten in place (old cell copied verbatim to SNAPSHOT-HISTORY "Moved from README on <date>"); dated text in SNAPSHOT-HISTORY; RECEIPTS frozen; `master.json` notes plain text, absolute links, validated. Count cells per README row WITHOUT stripping code spans (escape `|` in code as `\|`); confirm with the GitHub markdown API render. Stage files by name; no global sed; never edit old SNAPSHOT rows. Links to sweep anchors resolve only after the sweep merges, so say so.
- Git identity: `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. Plain merges and plain pushes of your `build/` branch only; no rebase, no `git pull --rebase`. Never force main. Push with `-c credential.helper= -c 'credential.helper=!/usr/local/bin/gh auth git-credential'`.
- Before adding a fact: `git fetch --prune` and search **main and every open origin branch** (including `master/sweep-2026-10-21`).
- X: no X calls; the sweep covered X. X items only from the watch raws (`/workspace/artifacts/kaspa-master-watch/raw/2026-10-21/x/`).
- Never share seeds/keys.
- Main merges: build/ branches merge only after master bot prompt for build confirms them settled at the exact tip it names; the challenger reviews them privately.
- Do not name private STP-KAS repos in either repo (check `gh api repos/STP-KAS/<name> --jq .visibility` before linking any STP-KAS repo, plus redirect checks); run the private-name guard (`bash /home/box/.kmf-guard/run.sh <repo-dir> <rev>...`, exit 0 only) before pushing.

## Tasks
1. **kips #49 vs rusty-kaspa:** read #49 at `7a383b9c` (the `kip-0020.md` diff, every page of reviews/comments). Check its claim against rusty-kaspa master `4edcbbcc` source (read only): `crypto/hashes/src/hashers.rs` and `consensus/core/src/hashing/covenant_id.rs` — is `"CovenantID"` used as the raw BLAKE2b key? Do not compute hashes by building anything; reading code and the vector text is enough. Say "not verified" for the digest values.
2. **rusty-kaspa #1157:** read the diff (1 file) and say in one or two sentences what the three tests pin. Confirm the KCC-23 fixture id matches `kcc-0023/vectors/conformance.json` on kccs main `1516a6c4` (text compare only).
3. **kccs #38 (KCC-3 HD hierarchy):** read `kcc-0003.md` at `299f6a0b` and the README index line. Confirm header (authors, Draft, Interface), path levels, purpose 44/45, coin types, sig_scheme, and whether it says anything about P2PKH via P2SH or KIP-22's `22'` purpose. Keep #29, #37 and #38 as three separate requests for 3.
4. **#1152:** confirm from the commit list that the branch was rewritten on 20 Oct (`b58e51e4` gone, head `7222a188`), and say which of D-Stacks' 10 points the new diff addresses (read code; say "not verified" where unsure). Keep "draft, not merged".
5. **vprogs #128/#129/#130:** confirm the three CHANGES_REQUESTED reviews and comment counts (every page); state the #129 settlement-check point precisely from the comment text. Any author reply or new commit?
6. **KCC-20 status:** re-read `kcc-0020.md`, `kcc-0001.md`, `kcc-0002.md` on kccs main with saved headers; record Status lines and whether any `Last-Call-Deadline` header exists. Quote KCC-0 §4's Final criteria from main. Any new kccs pull to move KCC-20 (or 1, 2) to Final after 05:57Z?
7. **TN10 public API:** two rounds, recording each backend; the watch saw only `41d9296c` (7/7). No pool size or ratio.
8. **Close watch #1141/#1147/#1146/#1150/#863/#1156:** every page; confirm nothing after `2026-10-20T05:49:15Z`.
9. **KGI `58fff562`** status.md increment 11 text; **kaspa.org/build** with saved headers (today CloudFront Hit, `Date` 19 Oct).
10. **Builders (optional):** third-party items are on kaspa-builders `master/builders-sweep-2026-10-21` (third-party items; see kaspa-builders). Work them only on a kaspa-builders branch, with the caveat.
11. **What to test next** (TN10 only, read-only, no builds, no public posting): short ordered list.
12. Write sourced facts only to your `build/` branch. After push, list commit links in chat.

## The report (inlined)

# Kaspa master watch report — 2026-10-21

All times CEST unless marked Z. Window: GitHub since `2026-10-20T05:49:15Z`; X since the 20 Oct since_ids (core `2112341897549373855`, community `2112402191390847260`, deshe `2109964501059608710`); forum since post 417; bot mail hand-offs since 19 Oct 07:40. core_replies paused. Yesterday's branches (`master/sweep-2026-10-20` @ `e71560b`, `master/builders-sweep-2026-10-20` @ `1940877`) are merged: `e71560b` is an ancestor of main `b180500`, and `1940877` is kaspa-builders main.

## Added (master `master/sweep-2026-10-21`, from main `b180500`)
- **KIP-20 covenant-id hash keying:** kips [#49](https://github.com/kaspanet/kips/pull/49) (Silentpartnercoding, 20 Oct 12:57:22Z, head `7a383b9c`, `kip-0020.md` +11/−1): §3.1 now says the `"CovenantID"` tag is the BLAKE2b key (raw 10 bytes), plus the KCC-23 fixture as a test vector (`c86366ce…394e`); "No consensus change". 0 reviews. Paired with rusty-kaspa [#1157](https://github.com/kaspanet/rusty-kaspa/pull/1157) (Silentpartnercoding, `8d2cac87`, +125 lines of covenant-id test vectors in `covenant_id.rs`; 0 reviews). (KIPs, Covenant-id lookup cells)
- **KCC-3 contested:** kccs [#38](https://github.com/kaspanet/kccs/pull/38) (IzioDev, 20 Oct 12:14:21Z, head `299f6a0b`, +564/−0) adds `kcc-0003.md` "Segregated Hierarchy for HD Wallets" (authors Ori Newman, Romain Billot; Draft; Interface; path `m / purpose' / coin_type' / sig_scheme' / account' / change / address_index`, purpose 44 P2PK / 45 multisig). It has no P2PKH-via-P2SH purpose. #29, #37 and #38 all ask for 3; #37 still 0 files at `8088f5c5`. Ori Newman X [2112430254941978741](https://x.com/OriNewman/status/2112430254941978741): "I wrote kip22 (now KCC-3) …". kips #48 unchanged at `b031344f`. (KCC-3/4/5, KIPs cells)
- **Covenant-id index:** #1152 rewritten 20 Oct (8 commits re-committed 11:17Z–13:50Z; five force-pushes, heads `ebcd0641` → `e143243a` → `e3b89502` → `689211bb` → `7222a188`); 45 files, +2771/−67, still draft, no new review or reply since D-Stacks' 18 Oct comments. (Covenant-id lookup cell)
- **vprogs snapshot stack:** hmoog CHANGES_REQUESTED on [#128](https://github.com/kaspanet/vprogs/pull/128) (22:53:45Z, 13 inline), [#129](https://github.com/kaspanet/vprogs/pull/129) (23:29:39Z, 4) and [#130](https://github.com/kaspanet/vprogs/pull/130) (23:49:46Z, 3), 20 Oct. Key point on #129: restore compares only `new_state` and `tx_id`, so "A crafted header can pin a genuine settlement to any chain block between the real `block_prove_to` and the containing block". #127 (1/4) no new review. (vProgs cell)
- **KCC-20 status:** saefstroem X [2112516625186574491](https://x.com/asaefstroem/status/2112516625186574491): "KCC-20 is final on October 21" (14 days after #31). At 05:57:38Z today `kcc-0020.md` on main `1516a6c4` says `Status: Last Call` (no `Last-Call-Deadline` line). KCC-0 §4 also requires every `Requires` entry to be Final; KCC-1 and KCC-2 are still Last Call. Recorded as: not Final on main. (KCC still open cell)
- **Native PQ signatures (belief):** Ori Newman X [2112432692549788127](https://x.com/OriNewman/status/2112432692549788127): "I believe we will eventually add native pqdsa support, but this is only the first step", linking biryukovmaxim/kaspa-xmss. (kaspa-xmss cell)
- **KGI:** [#14](https://github.com/kaspa-live/kaspa-graph-inspector-rs/pull/14) merged 21:31:14Z as `58fff562` (increment 11, SSE client registry; 0 reviews). (KGI v2 design cell)
- **TN10 public API:** 7 reads 05:49:33Z–05:49:40Z, all HTTP 200, Cloudflare MISS, 2.1.0, isSynced true, blueScoreDiff 3–21; one backend `41d9296c` (same as 20 Oct). DAA **602266816** at 05:49:40Z. (TN10 public API cell)
- Commits: content [`4af8643`](https://github.com/STP-KAS/kaspa-master-file/commit/4af864377869717865af14d6cda33455c38ffef5), SNAPSHOT row [`692a269`](https://github.com/STP-KAS/kaspa-master-file/commit/692a269), prompt commit next.

## Added (builders `master/builders-sweep-2026-10-21`, from main `1940877`)
- Third-party items are on kaspa-builders `master/builders-sweep-2026-10-21` (third-party, not audited, not desk-tested); not in the master.
- Commits: content [`2d6eb64`](https://github.com/STP-KAS/kaspa-builders/commit/2d6eb64d06eb4b3160d6f0edb011011abe80ffdd), row [`46a0efb`](https://github.com/STP-KAS/kaspa-builders/commit/46a0efb), challenge fix `bad7625`.

## Held / unchanged
- rusty-kaspa master `4edcbbcc`, tag v2.1.0; #1141 `1d77a486` (CHANGES_REQUESTED stands); #1147, #1146, #1150, #863, #1156: no update after the marker.
- kccs main `1516a6c4`; kips master `e4ae233`; vprogs master `f9b84a86`; kaspa-xmss tip `e36538f`.
- Tag lists unchanged vs 20 Oct for all 11 repos scanned (core: rusty-kaspa v2.1.0, kaspa-python-sdk v2.1.0, silverscript v1.0.0; vprogs, kccs, kips none).
- Kas-Smiths 50 / 391 / 114; highest post 417. research.kas.pa newest topic 545. Mainnet block reward 2.06017223.
- kaspa.org and kaspa.org/build: CloudFront Hit, `Date` still 19 Oct.

## Skipped
- X: elldeeone on a CA compromise (not Kaspa), saefstroem GPU and small replies, IzioDev's wallet-UX vs verifiability reply (clarification of opinion), KasanovaWallet rewards (token promotion), ReconProtocol snapshot and German KaChat relay, KASPAglobal KIP-22 relay, kaspaunchained, Kaspa_Commons, CryptoQTK, maxibitcat.
- GitHub: tetsuo-ai (Solana), getumbrel, Magma-Devs, bitcoin/bips, koja-sh/koja-client (AI-agent SDK), stackedlol, RunOnFlux dependabot, ChainAgnostic items for other chains.

## Per source
- GitHub A-Z: 130 repos (watchlist 81 + org repos pushed since the marker + 17 user event feeds + linked active repos + someone235/kccs, IzioDev/argent), 130 GraphQL + 403 REST page calls, **0 gaps**. Raw `raw/2026-10-21/az/`, cited reads `raw/2026-10-21/gh/`.
- X: free `x` namespace only, no paid X call, so **$0** spent by this sweep. Credits: start 07:47:58 **$6.75** (prepaid 6.75, free 0.00, no grants), end 08:03:31 **$6.75** (`raw/2026-10-21/x/credits-start.json`, `credits-end.json`). Note: the 20 Oct end reading was $58.18 (all free, one grant); the free grant is no longer listed today. The change happened outside this sweep; not explained here. core 15 (page 2 empty), community 18 (page 2 empty), deshe 0, 5 full texts.
- Kas-Smiths: about/posts/latest HTTP 200; headers saved; no post above 417.
- Sites: all 200 except kns-2.gitbook.io, api.kaspa.org, api-tn10 root (307). Bodies + headers in `raw/2026-10-21/sites/`.
- Bot mail: 43 hourly hand-off sections read, 19 Oct 08:29 to 21 Oct 07:27 CEST (the 20 Oct sweep had missed them). Every master-relevant item checked via the API; all are in the master already (19 Oct items, merged on 20 Oct) or added today. Two logged heads (someone235/kccs `p2pkh` `3a727abd`, kips `kip22` `9fcf467`) were 19 Oct intermediate commits since replaced; live heads are `8088f5c5` and `b031344f`. The 20 Oct carryover bot-mail items are all applied.

## After the commits
- Carryover: bot-mail block applied and removed; KIP-22 number item updated (now three pulls ask for KCC-3); credits item closed (start and end saved); tag scan, SNAPSHOT pairs, core_replies pause, x402 index cell, sweep anchors and local backup branches kept.
- TN10 ops: no message. Public API healthy (7/7 HTTP 200, synced, same single backend); nothing for them to act on.

## Open questions for stp
- None new. Still waiting on stp: whether core_replies should run again (paused since 5 Oct), and item 13 (private desk repo names on main).

## Challenge pass requested
- kaspa-master-file `master/sweep-2026-10-21`: base main `b180500`, commits `4af8643` (content), `692a269` (row), `7666dcc` (prompt), `020c16e` (challenge fix), then the prompt fix (tip in the hand-off). Files: README.md, master.json, SNAPSHOT-HISTORY.md, prompts/grok-build-2026-10-21.md.
- kaspa-builders `master/builders-sweep-2026-10-21`: base main `1940877`, tip `bad7625` (`2d6eb64` content, `46a0efb` row, `bad7625` challenge fix). Files: README.md, SNAPSHOT-HISTORY.md, builders.json, entries/olafweller-kpi.md, entries/wallets-kcc20.md, entries/name-services.md.

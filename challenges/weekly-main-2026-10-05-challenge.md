# Weekly main reread, 5 Oct 2026

Reviewed tip: main `cb9c7a9d` ("Fix RS-F1: SNAPSHOT KGI line matches the corrected file count."), fetched 5 Oct 2026 09:30 CEST.
Writer: kaspa master challenge, under PROCESS.md (Weekly reread). Read-only checks. TN10 only. No public reply.

Counts: **HELD 22, FAILED 10, UNVERIFIABLE 4.** Line numbers are at `cb9c7a9`.

## How this pass checked

- Leak scan of every tracked file (emails, home paths, seed and key patterns, `ghp_`/`sk-` tokens, Kaspa addresses).
- Every URL in the tree (1382 unique). GitHub: 177 repos and 479 commit links through `gh api repos/<o>/<r>` and `repos/<o>/<r>/commits/<sha>`, 189 issue/PR links through `repos/<o>/<r>/issues/<n>`, 106 blob/tree links through the contents API. Other hosts (210): `curl -L` with a browser User-Agent. X links were not opened (no X tools this pass).
- Live pins through `gh api`, crates.io and PyPI APIs, Discourse JSON, `api-tn10.kaspa.org`, and read-only wRPC JSON on `127.0.0.1:18210` (`getServerInfo`, `getSyncStatus`, `getBlockDagInfo`, `getConnectedPeerInfo`). Nothing on the node or the miners was touched.

## FAILED

- **FAILED W-F1** README.md L74 and master.json L159 (`cb9c7a9`): "rusty-kaspa 2.1.0 is **not** on crates.io yet: kaspa-consensus-core, kaspa-txscript, kaspa-hashes, kaspa-rpc-core and kaspa-wallet-core all max out at `0.15.0`". Evidence: `curl https://crates.io/api/v1/crates/<crate>` gives max_version `2.1.0` for all five, created 2026-10-04T19:42:48Z (hashes), 19:45:35Z (consensus-core), 19:47:35Z (txscript), 19:52:58Z (rpc-core), 20:04:04Z (wallet-core), i.e. 4 Oct 21:42 to 22:04 CEST. Fix: rewrite both cells to "rusty-kaspa 2.1.0 crates published on crates.io 4 Oct 19:42 to 20:04Z" with the crate link, keep the attribution of who was waiting for it, and recheck the knock-on lines (README L67 "Do not bump them to v2.1.0 until silverscript#256 is fixed" still stands on its own; #256 is open).
- **FAILED W-F2** README.md L67 and master.json L219 (`cb9c7a9`): "STP-KAS owns **95** repos (2 Oct live count, `gh repo list STP-KAS`): **85 public + 10 private**". Evidence: `gh repo list STP-KAS --limit 300 --json name,visibility` gives 110 repos, 95 PUBLIC + 15 PRIVATE; `gh api users/STP-KAS --jq .public_repos` gives 95; 15 repos were created after 2 Oct 06:00Z (10 public, 5 private). master.json L219 also still opens with the 21 Sep "52 public repos and 2 private" pair and lists `kns-kasware-tn10-test` as private, which README L67 itself says is public. Fix: "110 repos (5 Oct live count): 95 public + 15 private"; keep the six private names already on the board and say the other nine stay off it; label the 21 Sep pair in L219 as a 21 Sep receipt.
- **FAILED W-F3** SNAPSHOT-HISTORY.md L41 to L65 (`cb9c7a9`, 17 links): the "Ceiling stays [… `486dd32`]" links point at an STP-KAS repo that is now **private**. Evidence: `gh api repos/STP-KAS/<that repo> --jq .visibility` gives `private`; `curl -s -o /dev/null -w '%{http_code}' https://github.com/STP-KAS/<that repo>` gives `404`. So public main shows a private name beyond the six on the board, against README L67 ("Private names beyond the earlier list stay off this board") and stp's 29 Sep decision to drop private-repo mentions going forward, and the 17 links are dead to readers. The name is not repeated in this note. Fix (stp's call): either the repo goes public again, or those rows lose the link and the name in a forward commit (no history rewrite).
- **FAILED W-F4** DESK-BOT.md L26 (`cb9c7a9`): "**tn10 bot** — TN10 node | **Resyncing** since 29 Sep 22:25 CEST, not on public TN10 yet". Contradicts AGENTS.md L18 ("Synced with public TN10 … checked 4 Oct 2026 08:02 CEST") and the live node. Evidence, 5 Oct 09:35 CEST, wRPC JSON `ws://127.0.0.1:18210`: `getServerInfo` → `serverVersion 2.1.0`, `networkId testnet-10`, `isSynced true`, `hasUtxoIndex false`, `virtualDaaScore 588529906`; `getSyncStatus` → `isSynced true`; 6 connected peers; same kaspad pid 42988 as AGENTS.md. Fix: replace the status cell with "Synced with public TN10; current status in AGENTS.md (Standing authority)".
- **FAILED W-F5** START-HERE.md L27 (`cb9c7a9`): "**Current host pin** is vprogs **#152** draft `59b30920` (tip `4f27dd1a`), not #148." Evidence: `gh api repos/biryukovmaxim/vprog-tictactoe/commits/HEAD` gives `533e8a55` (2 Oct 13:54Z); README L70 (HELD below) pins vprogs `b32e92de` (#169 stack). Fix: "On 21 Sep the host pin was #152 draft `59b30920`. Current pin: README Now, tictactoe row."
- **FAILED W-F6** master.json L2088 to L2090 (`cb9c7a9`): `"name": "docs.agenc.tech", "url": "https://docs.agenc.tech", "note": "Their docs. Not a Kaspa pin."`. Evidence: `curl -sI https://docs.agenc.tech` → `HTTP/2 410` (Gone) at 5 Oct ~09:32 CEST; `https://agenc.tech` → 200. Fix: mark it dead the way the agent-kit row two entries up is marked ("410 Gone as of 5 Oct 2026") and empty the url.
- **FAILED W-F7** README.md L66 (`cb9c7a9`): "Daily public mirror: Manyfestation/kas-smiths-public-archive, last read at tip [`dab9895`] (24 Sep 07:34Z)". Evidence: `gh api repos/Manyfestation/kas-smiths-public-archive/commits/HEAD` gives `f26a0735` (2026-10-03T08:03:15Z). The mirror pointer is eleven days old while the rest of the row was read 3 Oct. Fix: re-read the mirror and pin `f26a0735` (or the newer tip at fix time).
- **FAILED W-F8** README.md L66 (`cb9c7a9`), low: the Kas-Smiths row describes the topic-156 author's own GitHub repo ("Public GitHub …/kaspa-privacy-initiative; compares L1 covenant+ZK pool vs sharded covenant state vs based-app/vProgs"). That repo's row left the master on 4 Oct (`220fa36`), and AGENTS.md L36 sends third-party research repos to kaspa-builders. Fix: keep "topic 156 opened 2 Oct 14:43Z, Kaspa Privacy Initiative" as the forum stat and replace the repo description with a one-line kaspa-builders pointer.
- **FAILED W-F9** master.json L5 and L9 (`cb9c7a9`), low: "Current pins: section now (Grok 4.7, 22 Sep 2026 evening)" and "Now — read this first (22 Sep 2026 evening, Grok 4.7)". The file says `"updated": "2026-10-05"` and the rows carry 4–5 Oct pins (Argent `03d67021`, KGI `247d69a7`). Fix: drop the 22 Sep stamp, e.g. "Current pins: section now (kept current by the daily sweep; see updated)".
- **FAILED W-F10** scripts/probe-nodes.ps1 L46 (`cb9c7a9`), low: `authority = 'When kaspa-master-file is named, use kaspa bot + tn10 bot. …'`. kaspa bot was retired 25 Sep (same script L35, AGENTS.md L17). Fix: "use tn10 bot (TN10) and public REST for mainnet".

## UNVERIFIABLE

- **UNVERIFIABLE W-U1** master.json L343, THINK-BIG.md L113 (`cb9c7a9`): faucet `https://faucet-testnet.kaspanet.io` listed as the TN10 faucet. `curl -sI` → `HTTP/2 403`, `cf-mitigated: challenge` (Cloudflare bot check), so a script cannot tell whether the faucet works. Needs a browser look; no change proposed.
- **UNVERIFIABLE W-U2** RESEARCH-KAS-PA.md L114 (`cb9c7a9`): `https://www.cs.huji.ac.il/~yoni_sompo/pubs/15/inclusive_full.pdf`. Two curl attempts ended in exit 35 (TLS connect error). Recheck next week before calling it dead.
- **UNVERIFIABLE W-U3** README.md L51 and master.json L25, L27 (eprint.iacr.org PDFs), RECEIPTS.md L297 and master.json L559 (explorer.kaspa.org), master.json L99 (a medium.com post) and master.json L1093 (Discord widget) answer curl with 403 (bot protection, not a dead page). The Discord widget's "Disabled" note (RECEIPTS.md L647) is consistent but was not re-proven.
- **UNVERIFIABLE W-U4** 123 x.com links across the tree were not opened this pass (no X tools). Their quotes rest on the pass that added them.

## HELD (spot checks)

- **HELD W-H1** Leak scan, whole tree at `cb9c7a9`: no email except the STP-KAS noreply; no seed, mnemonic, xprv/kprv, `BEGIN … PRIVATE`, `ghp_` or `sk-` hit (only the "never share seeds" rules); the only Windows home path is CURSOR-PROMPT.md L55 with stp's first name (allowed); the only Kaspa address is the public TN10 pay-to (AGENTS.md L19 and four other files).
- **HELD W-H2** All 479 commit links resolve (`gh api repos/<o>/<r>/commits/<sha>` returned a 40-hex sha for every one), all 177 linked repos exist, all 189 issue/PR links resolve, all 106 blob/tree links resolve (challenge-branch links checked with `git cat-file -e`). The four renamed repos linked from SNAPSHOT-HISTORY (old names) redirect to their public 1984 names.
- **HELD W-H3** 210 non-GitHub URLs: 178 answered 2xx/3xx at first try; the 18 research.kas.pa topic links that hit 429 all answered 200 on a slow retry (3.5 s apart). The non-2xx rest is W-F6, W-U1 to W-U3, the api-tn10 template URLs (`/addresses//balance`, `/transactions/`) that are examples, and explorer-tn10 (W-H18).
- **HELD W-H4** README.md L50 Live: `gh api repos/kaspanet/rusty-kaspa/releases/latest` → `v2.1.0` published 2026-09-22T13:55:36Z; master `01b532e8`; tag v2.0.1 → `cfafeb4c`; #1129 open, head `8b9f1c419f`. SilverScript tags: `v1.0.0` newest; master `3ed97333`.
- **HELD W-H5** README.md L55 KIPs: kips master `e4ae2332` (2026-07-15T12:19:57Z); kips#41 open (L66).
- **HELD W-H6** README.md L56/L57 Not live and TN13: `dagknight` tip `ad45e241` (2026-09-08T04:08:18Z); #1104 open `a5888dab`, #1127 open `3c267993`.
- **HELD W-H7** README.md L58/L62 KCC-0 and KCC still open: kccs main `411b41bc` (2026-10-01T13:15:20Z).
- **HELD W-H8** README.md L65 KCC-3/4/5: kccs#29 open, head `55742861`.
- **HELD W-H9** README.md L63 KCC20 reference: kcc20-reference#1 open, head `5b2a2312`, merged false; master `76648f99`.
- **HELD W-H10** README.md L68 vProgs: master `f9b84a86` (2026-07-28T11:24:41Z); `release-candidate` `055ae28a` (2026-10-02T20:38:04Z); 0 releases.
- **HELD W-H11** README.md L70 tictactoe: tip `533e8a55` (2026-10-02T13:54:39Z); #23 open.
- **HELD W-H12** README.md L71 Argent: master `03d67021` (2026-10-04T12:04:19Z); 0 tags.
- **HELD W-H13** README.md L74 SilverScript holes (issue part): silverscript #243, #249, #250, #251, #252, #253, #254, #256 all open.
- **HELD W-H14** README.md L52 Python SDK: latest release `v2.1.0` 2026-09-24T23:54:14Z; PyPI `kaspa` version 2.1.0.
- **HELD W-H15** README.md L60 Referee lag: parker2017code/kaspa-explained tip `a68bcaf6` (2026-09-28T14:47:12Z).
- **HELD W-H16** README.md L79/L80/L82: kdapp `eade8531` (2025-07-02); kaspa-xmss `e36538f9` (2026-07-03); KGI v2 main `247d69a7` (2026-10-04T22:25:19Z).
- **HELD W-H17** README.md L81: rusty-kaspa #1140 open with 1 comment; #1141 open `11aca108`, #1142 open `644baafe` (SNAPSHOT top row); #991 open (L54).
- **HELD W-H18** DESK-BOT.md L53, RECEIPTS.md L177: explorer-tn10.kaspa.org paused. `curl -sI https://explorer-tn10.kaspa.org/` → `HTTP/2 402` (Vercel).
- **HELD W-H19** README.md L53 TN10 public API: cache-busted `/info/health` at 09:35 CEST → kaspad 2.1.0, `isSynced` true, UTXO-indexed, `database.isSynced` true, `blueScoreDiff` 17, `acceptedTxBlockTimeDiff` 3; `/info/virtual-chain-blue-score` → 576992068.
- **HELD W-H20** AGENTS.md L18/L19 node and miners (4 Oct reading still true): kaspad pid 42988 `--testnet --netsuffix=10`, RPC 16210 / wRPC 17210, 18210 on loopback, P2P 16211; six `kaspa-miner -t 1 --mine-when-not-synced` at nice 0 to the same pay-to. `ps lstart` now prints 21:50:23 for the node and 21:53:28 for the miners, 3 min 23 s after the recorded 21:47:00 and 21:50:05 for both; same pids, so this is `ps` clock drift, not a restart.
- **HELD W-H21** README.md L83 research.kas.pa: `latest.json?order=created` newest topic still 522 (2026-09-08T13:11:33Z). README.md L66 Kas-Smiths: `/about.json` 48 topics, 378 posts, 113 users; newest post 402, topic 156, 2026-10-02T14:43:33Z.
- **HELD W-H22** master.json `kaspanet org cut`: `gh api orgs/kaspanet --jq .public_repos` → 26. No KasperoLabs or KasDash text on main (the stale build branch stays unmerged).

## Not flagged on purpose

- The six private repo names on README L67 are an approved board decision (2 Oct, `775ed10`); only the count is stale (W-F2).
- RECEIPTS.md, STP-REPOS.md, GROK-47-*.md, intel-pack.md, dated prompts and dated field notes are frozen receipts; their old counts and pins were not scored.

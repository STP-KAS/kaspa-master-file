# Challenge (kaspa-builders): master/builders-update-2026-10-11-krc20

This note covers a kaspa-builders branch and is kept in kaspa-master-file per stp's 11 Oct rule. Nothing was pushed to kaspa-builders.

## Pass, 11 Oct 2026 19:21 CEST (`date`), tip b75856236e28825c592d3bb386dcb7b3e231471e

Base: builders `ls-remote` main = `bad7becba4599bffb1c1133d878cd3566da8167c`, pushed 06:10:16Z. The branch is a fast-forward of it: 2ac353a (19:15:29 CEST, content) and b758562 (19:15:29 CEST, SNAPSHOT link). Activity API: branch_creation directly at b758562, 17:15:32Z, after both commits; no force-push. A trial merge onto builders main is clean: +55 across 4 files. Both commits are by STP-KAS with the noreply address.

Raws: raw/2026-10-11/kcc20-vs-krc20/, written 17:12–17:14Z. Pinned sources re-fetched live with `gh api` at their commits; codecustard is byte-identical to the raw. The KasWare `.md` page fetched live is identical to the raw.

Totals: 17 HELD, 2 FAILED, 0 UNVERIFIABLE.

### FAILED

- **B-F1. An unsourced Kaspa-level sentence is attributed to a source that does not say it.**
  - entries/krc20-mechanics.md L13 reads "Kaspa consensus validates these as ordinary script-hash transactions; whether a mint counts is decided by the KRC-20 indexer." Its only citation is codecustard 272e8ebf. That README shows the indexer status check (L49–51, `"opAccept": "1"`) but says nothing about consensus.
  - builders.json says the rules "are enforced by the indexer, not consensus" next to "(KasWare docs; protocol id kasplex)". KasWare's KRC20 API page does not say that either.
  - AGENTS (Sourcing) requires "A source on every claim". The reasoning is sound: the data sits in an `OP_FALSE OP_IF … OP_ENDIF` branch that never executes. But it has to be labelled as the desk's reading.
  - Fix, entries/krc20-mechanics.md L13: replace "Kaspa consensus validates these as ordinary script-hash transactions; whether a mint counts is decided by the KRC-20 indexer." with "Desk reading of the script form above (not stated by either source): the JSON sits in an `OP_FALSE OP_IF … OP_ENDIF` branch that never executes, so consensus treats these as ordinary script-hash spends, and whether a mint counts is decided by the KRC-20 indexer."
  - Fix, builders.json note of "KRC-20 mechanics, next to KCC-20 (11 Oct)": replace "(KasWare docs; protocol id kasplex) and are enforced by the indexer, not consensus;" with "(KasWare docs; protocol id kasplex) and, by the desk's reading of that script form, are enforced by the indexer, not consensus;".
- **B-F2. An unsourced claim about the current mainnet fee.**
  - L23 ends "Third-party numbers, not desk-measured; mainnet's minimum relay fee has changed since." There is no source. The same kaspa-ng README's "What changed in Kaspa in the last weeks" section covers fee estimation and RBF, not the minimum relay fee.
  - Fix, L23: replace "Third-party numbers, not desk-measured; mainnet's minimum relay fee has changed since." with "Third-party numbers, not desk-measured; 2024 conditions, not current mainnet."

### HELD

1. Builders main is bad7bec and the branch is a fast-forward.
2. The push timeline is as stated above.
3. KasWare KRC20 API docs (raw = live), all as the entry states:
   - The script form "<public_key> OP_CHECKSIG OP_FALSE OP_IF <protocol_id> <0> <data> OP_ENDIF" (L22).
   - "KRC20: Uses `kasplex` as protocol identifier" (L27), and P2SH as the commit address (L45, L91).
   - The JSON fields "p", "op", "tick" (L314–316).
   - Commit and reveal phases (L107–110), with revealId "the primary txid for the KRC20 operation" (L302).
4. codecustard 272e8ebf README L73 reads exactly "Every KRC20 operation requires **two transactions**:"; commit to a P2SH output and reveal spends it (L75–83); "Look for `"opAccept": "1"`" (L51); "Successfully tested on Kaspa Testnet 10" (L3). The link is pinned.
5. kaspa-ng f23dc374 (committed 2024-11-17T09:06:12Z), section "KRC20 Beta in the past". Each quote matches word for word across line wraps:
   - "a typical transaction mass was approximately 25,000 grams"
   - "no more than about 20 similar transactions could fit in each Kaspa block"
   - the 500,000-gram limit
   - "around 37,000 transactions"
   - "the mining fee is set at 1 KAS in accordance with KRC-20 rules"
   - "4000 sompi/gram, whereas typical values range from 1 to 4 sompi/gram"
   - 0.2 Kaspa per deploy or mint
   The link and anchor are pinned.
6. kns-tn10-testing 32735044:
   - README L21 reads exactly "Uniqueness is the KNS indexer, first valid reveal wins. A losing reveal still pays."
   - docs/runs/R1.md L23 has the "about 0.035 TKAS per name" figure and reads exactly "The commit locks 1 TKAS in the P2SH, and the reveal returns it."
   - README L98 says "about 0.035 tKAS per name on top of the KNS fee", which matches "the KNS protocol fee is on top".
   - All links are pinned to that commit.
7. Kasplex cap rule is marked "not verified". The saved kx.h shows HTTP 307 at 17:13:42Z to an app.gitbook.com editor URL, then HTTP 200 for an HTML shell titled "GitBook" whose script hides the sidebar on the sign-in layout. "Redirect and sign-in page, not the docs" is supported.
8. "The desk has not minted KRC-20 itself. What a KRC-20 mint past the cap costs the minter is untested", in the entry, the README row and builders.json.
9. Caveats: chip `catalog`; "Not Kaspa core. Not a KIP. Not an endorsement."; a "The master keeps:" line; "KNS is not KRC-20".
10. AGENTS rules: commits are pinned (one website source dated "read 11 Oct"); times are Z; no price talk; no home or box paths; the author is the noreply address. The comparison page is linked at 262d1bcc (committed 17:11:18Z).
11. STP-KAS links, checked live: kns-tn10-testing public; tn10-storm-plan-mint-rush public; kaspa-master-file and kaspa-builders public.
12. Mainnet and product claims: the only mainnet numbers are the 2024 beta, labelled "third-party account, mainnet" and "not desk-measured". KasWare is cited for its script format only, not product status. "No KRC-20 or KCC-20 numbers here come from a storm or from mainnet."
13. builders.json is canonical: indent 2, `ensure_ascii=False`, 0 \u escapes, trailing newline. The new entry has no markdown, and its sources are pinned.
14. The README index has 22 rows, matching 22 builders.json entries (main had 21).
15. SNAPSHOT is newest first: the 19:15 row is above the 07:51 row. 2ac353a resolves.
16. Leak check against the live private list (16 names, case-insensitive whole word): 0 hits in the tree and in commit messages.
17. No public action was taken. Nothing was pushed to kaspa-builders.

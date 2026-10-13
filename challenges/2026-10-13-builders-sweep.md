# Challenge: kaspa-builders master/builders-sweep-2026-10-13

Reviewed 2026-10-13 08:03 CEST. Tip 887b9098ca8df6e869f68285abd3d602942e9e47. Builders main is 069ba149dadcdc3dda3785aa23771a7c7e5df383, as expected, and is an ancestor, so this is a fast-forward. Commits a445477 and 887b909, both from the noreply address. The activity API shows the branch created 05:58:39Z. Trial merge onto 069ba14: clean. Leak guard against the live private list of 17, case-insensitive: 0 hits in the tree and in commit messages. This note lives in kaspa-master-file; nothing was pushed to kaspa-builders.

**Counts: 11 HELD, 1 FAILED, 0 UNVERIFIABLE.**

## HELD
1. x402 #30 (raw and live): merged 2026-10-13T04:41:48Z, merge commit 6918defe (single parent 7231e842; now main), head was 58506a75, title as stated.
2. The #30 body has "1,026", the hosted-route change and PNN, and these are labelled as the author's PR and claims ("Not desk-tested").
3. The latest release is v1.0.0-rc.2 (prerelease), so "tag still v1.0.0-rc.2" holds.
4. KasperoLabs 2109766022790066442 (live X, 12 Oct 21:59:52Z): the quote is verbatim, including "Already proven on mainnet". It is labelled "**Author's claim:** no txid, image id, vault address or repo in the post; not desk-checked", so the mainnet claim is hedged as the author's.
5. asaefstroem 2109859288718172454 (04:10:28Z): "the impl of ghostdag in rk is not really zk optimized" is verbatim.
6. asaefstroem 2109849344400666805 (03:30:57Z): "Unfortunately, that is the easy part. :)" is verbatim. 2109856156055437458 (03:58:01Z) is a fair paraphrase (GHOSTDAG selection rule in Solidity, or a ZK program verified on Ethereum).
7. KaspaScopio 2109872199569936618 (05:01:46Z) is about x402 #30, as stated.
8. Third-party caveats hold: "Third-party / talk; not a master pin", and "not desk-checked" in builders.json.
9. No new entry: 22 README index rows = 22 builders.json entries. The x402 row and entry are updated in step.
10. builders.json is canonical (indent 2, 0 \u). The commit removed backticks from the x402 note. One pre-existing backtick remains in "Satoshi's Engine" (sha256 `4062170b…`), untouched here (advisory).
11. AGENTS rules: a source on every claim (X ids, PR and commit links), claims labelled, times in Z; SNAPSHOT is newest first (07:56 above 12 Oct 08:03).

## FAILED
**F1. "releases/latest 404" has no saved header.** entries/x402.md states an HTTP status, and no raw under raw/2026-10-13 holds that read. The fact holds live: I saved raw/2026-10-13/challenge/x402-releases-latest.http (HTTP 404, Date 06:02:07Z).
Fix, in entries/x402.md: replace "(releases/latest 404)" with "(releases/latest HTTP 404, challenge read 13 Oct 06:02:07Z)". Alternatively, save the sweep's own header and keep the text.

## Advisory
- Remove the backtick from the Satoshi's Engine note in builders.json in a later pass.

Merge order: builders first, once F1 is fixed and a recheck finds 0 FAILED, then master/sweep-2026-10-13 after its 4 FAILED items are fixed and rechecked. The two branches share no file, and neither depends on the other.

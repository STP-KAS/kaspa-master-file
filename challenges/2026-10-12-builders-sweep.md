# Challenge: kaspa-builders master/builders-sweep-2026-10-12

Reviewed 2026-10-12 08:09 CEST. Tip 069ba149dadcdc3dda3785aa23771a7c7e5df383, from builders main d016dddcc9947def8706a1e78dc615b038661587 (fast-forward; created 06:00:54Z, pushed to tip 06:03:44Z per activity API). Trial merge into builders main: clean. Leak guard: 0 hits. All 4 commits use the noreply address.

**Counts: 14 HELD, 0 FAILED, 1 UNVERIFIABLE.**

## HELD
1. KasperoLabs post texts match the saved x-community raw: 2109422238277493065 (11 Oct 23:13:47Z) and 2109291008584540535 (14:32:19Z).
2. The ZK mainnet item is labelled "(claim)" in the README and "not desk-checked" in the JSON.
3. MineDrip.md at b767e346 (11 Oct 19:38:04Z, MIT): raw equals live (headers 06:02:56Z); keyless covenant, halving and four mainnet txs as described.
4. Tx 4a3b35ba: accepted, block time 10 Oct 15:27:57Z (header 06:03:18Z; live 06:08:13Z, still accepted).
5. Tx b45b339a: accepted, 10 Oct 15:29:34Z (raw and live).
6. Tx b33fb379: accepted, 11 Oct 13:06:06Z (raw and live).
7. Tx c1d8710e: accepted, 11 Oct 13:16:19Z (raw and live).
8. The wording says the indexer reports them accepted, "not a node check; scripts not desk-checked", so it does not confirm "Proven on Kaspa mainnet".
9. onlykas renamed: the API returns danieliyahu1/kaskama (public, master); github.com/danieliyahu1/onlykas returns 301 to kaskama.
10. Tip dce58809 (11 Oct 23:49:59Z) "pin image to 3e285447"; 833cb340 (23:45:52Z) and 3e285447 (23:45:55Z) messages match.
11. Issues: #5 and #6 (noralane) and #7 (danieliyahu1) closed 11 Oct 23:47Z; #8 to #13 opened by noralane 12 Oct 00:59 to 01:00Z, open.
12. builders.json canonical (indent 2, 0 \u); 22 entries equal 22 README index rows.
13. SNAPSHOT newest first (08:03 above 07:58).
14. Kas-Smiths topic 161 entry labels the game's claims "not desk-checked"; AGENTS rules hold (source on every claim, SHAs pinned).

## UNVERIFIABLE
1. Live X for the KasperoLabs, asaefstroem 2109513092463747119 and elldeeone 2109483421944963099 posts: the X API returned 429 at 06:08Z. They match the saved raws.

Note: api.kaspa.org returned a different block time for 4a3b35ba live (…077724 ms against …077917 in the raw). Both are 15:27:57Z, which suggests it is in more than one block. No text change needed.

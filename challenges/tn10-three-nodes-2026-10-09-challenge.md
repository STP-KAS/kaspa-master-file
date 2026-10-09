# Challenge: build/tn10-three-nodes-2026-10-07

Reviewed tip: `a9ae9e5b17a06102689295eb0b8ed74b8aa4d2d8`. Base: merge-base `b7c52de6723b2b29800949ae3ec1547db92a1cc6`. One commit. Files: README.md Do not weld cell, master.json Do not weld note, SNAPSHOT-HISTORY.md. Pass: 9 Oct 2026 ~08:35 CEST, kaspa master challenge. Local TN10 wRPC at 127.0.0.1:17210/18210 did not answer (connection refused). Did not touch the TN10 node, miners, or stress test. Did not use public api-tn10 as payment proof.

**Result: HELD 6, FAILED 0, UNVERIFIABLE 1.**

## UNVERIFIABLE

- **U1 | SNAPSHOT-HISTORY.md 2026-10-07 13:20 | "88 names … three machines, kaspad 2.1.0, synced, UTXO index on … No fourth public node."** Desk census claim from ~11:10Z on 7 Oct. This pass could not recheck public TN10 wRPC from the box (localhost ports refused; no saved raw of that census in-repo). A later desk note elsewhere still cites "the 7 Oct census of three machines" but that is not primary evidence for this tip. Mark the census UNVERIFIABLE. The Do not weld lines are scored separately.

## HELD

1. Tip is a single commit on `b7c52de`. Diff is Do not weld only (README + JSON) plus one SNAPSHOT row.
2. Do not weld additions are welding rules, not a live node count pin: several public wRPC names ≠ several nodes; different addresses in front of one kaspad ≠ several mempools; a second kaspad on one PC ≠ more block mass; a mempool climb ≠ a higher transaction rate; `--ram-scale=0.1` at 100,001 txs ≠ a node that stays up. Those forbids match PROCESS caution and prior TN10 field notes.
3. SNAPSHOT row is Hold-only; it does not move a Now-board pin or claim a payment landed.
4. master.json Do not weld note mirrors the README addition.
5. No private repo names, emails, home paths, seeds, or keys in the added text.
6. No blank lines breaking the pin-board table; TN10-only (no mainnet claims).


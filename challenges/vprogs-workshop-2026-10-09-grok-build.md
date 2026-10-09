# Challenge: 9 Oct vprogs workshop pin

- **Reviewed commit:** `9c07069ebe08ceb1e51dfe0385ea86b20c36fec8`. Parent `cf44ce5`.
- **Base:** `origin/main` `cf44ce5` at the branch cut. This note does not claim main stayed there.
- **Totals:** 15 HELD · 0 FAILED · 1 UNVERIFIABLE.
- **Verdict:** no open FAILED item. The UNVERIFIABLE line is the book's simnet and testnet-10 GPU-proof account, which the pin leaves as the author's words.
- **Reviewer:** Grok Build, 9 Oct 2026, about 20:30 CEST. This note is not the kaspa master challenge bot.

**How this pass checked:** the workshop print page, the two posts, and the GitHub commit and compare APIs. No cargo. No node. No comment on kaspanet/vprogs or biryukovmaxim/vprog-tictactoe.

## Pin commit

- **W1 HELD.** `9c07069` is one commit by `STP-KAS <227352643+STP-KAS@users.noreply.github.com>`. The diff is `README.md`, `master.json`, and `SNAPSHOT-HISTORY.md` only.
- **W2 HELD.** The workshop page https://biryukovmaxim.github.io/vprogs-workshop/ was fetched this pass. Its opening links `kaspanet/vprogs` tree `055ae28a` and `biryukovmaxim/vprog-tictactoe` tree `fe6b0e8`. The "Where things stand" chapter says the project is early development and that composability is not implemented.
- **W3 HELD.** Sutton `2108546165272657952` is 2026-10-09 13:12:35 GMT and quotes Maxim `2108538746995892673` (2026-10-09 12:43:06 GMT), which is the book post. The pin says a tweet is not a pin.
- **W4 HELD.** `055ae28ad75b15ae9354944c8d494d989503b103` committer date is 2026-10-02T20:38:04Z. Compare `055ae28a...cc0d54bc` is ahead 10, behind 0.
- **W5 HELD.** `fe6b0e85fd6c36831e920d7d437ae3807152f194` committer date is 2026-10-02T20:39:19Z, message "pin vprogs release-candidate 055ae28a". Compare `fe6b0e85...f93e52fe` is ahead 13, behind 0.
- **W6 HELD.** `biryukovmaxim/vprog-tictactoe` `master` at this pass is `f93e52fe9cb4ccdf8a97d8ce8b5aa05ab66db70d`, committer date 2026-10-08T14:54:51Z, message "pin vprogs release-candidate cc0d54bc".
- **W7 HELD.** At `f93e52fe`, root `Cargo.lock` sources include `release-candidate#cc0d54bc5e79cecf0ca7cd8f8a76d45a8a6502e6`. `guest/Cargo.lock` has `04cfb0ae` on 9 source lines and `cc0d54bc` on 0. Root and guest `Cargo.toml` pin `branch = "release-candidate"`. README L26 still names `fix/settlement-watch-wedge`.
- **W8 HELD.** `kaspanet/vprogs` `master` is `f9b84a863a7c7c20586a9cf947550475e894f72e` (2026-07-28T11:24:41Z). `release-candidate` is `cc0d54bc5e79cecf0ca7cd8f8a76d45a8a6502e6` (2026-10-08T14:50:25Z).
- **W9 HELD.** `zk/backend/risc0/api/src/permission_script.rs` at `055ae28a` returns blob `824e9c146101a5b86611cba4327293a2ab36650d`, size 40025. The bytes were not read.
- **W10 HELD.** `biryukovmaxim/vprog-tictactoe` issue #23 is open. Title: "Web entry carriers never execute: signer resolution precedes the deposit that births the account".
- **W11 HELD.** `master.json` parses. The tictactoe, vprogs-stack, and Do-not-weld notes carry the same tip and the same two non-welds as the README cells.
- **W12 HELD.** The Do-not-weld cell now refuses "the 9 Oct workshop book = vProgs shipped" and "the book's `055ae28a` or `fe6b0e85` cites = the 9 Oct tips".
- **W13 UNVERIFIABLE.** The book says a simnet loop runs in minutes and that testnet-10 has run real GPU proofs. This pass did not run the simnet and did not watch a proof. The pin attributes those sentences to the author.
- **W14 HELD.** vprogs master `f9b84a8` and `release-candidate` `cc0d54bc` are not moved by this pin. The moved pin is the tictactoe tip, from `35defd29` to `f93e52fe`.
- **W15 HELD.** The guest lock staying on `04cfb0ae` while the root lock names `cc0d54bc` is written as a split, not as one pin.
- **W16 HELD.** No public reply and no commit on `kaspanet/vprogs` or `biryukovmaxim/vprog-tictactoe`.

## Advisories

- **M1.** `origin/main` at the branch cut still said the tictactoe tip was `35defd29`. Other 9 Oct branches cut from that main have the same sentence. A later merge has to keep `f93e52fe` as the tip.
- **M2.** `permission_script.rs` was checked for presence and size only. Line cites inside the book were not checked.

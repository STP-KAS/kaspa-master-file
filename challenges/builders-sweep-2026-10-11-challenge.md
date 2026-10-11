# Challenge: master/builders-sweep-2026-10-11 (kaspa-builders)

## Pass, 11 Oct 2026 08:02 CEST (`date`), tip 113c43201df7a9b9ad37dc0cc7b107e298552593

Base: `ls-remote` main = `99883aeff7d199e7e9fa37438953c4b1abc49187`, last pushed 9 Oct 06:52:06Z. Branch commits: be07b48 and 113c432, both committed 07:51:38 CEST. The branch was created at 05:53:18Z with 113c432 already on it. No force-push. It is a fast-forward of main, and a trial `merge --no-ff` onto main is clean: 5 files, +26/-10. The open builds `build/dagituser69-2026-10-08`, `build/kpi-s0-trials-2026-10-08` and `build/warda-2026-10-08` conflict in the same files against this tip as against main, so this branch adds no new conflict.

Totals: 12 HELD, 2 FAILED, 0 UNVERIFIABLE.

### FAILED

- **B-F1. The KaChat history in entries/name-services.md L88 is wrong.**
  - Builders last recorded tip `a632f81f` (9 Oct 04:24:12Z, entry L82). `d1217159` is in no tree on any kaspa-builders branch except this one.
  - Compare `a632f81f...4155ee8c` is ahead 29, not one commit.
  - `d1217159`'s message is "Fix build: Profile dock dot sync in its own modifier". It is not "IOS fixes / mainnet countdown notes".
  - Fix: replace "One commit since the 10 Oct carry-over tip `d1217159` (IOS fixes / mainnet countdown notes)." with "29 commits since the last recorded tip `a632f81f` (compare API, ahead 29, behind 0), including, per commit messages only: testnet-10 registry v5 bundled ([`fbfa5a6f`](https://github.com/vsmirn0v/KaChat/commit/fbfa5a6f), 9 Oct 10:38Z), \".kachat on mainnet (mainnet v1, registry 348bd2c8)\" ([`ef6b21e9`](https://github.com/vsmirn0v/KaChat/commit/ef6b21e9), 9 Oct 20:54Z) and \"Docs: .kachat mainnet v1 is live in the app\" ([`5e4ec64c`](https://github.com/vsmirn0v/KaChat/commit/5e4ec64c), 20:57Z), and a countdown to a public opening on 16 Oct ([`c6ebf747`](https://github.com/vsmirn0v/KaChat/commit/c6ebf747), 10 Oct 01:01Z)."
- **B-F2. The README index for name services is stale where this branch edited it.** README L32 says "KaChat `.kachat` registry (v4 since 7 Oct; main `4155ee8c` on 10 Oct) on Testnet 10". At `4155ee8c` the commit history adds registry v5 on testnet-10 and, by the author's account, a mainnet v1 registry.
  - Fix, README L32: replace "vsmirn0v's KaChat `.kachat` registry (v4 since 7 Oct; main `4155ee8c` on 10 Oct) on Testnet 10" with "vsmirn0v's KaChat `.kachat` registry (Testnet 10 v5 since 9 Oct; the author's commits say mainnet v1 is live in the app, not desk-checked; main `4155ee8c` on 10 Oct)".
  - Fix, builders.json L62: replace "11 Oct: KaChat tip `4155ee8c`." with "11 Oct: KaChat tip 4155ee8c; per commit messages, testnet-10 registry v5 (9 Oct) and a .kachat mainnet v1 registry 348bd2c8 (9 Oct), not desk-checked."

### HELD

1. builders main is 99883ae (`ls-remote`).
2. x402 #29: merged 2026-10-10T10:29:59Z by elldeeone, the author, at head 86d72630. The merge commit is 7231e842d8ba69190ff11868554b9bf71d7c5082, and that is live main.
3. x402 #30: open, by elldeeone, created 12:56:03Z, updated 13:47:58Z, head 58506a755bcc. Its body says "1,026 root tests" and "No deployment or funded Testnet proof was run". The entry says "claimed; not desk-tested".
4. x402 tag: still v1.0.0-rc.2, released 1 Oct.
5. KaChat live main is 4155ee8cb49e, 2026-10-10T14:21:53Z, and the quoted message matches.
6. The KaspaScopio post 2108876491677122720 is dated 2026-10-10T11:05:11Z and summarises an elldeeone payment-reliability merge. It is labelled as a community account.
7. Builders caveats are present: "Author's PR; desk ran nothing" (#29), "Not merged; not desk-tested" (#30), and "Third-party app; not desk-tested; not a KIP" (KaChat).
8. AGENTS rules: L43 allows the `challenge/` prefix. The commits are pinned SHAs (L15). Nothing is posted publicly.
9. builders.json is canonical: indent 2, 0 \u escapes, `updated` 2026-10-11, and both changed rows have `checked` 2026-10-11.
10. The SNAPSHOT is newest first. The 07:51 row is above 9 Oct 08:51, and its be07b48 link resolves. Rendered table rows match main: README 27/27, SNAPSHOT 9 = 8 + 1.
11. No master pointer was added, so none needs to exist. The master sweep's 07:51 row routes these items to builders, and they are on this branch.
12. Links: every new URL resolves. The two api-tn10 `/transactions/...` links return 404, but they are unchanged text carried from main inside the name-services JSON note. Leak check against the live private list (20 names): 0 hits in the tree and 0 in commit messages.

### Advisories

- A1. The two api-tn10 transaction links are 404 now, probably from TN10 pruning. Mark them "(404 on 11 Oct)".

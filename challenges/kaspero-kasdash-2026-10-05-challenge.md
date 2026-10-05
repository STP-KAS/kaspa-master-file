# Challenge: build/kaspero-kasdash-2026-10-04

HELD 7, FAILED 3, UNVERIFIABLE 2.

- Branch: `build/kaspero-kasdash-2026-10-04`
- Reviewed tip: `cc7d12e41a23d3664fc3d6ab78b30c485b3a2398` ("Read the public KasDash demo into the Third-party cell.", 4 Oct 2026 09:23 CEST)
- Merge-base with main: `353e9add75bd2accff67275806b02ab847a4d925`
- Main at review: `cb9c7a9ff1cc12bdb45f6a527c7107b8057341c9`
- Reviewed: 5 Oct 2026 ~08:35 CEST. Diff `353e9ad..cc7d12e`: README.md (Third-party 26 Sep row, Do not weld row), master.json (two notes), SNAPSHOT-HISTORY.md (one line).

Verdict: do not merge. The branch predates the 4 Oct inclusion rule and edits a row that main no longer has. The KasDash reading belongs in STP-KAS/kaspa-builders, which already carries a KasDash entry.

## FAILED

- FAILED F1 (inclusion rule, merge conflict). README.md, cc7d12e, the "Third-party 26 Sep" row: "SilverScript Studio: @KasperoLabs ... The 4 Oct source read of that 3 Oct covenant demo ...", and master.json L237 note with the same text. This adds third-party product status to the master. Main README L11 now reads "Third-party builders and community projects live in [STP-KAS/kaspa-builders]", and `git grep -n 'Third-party 26 Sep' origin/main -- README.md` returns nothing, so the row this branch rewrites is gone from main. `git merge-tree --write-tree origin/main origin/build/kaspero-kasdash-2026-10-04` reports a conflict. Fix: close the branch without merging. If the 4 Oct source read is still wanted, move it into kaspa-builders `entries/kasperolabs-silverscript-studio.md` (kaspa-builders main `7f12329` already has the KasDash demo line at L16) with the builders caveat. Keep at most a one-line "SilverScript Studio = a Kaspa core tool" item in the master's Do not weld row, without product status.
- FAILED F2 (personal detail). README.md, cc7d12e, same row: "The about page names [the founder's full name], [a US city]. KasperoPay terms ... say Kaspero Labs LLC, a Wyoming limited liability company." A third-party developer's full name, home city and company registration are not Kaspa core, a credible source or history, and nothing in the row needs them. Fix: drop that sentence everywhere it is copied (README and master.json L237). If kaspa-builders wants an owner line, keep it to the public org name.
- FAILED F3 (stale live probe). README.md and SNAPSHOT-HISTORY.md, cc7d12e: "Live GET `/api/ads/serve/kasperolabs-home` returned HTTP 200: active, 500 KAS a week, buy price 1000000 KAS, no ad." Evidence, 5 Oct ~08:33 CEST: `curl -s https://silverscriptstudio.com/api/ads/serve/kasperolabs-home` returned HTTP 200 with `"rateKas":1000,"buyKas":1000000,"periodMs":604800000,"active":true`, `"ad":null`. The weekly rate now reads 1000 KAS, not 500. It either changed after 4 Oct or was misread. Fix: if kept anywhere, give the probe a date and time and today's value, or drop the rate.

## HELD

- HELD H1. README.md, cc7d12e: "[routes/kasdash.js] at `e27a7c4e` builds that transaction and submits it ... Live release is POST `/api/kasdash/:token/release` with the pin." Evidence: `https://raw.githubusercontent.com/kasperolabs/silverscript-studio/e27a7c4ec91d5b33eed8c51c9dfef8fbb45f6f0b/routes/kasdash.js` HTTP 200. L8 "POST /api/kasdash/:token/release { pin } builds the four-output `release` spend", L148 `router.post('/kasdash/:token/release', ...)`.
- HELD H2. README.md, cc7d12e: "On 4 Oct a GET of a fake token returned HTTP 404 and `No such order`." Evidence, 5 Oct: `curl https://silverscriptstudio.com/api/kasdash/not-a-real-token` gives HTTP 404 `{"success":false,"error":"No such order"}`. routes/kasdash.js L124 has the same string.
- HELD H3. README.md, cc7d12e: "The route follows `KASPA_NETWORK` and, if that is unset, labels the network testnet and links explorer-tn12." Evidence: routes/kasdash.js L27 `(process.env.KASPA_NETWORK || 'testnet')`, L29 `'https://explorer-tn12.kaspa.org'`.
- HELD H4. README.md, cc7d12e: "'Run it for real' posts network mainnet to `/api/deploy`. The page says real KAS moves and that the delivery is still simulated." Evidence: `https://silverscriptstudio.com/kasdash-app.js?v=5` (fetched 5 Oct) has "Live on Kaspa mainnet. Real KAS moves from your wallet into a covenant ... The delivery itself is simulated." and the comment "/api/deploy (funder role "user")". kasdash.html says "'Run it for real' deploys a DoorDashEscrow covenant on mainnet".
- HELD H5. README.md, cc7d12e: "Refund delay is the chosen seconds times 10, labeled 10 blocks per second. The page offers 10 minutes, 1 day, or 30 days, and the selected default is 10 minutes." Evidence: kasdash-app.js `REFUNDS = [{ v: 600, t: '10 minutes (testing)' }, { v: 86400, ... '1 day' }, { v: 2592000, ... '30 days' }]`, state `refundSecs: 600`, `{ name: 'refundDelayBlocks', value: String(S.refundSecs * 10) }`, "(10 blocks per second)".
- HELD H6. README.md, cc7d12e: "The page prices KAS at 0.03 USD." Evidence: kasdash.html `rateUsdPerKas: 0.03`.
- HELD H7. README.md, cc7d12e: "A live checkout is blocked when any output is under 1 KAS." Evidence: kasdash-app.js "Each payout needs at least 1 KAS for the network to carry it cheaply; pick a bigger test size or add items."

## UNVERIFIABLE

- UNVERIFIABLE U1. README.md, cc7d12e: "author replies through 19:14Z" and the "v2 will default to 2 hours and add an agreed refund" line. These are X-only claims. X tools were not used in this pass.
- UNVERIFIABLE U2. README.md, cc7d12e: "kasparadar.com did not resolve." On 5 Oct `getent hosts kasparadar.com` also returned nothing. That agrees but proves nothing about 4 Oct.

## Not checked

The DoorDashEscrow contract clauses (`release(pin)`, `reclaim(userSig)`, outputs.length), the ads-slot "rent is paid into a Kaspa contract" line, and the list of other KasperoLabs sites were not rechecked. F1 means this text does not go into the master anyway. If it moves to kaspa-builders, those clauses need a check there.

No TN10 node, miner or stress-test action. No mainnet action. No deposit. No public reply.

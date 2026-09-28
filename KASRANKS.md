# KASRANKS — how these apps use Kaspa

Read 28 Sep 2026 from [github.com/KASRANKS](https://github.com/KASRANKS). Catalog, not a pin. Not kaspanet. Not a product. Author claims of mainnet proofs stay claims: this desk did not re-run them.

Account: GitHub user `KASRANKS`, created 23 Mar 2026, four public repos, no org. Sites from each repo `CNAME` plus GitHub Pages: [kassword.com](https://kassword.com), [kasgenesiszero.com](https://kasgenesiszero.com), [kasproof.com](https://kasproof.com), [kasranks.com](https://kasranks.com). The apps link [@Kas_Ranks](https://x.com/Kas_Ranks).

| Repo | Tip | When | What the code is |
| --- | --- | --- | --- |
| [KASSWORD](https://github.com/KASRANKS/KASSWORD) | [`8af2e17`](https://github.com/KASRANKS/KASSWORD/commit/8af2e17b26bf9b2af8d974768fd65fccb10663a7) | 28 Aug 2026 15:30Z | One HTML app. Password vault plus a six-branch P2SH locker. MIT. |
| [Kasgenesiszero](https://github.com/KASRANKS/Kasgenesiszero) | [`41e930fb`](https://github.com/KASRANKS/Kasgenesiszero/commit/41e930fbb18b4149223317de5824bbe24a491320) | 29 Apr 2026 16:27Z | One HTML app. Media in transaction payloads. Marketplace payment is a KIP-10 P2SH. Ownership is a client replay. |
| [KasProof](https://github.com/KASRANKS/KasProof) | [`31dbd5bd`](https://github.com/KASRANKS/KasProof/commit/31dbd5bdc3eb97a7ce0f2d154a6870a34e3abaf7) | 3 Apr 2026 23:11Z | One HTML file. File hash becomes a Kaspa address. |
| [kasranks](https://github.com/KASRANKS/kasranks) | [`2fff0ec`](https://github.com/KASRANKS/kasranks/commit/2fff0ec15307ba427398593af3b9238552d31087) | pushed 9 Jun 2026 | Static gallery. Reads a third-party KRC-721 indexer. No node client. |

KASSWORD's README still names `mainnet/` and `testnet/` folders. The tree at `8af2e17` has neither. Network is a constant in the page (`NET_PREFIX = 'kaspa'`, build id `1.3.0`). KasProof hard-locks `EXPECTED_NET` to `mainnet`. Genesis Zero can point at testnet-10.

Two vendored `kaspa/kaspa.js` builds, both wasm-bindgen glue for rusty-kaspa. This desk did not execute `kaspa.version()`.

| App | `kaspa.js` sha256 |
| --- | --- |
| Kasgenesiszero and KasProof (same file) | `6de95eed2fd7894539ea1a91734135e8f3bf0957c4f14bc4c2ded2f03b82d016` |
| KASSWORD | `82202df28a83b6da08a4fa4a9184b9ad4ef0185d9d9df333544cf7c17013daca` |

## Reach the network

All three chain apps use the wasm SDK the same way.

- Public node: `new kaspa.Resolver().connect(networkId)`, with a 12 second timeout, three tries. `getServerInfo()` afterwards. KasProof refuses the socket unless `isSynced` is on mainnet.
- Own node: `new kaspa.RpcClient({ url })`. KASSWORD's default local URL is `ws://127.0.0.1:17110` (mainnet wRPC Borsh). Genesis Zero's placeholder is `ws://localhost:17210` (testnet-10 wRPC Borsh) and accepts one URL per line.
- UTXOs: `rpc.getUtxosByAddresses([...])`. Submit: `rpc.submitTransaction({ transaction, allowOrphan: false })`.
- History is not the node. REST base is `https://api.kaspa.org` or `https://api-tn10.kaspa.org`. Routes they call: `GET /addresses/{addr}/transactions-count`, `GET /addresses/{addr}/full-transactions?limit=&offset=&resolve_previous_outpoints=light`, `GET /transactions/{txid}`. Payload field is hex. Explorer links are `kaspa.stream` and `tn10.kaspa.stream`.
- KASSWORD's CSP allows `https://api.kaspa.org`, `https://*.kaspa.stream`, `https://*.kaspa.red`, `.green`, `.blue`, any `wss:`, and localhost `ws:` / `wss:`. The broad `wss:` is there because the resolver picks the host at runtime.

Genesis Zero opens extra sockets on purpose. One primary, then up to five more (twelve resolver attempts to land five). Each worker submits on `workerIndex % nodeCount`, skipping a node that has failed recently (score `ok - 2*fail`, extra penalty if the fail was in the last 10 seconds). `submitTransaction` is raced against an 8 second timer so a stuck socket becomes an error instead of a hang. The same tx id may be offered to one other node. "Already in the mempool" is treated as success. "Rejected spam" and "mempool full" are not. Their own comment: treating every mempool string as success made recovery sweeps look done while the coins stayed on the worker. Orphan means this node lacks the parent, so another node is still worth a try.

When `api.kaspa.org` is slow they keep a separate path: node RPC for a new transaction, REST for history. A rolling 30 second window marks the REST client degraded at 3 failures and down at 6. One success clears it. Owner-scan results sit in `localStorage` for one hour, capped at 2 MB, keyed by network so mainnet and testnet never share a cache. The user can override the REST origin. Chunk fetches are queued so a gallery paint does not 429 the indexer.

## Put bytes in a transaction

`createTransactions` in these apps does not take the payload. The pattern in KasProof and Genesis Zero:

1. Build the tx with outputs, priority fee, and change.
2. Set `pending.transaction.payload` to the hex string.
3. `kaspa.signTransaction(tx, keys, true)`, `tx.finalize()`, `submitTransaction`.
4. If that throws, `serializeToObject()`, set `payload`, `deserializeFromObject`, sign, submit the object.
5. If that throws, `pending.sign` + `pending.submit` with no payload.

Step 5 still spends the coins. KasProof records that stamp as `inscribed: false`. A caller that ignores the flag will believe the JSON is on the DAG when only the payment is.

Payloads are UTF-8 JSON, then hex. Genesis Zero tags: `genesis0`, `genesis0-col`, `genesis0-col-part`, `genesis0-chunk`, `genesis0-burn`, `genesis0-xfer`, `genesis0-list`, `genesis0-buy`, `genesis0-delist`, `genesis0-intent`. A chunk is `{t, v:1, idx, total, data}` where `data` is hex of at most 10,000 raw bytes, sent as a self-transfer of 20,000,000 sompi (0.2 KAS). The template payload lists the chunk tx ids. The picture is in the history. The UTXO comes back to the sender, so the UTXO is not the artwork.

KASSWORD backup tags are `kw-1` (older AES backup) and `kw-2` (current). Locker deploy payload is `kw-vault-create`. Version 3 of that record carries `vault_id`, `p2sh`, `deposit_kas`, `created`, `owner_env`, `capsules`. The redeem script, branch list, and owner key are inside `owner_env`, encrypted under the password, the wallet key, and the vault id. A restore decrypts `owner_env`, rebuilds the P2SH, and requires it to match the `p2sh` field.

## Fees they actually code

KASSWORD, after Toccata: the flat miner add-on is `0`. The comment says miners are paid by mass at 100 sompi per gram. The protocol fee is a normal output, 3 KAS for a text backup and 5 KAS for a backup that carries media. Working balance sent to inscription workers is swept back. It is not a fee. Amounts are parsed from the decimal string into sompi. `Number * 1e8` is refused because it rounds.

Keyless branches cap the fee at `5_000_000` sompi (0.05 KAS). The script requires one input, one output, `BLAKE2b(output[0] SPK) == committed 32 bytes`, and `output[0].amount >= input.amount - maxFee`. A pinned vault must be deposited with at least ten times that cap (0.5 KAS). Below that, `input - maxFee` is below zero and the pin does not protect the coins. They also refuse a deposit under 1.1 KAS as the KIP-9 dust floor. If the live mass fee is above 0.05 KAS the app refuses the keyless spend and leaves the UTXO in place.

`OpTxOutputSpk` pushes the script public key as `u16` version, big-endian, then the script bytes. It does not push a hash. KASSWORD hashes those bytes with `OpBlake2b` (`0xaa`) and compares 32 bytes. Genesis Zero compares the raw bytes with `OpEqualVerify` and builds the version prefix little-endian. Those two prefixes are the same while the version is 0. A non-zero version would make the Genesis Zero compare fail. The hash form stays the same width either way.

Byte pattern KASSWORD uses for the pin (comments in `index.html` around the branch builders):

```
b3 51 9d                 OpTxInputCount, push 1, OpNumEqualVerify
b4 51 9d                 OpTxOutputCount, push 1, OpNumEqualVerify
00 c3 aa                 push 0, OpTxOutputSpk, OpBlake2b
20 <32-byte hash> 88     OpEqualVerify
00 c2 b9 be              push 0, OpTxOutputAmount, OpTxInputIndex, OpTxInputAmount
<maxFee as script int> 94 a2 69
                         OpSub, OpGreaterThanOrEqual, OpVerify
```

Genesis Zero's listing script is thinner. `IF` / owner pubkey / `OpCheckSig` cancels. `ELSE` checks output 0's SPK and `OpTxOutputAmount >= price`. An `OpDrop` of the NFT tx id salts the P2SH so two listings do not share an address. There is no output-count check and no fee cap. Cancel witness is signature, `OP_TRUE`, redeem. Buy witness is `OP_FALSE`, redeem. Both spends are valid scripts. One UTXO can be consumed once. GHOSTDAG picks the winner. Their buy then polls `GET /transactions/{id}` because a mempool ack is not the DAG result.

Genesis Zero's deploy fees are a large `priorityFee` plus a maker output, split about 80 / 20. Tiers in the source: 100 KAS up to 10 items, 250 KAS up to 1,000, 500 KAS up to 10,000. Mint and buy add 4 KAS priority and 1 KAS maker on top of the price. A later path prices chunks from `getFeeEstimate`: about 3,000 grams times the feerate times a multiplier. Turbo raises the funding tip and holds the feerate instead of probing it down. Those KAS figures are this app's pricing. They are not protocol constants.

KasProof's stamp output is 0.2 KAS to the proof address plus 1 KAS to the same maker output the other apps use. Priority fee tries 2 KAS, then 2.5, then 3. The on-screen "3 KAS" is that bundle at the first rung. The mass fee is extra. The 0.2 KAS is reclaimable.

The maker output is one hardcoded address shared by all three apps. It is not copied here.

## KASSWORD locker

One P2SH, six branches, selector byte, 32-byte salt pushed and `OpDrop`'d at the tail so each deploy has its own address. Disabled branches are a zero-hash stub so the dispatcher shape stays, and the body bytes still change the address.

| Selector | Branch | What consensus checks |
| --- | --- | --- |
| `0x01` | Schnorr | Owner signature. Optional second signature from a password-derived key (`OpCheckSigVerify` then `OpCheckSig`). |
| `0x02` | HLMT | Merkle path of one-time material, then the owner signature. Optional destination pin. A1c variant: the leaves are one-time pubkeys, so the cold device signs the outputs. |
| `0x03` | HTLC | `BLAKE2b(preimage)` matches the committed hash, recipient signature, destination pin, fee cap. |
| `0x04` | DMS | Absolute DAA via `OpCheckLockTimeVerify` (`0xb0`). No heir signature. Output pin and fee cap. |
| `0x06` | PQ-cold | Sig-less Merkle reveal. Destination pin is required. Fee cap. |
| `0x05` | Recovery | M-of-N trustee signatures after an absolute DAA deadline. Destination pin. Fee cap. |

Dispatch is `OpDup`, push selector, `OpEqual`, `OpIf`, body, `OpElse`, repeated. The last arm is `OpEqualVerify` on `0x05`. Five `OpEndIf` close the nest.

DMS and recovery use an absolute DAA score, not `OpCheckSequenceVerify`. Their constant `500_000_000_000` is the cut: a lock time below it is a DAA score, at or above it is unix milliseconds. The deadline is `tip DAA + seconds * 10`, using 10 scores per second. Spending the vault does not move that number. The owner refreshes by spending into a new vault with a later score before this one matures. After the score, anyone may broadcast. The script forces the coins to the committed address.

HLMT has no leaf nullifier. Consensus checks the Merkle root and the owner signature. One revealed leaf can spend that vault. Extra leaves are spare codes for that single spend. The same root on a second vault would spend with the same reveal. The app blocks reuse. It is not a consensus rule.

The Schnorr door and a pinned door are refused together at deploy. A wallet key that can send anywhere would bypass the pin.

The page fetches `kaspa.js` and `kaspa_bg.wasm`, SHA-384s them, and only then instantiates the module. A mismatch stops the app. `kw-pq.js` is pinned the same way, including inside the Argon2 worker, because `importScripts` ignores the page's subresource integrity. Vault encryption in the current format is Argon2id at 64 MiB, 3 iterations, 1 lane, then XChaCha20-Poly1305, with an ML-KEM-1024 and ML-DSA-87 envelope. The comment says this is not the RFC 9106 four-lane profile. Older vaults use PBKDF2 at 1,000,000 iterations and are migrated on unlock.

## Genesis Zero ownership

The listing covenant locks the payment rule. It does not lock the media. Ownership is `_replayOwnership`: walk payload events in time. A list with a live covenant address locks the item. A transfer while that lock is active is ignored. A delist counts only when its seller is the seller who listed. A buy counts when it names an active list. A legacy buy with no list id counts only when the claimed seller is the current owner and no lock is active. The client also checks `txSentBy` and `txPaidTo` on the REST record so a payload that names the wrong payer is dropped.

That state machine is in this page. Another client can honor the transfer the page ignores. The README says this in its "Honest limit" section. The covenant UTXO being unspent is what the page uses as the lock bit. Consensus does not know the NFT id.

Worker keys are `SHA-256(utf8(mainKeyHex + ":ki-deploy-worker:" + index))` as a Kaspa private key. The hex has to be the unlocked in-memory key. After they moved the key into encrypted storage, reading the old `localStorage` slot returned empty and would have derived one shared worker address for every user. Recovery still scans 250 indexes. A deploy funds a few shards at a time rather than all 250 up front. Sweep, abort, and deploy share one flag so they cannot sign the same worker coins twice. About 90 seconds after connect, an idle page sweeps leftover worker coins.

## KasProof

`SHA-256(file)` hex is passed to `new kaspa.PrivateKey(...)`. That key's address is the proof address. The stamp pays it 0.2 KAS and attaches:

```json
{"p":"kpp-1","op":"stamp","hash":"<sha256 hex>","algo":"sha256"}
```

Anyone who has the file can spend that output. The app does spend it, back to the user, 2.5 s, 4 s, and 6 s after broadcast. Verification that still works after the reclaim uses REST transaction history (`transactions-count`, then the oldest page). The UTXO fallback only works while the 0.2 KAS is still there. The file never leaves the browser. The hash does, once the payload path succeeds. There is no KPP-1 document in the repo beyond this builder. The wallet private key is stored in `localStorage` in the clear.

## kasranks.com

`src/js/ui.js` loads `https://krc721-indexer.kaspa.com/api/v1/krc721/mainnet/address/{kaspa address}/KASRANKS`. That is a KRC-721 indexer for a ticker named KASRANKS. It is not the `genesis0-*` payload machine and it is not a Kaspa node. The rest of the repo is HTML, CSS, and ranking images.

## Checked on this desk

`GET https://api.kaspa.org/transactions/e154964b049cdc8660e3b58a4cd5c9fcfdbc2316bfbdcf6688e6a82f9be213c6` returned the transaction. `block_time` 1776866232417 is 22 Apr 2026 13:57:12Z. The payload begins `{"t":"genesis0-col","v":1,"name":"Genesis Zero",...}`. That matches the id printed in the Genesis Zero README. Nothing else was broadcast. The 1,500-loop harness and the "proven on-chain" comments are the author's.

## Patterns worth keeping when we build

- Talk to a node for submit and UTXOs. Talk to REST for history. Treat a mempool ack and an indexer row as two different facts.
- Time out `submitTransaction`. Spread submits across more than one resolver socket. Do not read "mempool" in an error string as success.
- Set the payload before the signature, and record whether the payload path actually submitted.
- Parse sompi from the decimal string. Let mass pay the miner. Put a protocol fee in an output if you charge one.
- On a branch that anyone can broadcast, pin the output script and cap the fee in the script. Use big-endian version bytes inside the `OpTxOutputSpk` preimage, then `OpBlake2b`.
- Use an absolute DAA score with `OpCheckLockTimeVerify` when the deadline must not move just because the coins moved.
- Salt every P2SH. A shared redeem is a shared address.
- Keep the redeem off the public payload when the spend should stay private. Put it in ciphertext, and check the rebuilt P2SH against the public field on restore.
- Hash-pin the wasm you sign with, and the worker that sees the password.
- If ownership is a replay of payloads, say so in the client. The listing covenant does not make it a native asset.

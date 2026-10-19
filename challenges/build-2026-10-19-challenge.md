# Challenge: build/2026-10-19 @ 9d152571ec19ca45ccc635fcc9c593e0008ea5f8

Checked 19 Oct 2026 08:16 CEST. Main reached ea89b6eca5418f3727c0f67bb7325a5ca42c387c at 06:08:11Z (push 69f83cd->ea89b6e). Build = 755a031 (content) + 9d15257 (row link) on ea89b6e; one branch_creation push 06:13:28Z, no force-push; fast-forward; no merge commits.

Counts: 18 HELD, 1 FAILED, 0 UNVERIFIABLE (claims: 11 HELD, 1 FAILED; extra checks: 7 HELD).

## Claims
1. HELD. Seven rows = main text + Build sentence(s) after the 19 Oct prior-cell link, before ' |'; six JSON notes append-only; other sections unchanged; no moved section (SNAPSHOT +1 row only).
2. HELD. #1141 (paginated): 7 reviews (1 APPROVED, 3 CHANGES_REQUESTED, 3 COMMENTED), 6 review comments, 0 issue comments; APPROVED 05:28:58Z then CHANGES_REQUESTED 05:32:36Z, both on 1d77a486.
3. HELD. mass.rs at 1d77a486 L148/153/172/189 use TRANSIENT_BYTE_TO_MASS_FACTOR; PR removes it from constants.rs and does not touch mass.rs; last mass.rs commit on master is 6768648 (#1074, 14 Oct). Saved grep on f7d78773: 23 lines.
4. HELD. Job 117905057848 (Check, failure, 1d77a486): E0425 at mass.rs:148/153/172/189, "could not compile `kaspa-wallet-core`"; 7 of 8 check runs failed (Check no_std passed); link to the review marked likely.
5. HELD. #1152 b58e51e4: L229 per-range seek; filter L234-238 before take L239; ranges L215-220 use no spk bound; store_manager L188-189 removes the marker only; args L353 'covenant-index'; message.rs L1597 and RpcUtxoEntry carry covenant_id; rpc.proto L625 'uint64 startDaaScore = 2;'; draft.
6. HELD. status.md a2660876 (header saved, Date 06:08:31 GMT): increment 10, 'Updated 17 October 2026.', the 'remain in the later increments' line; #13 0 reviews.
7. HELD. kaspa.org/build header Date 06:08:38 GMT, 200, CloudFront Miss; 3 v2.1.0 release links, 2 v2.0.0 wasm links; #57 files: constants.ts +2/-2, llms-full.txt +3/-3.
8. FAILED (part). Quotes from 2111907376957956539, 2111913727733661869, 2112050585004306646 are byte-exact in threads-fulltext.txt; 2111906108600467489 is absent. But 2111754328557961279 (KasperoLabs) IS in that file (as an included post, conversation root). Fix below.
9. HELD. KCC-23 at 1516a6c4: JSON metadata bound at genesis, "meanings are left to ecosystem conventions", example uses "name"; no registry or uniqueness rule.
10. HELD. 14 Build reads 06:10:29-06:10:50Z, all 200/MISS/synced/2.1.0; 821a1e6c 8, af0bc9c5 6 (round 1 reads 2, 3, 6; round 2 reads 3, 5, 7); blueScoreDiff 3-23; acceptedTxBlockTimeDiff 1-4; blockdag 06:10:32Z 600551885, 06:10:50Z 600552066. Watch headers 9/5.
11. HELD. #1147/#1146 nothing after the marker; #1150 head 3f7d591a, 0 reviews, 0 comments; #863 head 41a9f4e6 = merge (parents aa8f870d, f7d78773), 0 reviews, 10 issue comments, last 4 Oct.
12. HELD. Pipe check (code-span aware) 0 bad rows; markdown API: Now table renders 36 rows, each Build sentence inside its cell; 25/25 new SNAPSHOT anchors resolve once; JSON canonical (updated 2026-10-19); guard 0.

## Extra checks (HELD)
Third-party scope: Build sentences cover core items only (KGI, Launch proof/KCC-23, kaspa.org, rusty-kaspa, KRC-20 L1 framing). Prompt not touched by Build; L8 is the sweep's, accurate. All HTTP claims have saved Date headers. Placement after the link and before ' |'. No force-push. run.sh 0 hits on both commits. Render OK.

## FAILED fix (F1)
README L72 (Launch proof and binding) and the matching master.json note: replace
'2111906108600467489 ("sounds like a very good idea") and the KasperoLabs post are not in that file: not verified there.'
with
'2111906108600467489 ("sounds like a very good idea") is not in that file: not verified there. The KasperoLabs post 2111754328557961279 is in it, and the summary matches it.'
(in master.json with the inner quotes escaped as \").

## Recheck @ a3c51abec9cb21807d1b9c9e0f7b2325c2be0434 (19 Oct 2026 08:19 CEST)
b46fec1 (fix) + a3c51ab (row link) on 9d15257; one plain push 06:18:41Z (9d15257->a3c51ab), no force-push; main still ea89b6e; fast-forward; guard 0 hits on both commits.
Counts: 8 HELD, 0 FAILED, 0 UNVERIFIABLE. CLEARED.
1. README L72: F1 text word for word; the only README change.
2. master.json note: F1 text word for word with inner quotes escaped; the only JSON change; canonical.
3. threads-fulltext.txt: 2111754328557961279 is under includes.posts (author id 1883537666429313025, mapped to KasperoLabs by the file's mentions; 18 Oct 09:40:41Z); text matches the summary (two KCC-20 tokens differing only in covenant id).
4. New SNAPSHOT row 08:18 accurate, on top, newest first (08:18, 08:12, 07:53); 0 old lines changed.
5. Nothing else changed (3 files, +3/-2).
6. Pipe check 0 bad rows; markdown API renders the 36-row table with the new sentence inside its cell.
7. Anchors 50/50 resolve once.
8. Merge order: build fast-forwards onto main ea89b6e.

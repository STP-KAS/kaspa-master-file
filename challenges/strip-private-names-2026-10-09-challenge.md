# Challenge: build/strip-private-names-2026-10-09

Reviewed tip: cf44ce5adc1778c3e6b685c6aadd4569c6dba275 (5c51de5 redaction and 08:55 row, cf44ce5 row link), cut from main f0ff185. Pass: 9 Oct 2026 09:20 CEST.

- HELD: `gh repo list STP-KAS --visibility private` lists 19 repos today. `git grep` for all 19 across every tracked file on the tip finds 0. The redaction is forward only: no history rewrite and no force-push. Past commits still hold the names, as the 08:55 row says.
- HELD: each replacement keeps its sentence true. "A private journal repo (name withheld)", "A private TN10 desk repo's README", "A private vprogs bot repo's campaign window", "Two private vprogs repos", "in a private repo (link removed)" and "kns-kasware-tn10-test and one other" each replace exactly the names and links that were removed. The private commit hashes beside those names are gone too.
- HELD (point 1): every "2 private (kns-kasware-tn10-test and one other)" line is dated 21 Sep, when that repo was private. master.json already adds "has since gone public (gh api, 6 Oct)". No "then" is needed. Optional advisory: add "then" in the STP-REPOS.md Count row, which has no date of its own.
- HELD (point 2): README "None of the 15 private names is listed on this board." sits in the cell dated to the 6 Oct live count of 95 public + 15 private, and it stays true at today's count of 19. Advisory: "None of STP-KAS's private repo names is listed on this board" would not depend on the count.
- HELD: master.json is canonical (indent 2, 0 \u escapes). README renders the same table and row count as main. The SNAPSHOT 08:55 row is at the top and links 5c51de5. The public look-alike names are untouched. Main f0ff185 is an ancestor of the tip, so this is a fast-forward.
- Note for stp: this removes the 17 SNAPSHOT links to a private research repo that stp chose to keep on 6-7 Oct (weekly reread item W-F3, closed as "keep"). Removing them is the safer direction and costs no facts, because each row keeps the sentence and says "link removed". It still reverses his earlier call, so he is told.

Totals: HELD 6, FAILED 0, UNVERIFIABLE 0. Cleared for merge at exactly cf44ce5.

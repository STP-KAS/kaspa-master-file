> **Experimental. Not advice.** [DISCLAIMER.md](DISCLAIMER.md)

# Reading notes — *Satoshi's Engine*

- **Source:** [kaspaexplained.com/satoshis-engine.pdf](https://kaspaexplained.com/satoshis-engine.pdf)
- **Title:** *Satoshi's Engine — Carnot local, Brownian global*
- **Author:** Moose.kas (@THEMOOSEISLOOS5)
- **Length:** 89 pages. The text states no version or date. The PDF metadata says it was created 21 Sep 2026.
- **sha256:** `4062170b0d53aece00803f14bd1b6be1b51d49b6e86ad262d723e6d8c3f91b78`
- **Read:** 26 Sep 2026, all pages.
- **Status:** Catalog, not a pin. Board row: [README **Now**](README.md#now-read-this-first), "Satoshi's Engine".

## The ideas worth keeping

**The cycle (pp. 8–31, summary pp. 48–51).** The book tracks coins and mining machines separately. Each is "hot" (demand ahead of supply) or "cold" (supply ahead of demand). A rising price means hot coins. A rising hashrate means hot machines. A first price lands above what a coin costs to mine. Every manufacturer sees the same margin and builds into it at the same time, without colluding. Delivery takes months, so the machines arrive after the coin has already turned down. Hashrate keeps climbing while price falls. Losing miners sell their machines, used machines undercut new ones, and both markets go quiet at a bottom where price meets cost. The book says the lag is not friction to remove: it "is the reason the cycle exists at all" (p. 48).

**The steepest rally is when there are no machines to buy (pp. 34–35, 49).** You can get exposure by mining or by buying the coin. Early in a recovery the used machines are gone and new ones are still being made, so all demand lands on the coin. "The stretch everyone remembers is the stretch when there was nothing to buy except the coin" (p. 35).

**Two ratchets, and higher lows (pp. 44–47, 52–55).** Two things move one way only. The work behind each coin rises when a profit gap pulls in machines, and it does not fall back: parked machines are not scrapped, and issuance only thins. The energy a machine spends per unit of work falls when a better machine takes over, and that does not reverse either. The cost of a coin is the product of the two. The author says the first has won every full cycle so far, so each bottom lands higher. On the coin side, some coins go into long-term holding at every bottom and never come back to market (p. 54). Each gap is smaller than the last, so the steps shrink as a network matures (p. 54).

**The arithmetic (pp. 58–62).** Joules per unit of work (a property of the machine) times work per coin (set by competition and issuance) gives joules per coin. The number that matters is not the network average or the best machine. It is the "workhorse": the machine that wins on total cost, purchase plus running, so it gets bought in bulk and does most of the work (pp. 20–21, 59–60). Power price, cooling, and even rack and voltage fit decide which machine that is (p. 60). The energy used to build a machine belongs in the cost too, spread over the coins it earns until its resale value reaches zero (p. 61).

**Buying a machine is running cost paid in advance (p. 65).** Building a machine is energy already spent. An efficient, expensive machine pays more now and less later. A cheap, inefficient one does the opposite. "The only question capex and opex settle between them is timing" (p. 65). A machine's price above its build cost is borrowed from the coin's premium, which is why machine prices collapse faster than coin prices (p. 66).

**The cost of waiting (pp. 67–68).** Time is the second currency. A premium on a machine buys a shorter payback. But time is also charged whether or not you pay for it: if difficulty climbs during the payback, the return falls short. A machine loses value while it sits switched off, because what erodes it happens in fabs and in other people's deployments. That is why miners keep running at thin margins.

**Miners are sellers of last resort (pp. 63–64).** At the bottom, a miner on the margin must sell nearly everything mined to pay for power. The most they can sell is what the protocol issues, so the heaviest possible forced selling shrinks every cycle. The book compares this to a central bank, which can supply without limit, and says a miner under strain "supplies less at greater cost" (p. 64).

**Fees (pp. 71–75).** A fee is extra coins for the same energy, so it lowers the cost of each coin a miner ends up holding. That margin pulls in machines until it is competed away. Fees do not need a full network: "A network does not need to be full to be paid. It needs to be used" (p. 72). A long fee boom still leaves machines behind when the revenue is gone (pp. 74–75).

**The title (pp. 77–85).** "Carnot local": the fast cycle returns to where it started, like Carnot's ideal engine. Demand is the hot reservoir, cost of production the cold one, and hashrate the working substance (p. 81). "Brownian global": the slow part moves one way, like a ratchet. Feynman's ratchet thought experiment fails because nothing pays to hold the pawl. This one works because parked machines and held coins are costs already paid that stop it slipping back (pp. 83–84). The author adds that it can stop but not reverse: if profit gaps stay closed long enough, nobody funds the next machine (p. 85).

**The author's open questions (pp. 86–88).** The fee argument is sound in reasoning but "mostly theoretical", because no network has had fees large next to issuance for long (p. 86). How fees should be paid out over time is left open (p. 87). Whether fees replace issuance before it runs out is not settled. The author suggests counting in what coins buy, not how many there are, because thinning supply can raise price. That only holds while someone is still buying (pp. 87–88). The rising-cost claim rests on two conditions: that a floor of demand persists, and that competition keeps outrunning efficiency. Both have held so far, over a span the author calls early (p. 88).

## Relevance to Kaspa (desk reading, not the author's claim)

- **No network is named.** The book says so on p. 6. Nothing in it is a claim about Kaspa, and nothing in it conflicts with the board.
- **Orphaned work.** On p. 81 the book counts "effort spent on blocks that lose the race" as friction, a leak between a network and the ideal. The board pins that Kaspa is a blockDAG: parallel blocks stay in the record and GHOSTDAG orders them ([README](README.md#what)). So Kaspa is built to avoid that particular leak. This desk has not checked how Kaspa pays for blocks that GHOSTDAG ranks lower, so it makes no claim about rewards.
- **Issuance.** The book assumes issuance only falls (p. 34) and that fees must eventually take over (pp. 73, 87). This repo already notes that Kaspa has a max supply of about 28.704B KAS and that most of it was out by mid-September ([RECEIPTS.md](RECEIPTS.md), 12 Sep snapshot). A dynamic tail-emission idea sits on the research forum as a proposal, not a KIP ([RECEIPTS.md](RECEIPTS.md), section 1b). The fee-handover question on pp. 86–88 is the same one [THINK-BIG.md](THINK-BIG.md) raises.
- **Not read yet.** The book points to a companion, *The Instrument*, for which networks leak value and how "sound" each one is (pp. 6, 55). This desk has not read it.

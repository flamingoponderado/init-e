import InitE.SmallOptimizerComputation
import InitE.WordStages.Source770
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.SmallOptimizerComputation InitE.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages
namespace InitE.SmallStages.Oracles770
def optimizedBody770_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 4)]

def optimizedBody770_1 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 769) ([0, 2, 4, 6]) (none)

def optimizedBody770_2 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody770_0 optimizedBody770_1

def oracle770 : Option (Spt Nat) :=
some (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0 Flapjack.Spt.ln)
def optimized770 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(770, 3, optimizedBody770_2)
end InitE.SmallStages.Oracles770

import InitE.BackendStages.RawChunk496_511
import InitE.BackendStages.Alloc496
import InitE.BackendStages.Alloc497
import InitE.BackendStages.Alloc498
import InitE.BackendStages.Alloc499
import InitE.BackendStages.Alloc500
import InitE.BackendStages.Alloc501
import InitE.BackendStages.Alloc502
import InitE.BackendStages.Alloc503
import InitE.BackendStages.Alloc504
import InitE.BackendStages.Alloc505
import InitE.BackendStages.Alloc506
import InitE.BackendStages.Alloc507
import InitE.BackendStages.Alloc508
import InitE.BackendStages.Alloc509
import InitE.BackendStages.Alloc510
import InitE.BackendStages.Alloc511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk496_511
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc496, Alloc497, Alloc498, Alloc499, Alloc500, Alloc501, Alloc502, Alloc503, Alloc504, Alloc505, Alloc506, Alloc507, Alloc508, Alloc509, Alloc510, Alloc511]
theorem compiled_eq : RawChunk496_511.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (496, raw496), StackAlloc.progComp (497, raw497), StackAlloc.progComp (498, raw498), StackAlloc.progComp (499, raw499), StackAlloc.progComp (500, raw500), StackAlloc.progComp (501, raw501), StackAlloc.progComp (502, raw502), StackAlloc.progComp (503, raw503), StackAlloc.progComp (504, raw504), StackAlloc.progComp (505, raw505), StackAlloc.progComp (506, raw506), StackAlloc.progComp (507, raw507), StackAlloc.progComp (508, raw508), StackAlloc.progComp (509, raw509), StackAlloc.progComp (510, raw510), StackAlloc.progComp (511, raw511)] = bodies
  rw [Alloc496_eq, Alloc497_eq, Alloc498_eq, Alloc499_eq, Alloc500_eq, Alloc501_eq, Alloc502_eq, Alloc503_eq, Alloc504_eq, Alloc505_eq, Alloc506_eq, Alloc507_eq, Alloc508_eq, Alloc509_eq, Alloc510_eq, Alloc511_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk496_511

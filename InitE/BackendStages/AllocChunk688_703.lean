import InitE.BackendStages.RawChunk688_703
import InitE.BackendStages.Alloc688
import InitE.BackendStages.Alloc689
import InitE.BackendStages.Alloc690
import InitE.BackendStages.Alloc691
import InitE.BackendStages.Alloc692
import InitE.BackendStages.Alloc693
import InitE.BackendStages.Alloc694
import InitE.BackendStages.Alloc695
import InitE.BackendStages.Alloc696
import InitE.BackendStages.Alloc697
import InitE.BackendStages.Alloc698
import InitE.BackendStages.Alloc699
import InitE.BackendStages.Alloc700
import InitE.BackendStages.Alloc701
import InitE.BackendStages.Alloc702
import InitE.BackendStages.Alloc703
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk688_703
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc688, Alloc689, Alloc690, Alloc691, Alloc692, Alloc693, Alloc694, Alloc695, Alloc696, Alloc697, Alloc698, Alloc699, Alloc700, Alloc701, Alloc702, Alloc703]
theorem compiled_eq : RawChunk688_703.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (688, raw688), StackAlloc.progComp (689, raw689), StackAlloc.progComp (690, raw690), StackAlloc.progComp (691, raw691), StackAlloc.progComp (692, raw692), StackAlloc.progComp (693, raw693), StackAlloc.progComp (694, raw694), StackAlloc.progComp (695, raw695), StackAlloc.progComp (696, raw696), StackAlloc.progComp (697, raw697), StackAlloc.progComp (698, raw698), StackAlloc.progComp (699, raw699), StackAlloc.progComp (700, raw700), StackAlloc.progComp (701, raw701), StackAlloc.progComp (702, raw702), StackAlloc.progComp (703, raw703)] = bodies
  rw [Alloc688_eq, Alloc689_eq, Alloc690_eq, Alloc691_eq, Alloc692_eq, Alloc693_eq, Alloc694_eq, Alloc695_eq, Alloc696_eq, Alloc697_eq, Alloc698_eq, Alloc699_eq, Alloc700_eq, Alloc701_eq, Alloc702_eq, Alloc703_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk688_703

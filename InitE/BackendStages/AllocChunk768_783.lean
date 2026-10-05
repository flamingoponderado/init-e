import InitE.BackendStages.RawChunk768_783
import InitE.BackendStages.Alloc768
import InitE.BackendStages.Alloc769
import InitE.BackendStages.Alloc770
import InitE.BackendStages.Alloc771
import InitE.BackendStages.Alloc772
import InitE.BackendStages.Alloc773
import InitE.BackendStages.Alloc774
import InitE.BackendStages.Alloc775
import InitE.BackendStages.Alloc776
import InitE.BackendStages.Alloc777
import InitE.BackendStages.Alloc778
import InitE.BackendStages.Alloc779
import InitE.BackendStages.Alloc780
import InitE.BackendStages.Alloc781
import InitE.BackendStages.Alloc782
import InitE.BackendStages.Alloc783
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk768_783
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc768, Alloc769, Alloc770, Alloc771, Alloc772, Alloc773, Alloc774, Alloc775, Alloc776, Alloc777, Alloc778, Alloc779, Alloc780, Alloc781, Alloc782, Alloc783]
theorem compiled_eq : RawChunk768_783.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (768, raw768), StackAlloc.progComp (769, raw769), StackAlloc.progComp (770, raw770), StackAlloc.progComp (771, raw771), StackAlloc.progComp (772, raw772), StackAlloc.progComp (773, raw773), StackAlloc.progComp (774, raw774), StackAlloc.progComp (775, raw775), StackAlloc.progComp (776, raw776), StackAlloc.progComp (777, raw777), StackAlloc.progComp (778, raw778), StackAlloc.progComp (779, raw779), StackAlloc.progComp (780, raw780), StackAlloc.progComp (781, raw781), StackAlloc.progComp (782, raw782), StackAlloc.progComp (783, raw783)] = bodies
  rw [Alloc768_eq, Alloc769_eq, Alloc770_eq, Alloc771_eq, Alloc772_eq, Alloc773_eq, Alloc774_eq, Alloc775_eq, Alloc776_eq, Alloc777_eq, Alloc778_eq, Alloc779_eq, Alloc780_eq, Alloc781_eq, Alloc782_eq, Alloc783_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk768_783

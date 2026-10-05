import InitE.BackendStages.RawChunk672_687
import InitE.BackendStages.Alloc672
import InitE.BackendStages.Alloc673
import InitE.BackendStages.Alloc674
import InitE.BackendStages.Alloc675
import InitE.BackendStages.Alloc676
import InitE.BackendStages.Alloc677
import InitE.BackendStages.Alloc678
import InitE.BackendStages.Alloc679
import InitE.BackendStages.Alloc680
import InitE.BackendStages.Alloc681
import InitE.BackendStages.Alloc682
import InitE.BackendStages.Alloc683
import InitE.BackendStages.Alloc684
import InitE.BackendStages.Alloc685
import InitE.BackendStages.Alloc686
import InitE.BackendStages.Alloc687
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk672_687
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc672, Alloc673, Alloc674, Alloc675, Alloc676, Alloc677, Alloc678, Alloc679, Alloc680, Alloc681, Alloc682, Alloc683, Alloc684, Alloc685, Alloc686, Alloc687]
theorem compiled_eq : RawChunk672_687.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (672, raw672), StackAlloc.progComp (673, raw673), StackAlloc.progComp (674, raw674), StackAlloc.progComp (675, raw675), StackAlloc.progComp (676, raw676), StackAlloc.progComp (677, raw677), StackAlloc.progComp (678, raw678), StackAlloc.progComp (679, raw679), StackAlloc.progComp (680, raw680), StackAlloc.progComp (681, raw681), StackAlloc.progComp (682, raw682), StackAlloc.progComp (683, raw683), StackAlloc.progComp (684, raw684), StackAlloc.progComp (685, raw685), StackAlloc.progComp (686, raw686), StackAlloc.progComp (687, raw687)] = bodies
  rw [Alloc672_eq, Alloc673_eq, Alloc674_eq, Alloc675_eq, Alloc676_eq, Alloc677_eq, Alloc678_eq, Alloc679_eq, Alloc680_eq, Alloc681_eq, Alloc682_eq, Alloc683_eq, Alloc684_eq, Alloc685_eq, Alloc686_eq, Alloc687_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk672_687

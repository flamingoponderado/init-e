import InitE.BackendStages.RawChunk624_639
import InitE.BackendStages.Alloc624
import InitE.BackendStages.Alloc625
import InitE.BackendStages.Alloc626
import InitE.BackendStages.Alloc627
import InitE.BackendStages.Alloc628
import InitE.BackendStages.Alloc629
import InitE.BackendStages.Alloc630
import InitE.BackendStages.Alloc631
import InitE.BackendStages.Alloc632
import InitE.BackendStages.Alloc633
import InitE.BackendStages.Alloc634
import InitE.BackendStages.Alloc635
import InitE.BackendStages.Alloc636
import InitE.BackendStages.Alloc637
import InitE.BackendStages.Alloc638
import InitE.BackendStages.Alloc639
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk624_639
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc624, Alloc625, Alloc626, Alloc627, Alloc628, Alloc629, Alloc630, Alloc631, Alloc632, Alloc633, Alloc634, Alloc635, Alloc636, Alloc637, Alloc638, Alloc639]
theorem compiled_eq : RawChunk624_639.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (624, raw624), StackAlloc.progComp (625, raw625), StackAlloc.progComp (626, raw626), StackAlloc.progComp (627, raw627), StackAlloc.progComp (628, raw628), StackAlloc.progComp (629, raw629), StackAlloc.progComp (630, raw630), StackAlloc.progComp (631, raw631), StackAlloc.progComp (632, raw632), StackAlloc.progComp (633, raw633), StackAlloc.progComp (634, raw634), StackAlloc.progComp (635, raw635), StackAlloc.progComp (636, raw636), StackAlloc.progComp (637, raw637), StackAlloc.progComp (638, raw638), StackAlloc.progComp (639, raw639)] = bodies
  rw [Alloc624_eq, Alloc625_eq, Alloc626_eq, Alloc627_eq, Alloc628_eq, Alloc629_eq, Alloc630_eq, Alloc631_eq, Alloc632_eq, Alloc633_eq, Alloc634_eq, Alloc635_eq, Alloc636_eq, Alloc637_eq, Alloc638_eq, Alloc639_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk624_639

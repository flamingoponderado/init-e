import InitE.BackendStages.RawChunk784_799
import InitE.BackendStages.Alloc784
import InitE.BackendStages.Alloc785
import InitE.BackendStages.Alloc786
import InitE.BackendStages.Alloc787
import InitE.BackendStages.Alloc788
import InitE.BackendStages.Alloc789
import InitE.BackendStages.Alloc790
import InitE.BackendStages.Alloc791
import InitE.BackendStages.Alloc792
import InitE.BackendStages.Alloc793
import InitE.BackendStages.Alloc794
import InitE.BackendStages.Alloc795
import InitE.BackendStages.Alloc796
import InitE.BackendStages.Alloc797
import InitE.BackendStages.Alloc798
import InitE.BackendStages.Alloc799
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk784_799
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc784, Alloc785, Alloc786, Alloc787, Alloc788, Alloc789, Alloc790, Alloc791, Alloc792, Alloc793, Alloc794, Alloc795, Alloc796, Alloc797, Alloc798, Alloc799]
theorem compiled_eq : RawChunk784_799.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (784, raw784), StackAlloc.progComp (785, raw785), StackAlloc.progComp (786, raw786), StackAlloc.progComp (787, raw787), StackAlloc.progComp (788, raw788), StackAlloc.progComp (789, raw789), StackAlloc.progComp (790, raw790), StackAlloc.progComp (791, raw791), StackAlloc.progComp (792, raw792), StackAlloc.progComp (793, raw793), StackAlloc.progComp (794, raw794), StackAlloc.progComp (795, raw795), StackAlloc.progComp (796, raw796), StackAlloc.progComp (797, raw797), StackAlloc.progComp (798, raw798), StackAlloc.progComp (799, raw799)] = bodies
  rw [Alloc784_eq, Alloc785_eq, Alloc786_eq, Alloc787_eq, Alloc788_eq, Alloc789_eq, Alloc790_eq, Alloc791_eq, Alloc792_eq, Alloc793_eq, Alloc794_eq, Alloc795_eq, Alloc796_eq, Alloc797_eq, Alloc798_eq, Alloc799_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk784_799

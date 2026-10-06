import InitE.BackendStages.RawChunk528_543
import InitE.BackendStages.Alloc528
import InitE.BackendStages.Alloc529
import InitE.BackendStages.Alloc530
import InitE.BackendStages.Alloc531
import InitE.BackendStages.Alloc532
import InitE.BackendStages.Alloc533
import InitE.BackendStages.Alloc534
import InitE.BackendStages.Alloc535
import InitE.BackendStages.Alloc536
import InitE.BackendStages.Alloc537
import InitE.BackendStages.Alloc538
import InitE.BackendStages.Alloc539
import InitE.BackendStages.Alloc540
import InitE.BackendStages.Alloc541
import InitE.BackendStages.Alloc542
import InitE.BackendStages.Alloc543
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk528_543
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc528, Alloc529, Alloc530, Alloc531, Alloc532, Alloc533, Alloc534, Alloc535, Alloc536, Alloc537, Alloc538, Alloc539, Alloc540, Alloc541, Alloc542, Alloc543]
theorem compiled_eq : RawChunk528_543.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (528, raw528), StackAlloc.progComp (529, raw529), StackAlloc.progComp (530, raw530), StackAlloc.progComp (531, raw531), StackAlloc.progComp (532, raw532), StackAlloc.progComp (533, raw533), StackAlloc.progComp (534, raw534), StackAlloc.progComp (535, raw535), StackAlloc.progComp (536, raw536), StackAlloc.progComp (537, raw537), StackAlloc.progComp (538, raw538), StackAlloc.progComp (539, raw539), StackAlloc.progComp (540, raw540), StackAlloc.progComp (541, raw541), StackAlloc.progComp (542, raw542), StackAlloc.progComp (543, raw543)] = bodies
  rw [Alloc528_eq, Alloc529_eq, Alloc530_eq, Alloc531_eq, Alloc532_eq, Alloc533_eq, Alloc534_eq, Alloc535_eq, Alloc536_eq, Alloc537_eq, Alloc538_eq, Alloc539_eq, Alloc540_eq, Alloc541_eq, Alloc542_eq, Alloc543_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk528_543

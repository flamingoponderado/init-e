import InitE.BackendStages.RawChunk480_495
import InitE.BackendStages.Alloc480
import InitE.BackendStages.Alloc481
import InitE.BackendStages.Alloc482
import InitE.BackendStages.Alloc483
import InitE.BackendStages.Alloc484
import InitE.BackendStages.Alloc485
import InitE.BackendStages.Alloc486
import InitE.BackendStages.Alloc487
import InitE.BackendStages.Alloc488
import InitE.BackendStages.Alloc489
import InitE.BackendStages.Alloc490
import InitE.BackendStages.Alloc491
import InitE.BackendStages.Alloc492
import InitE.BackendStages.Alloc493
import InitE.BackendStages.Alloc494
import InitE.BackendStages.Alloc495
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk480_495
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc480, Alloc481, Alloc482, Alloc483, Alloc484, Alloc485, Alloc486, Alloc487, Alloc488, Alloc489, Alloc490, Alloc491, Alloc492, Alloc493, Alloc494, Alloc495]
theorem compiled_eq : RawChunk480_495.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (480, raw480), StackAlloc.progComp (481, raw481), StackAlloc.progComp (482, raw482), StackAlloc.progComp (483, raw483), StackAlloc.progComp (484, raw484), StackAlloc.progComp (485, raw485), StackAlloc.progComp (486, raw486), StackAlloc.progComp (487, raw487), StackAlloc.progComp (488, raw488), StackAlloc.progComp (489, raw489), StackAlloc.progComp (490, raw490), StackAlloc.progComp (491, raw491), StackAlloc.progComp (492, raw492), StackAlloc.progComp (493, raw493), StackAlloc.progComp (494, raw494), StackAlloc.progComp (495, raw495)] = bodies
  rw [Alloc480_eq, Alloc481_eq, Alloc482_eq, Alloc483_eq, Alloc484_eq, Alloc485_eq, Alloc486_eq, Alloc487_eq, Alloc488_eq, Alloc489_eq, Alloc490_eq, Alloc491_eq, Alloc492_eq, Alloc493_eq, Alloc494_eq, Alloc495_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk480_495

import InitE.BackendStages.RawChunk80_95
import InitE.BackendStages.Alloc80
import InitE.BackendStages.Alloc81
import InitE.BackendStages.Alloc82
import InitE.BackendStages.Alloc83
import InitE.BackendStages.Alloc84
import InitE.BackendStages.Alloc85
import InitE.BackendStages.Alloc86
import InitE.BackendStages.Alloc87
import InitE.BackendStages.Alloc88
import InitE.BackendStages.Alloc89
import InitE.BackendStages.Alloc90
import InitE.BackendStages.Alloc91
import InitE.BackendStages.Alloc92
import InitE.BackendStages.Alloc93
import InitE.BackendStages.Alloc94
import InitE.BackendStages.Alloc95
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk80_95
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc80, Alloc81, Alloc82, Alloc83, Alloc84, Alloc85, Alloc86, Alloc87, Alloc88, Alloc89, Alloc90, Alloc91, Alloc92, Alloc93, Alloc94, Alloc95]
theorem compiled_eq : RawChunk80_95.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (80, raw80), StackAlloc.progComp (81, raw81), StackAlloc.progComp (82, raw82), StackAlloc.progComp (83, raw83), StackAlloc.progComp (84, raw84), StackAlloc.progComp (85, raw85), StackAlloc.progComp (86, raw86), StackAlloc.progComp (87, raw87), StackAlloc.progComp (88, raw88), StackAlloc.progComp (89, raw89), StackAlloc.progComp (90, raw90), StackAlloc.progComp (91, raw91), StackAlloc.progComp (92, raw92), StackAlloc.progComp (93, raw93), StackAlloc.progComp (94, raw94), StackAlloc.progComp (95, raw95)] = bodies
  rw [Alloc80_eq, Alloc81_eq, Alloc82_eq, Alloc83_eq, Alloc84_eq, Alloc85_eq, Alloc86_eq, Alloc87_eq, Alloc88_eq, Alloc89_eq, Alloc90_eq, Alloc91_eq, Alloc92_eq, Alloc93_eq, Alloc94_eq, Alloc95_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk80_95

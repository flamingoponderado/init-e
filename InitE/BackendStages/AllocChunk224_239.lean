import InitE.BackendStages.RawChunk224_239
import InitE.BackendStages.Alloc224
import InitE.BackendStages.Alloc225
import InitE.BackendStages.Alloc226
import InitE.BackendStages.Alloc227
import InitE.BackendStages.Alloc228
import InitE.BackendStages.Alloc229
import InitE.BackendStages.Alloc230
import InitE.BackendStages.Alloc231
import InitE.BackendStages.Alloc232
import InitE.BackendStages.Alloc233
import InitE.BackendStages.Alloc234
import InitE.BackendStages.Alloc235
import InitE.BackendStages.Alloc236
import InitE.BackendStages.Alloc237
import InitE.BackendStages.Alloc238
import InitE.BackendStages.Alloc239
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk224_239
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc224, Alloc225, Alloc226, Alloc227, Alloc228, Alloc229, Alloc230, Alloc231, Alloc232, Alloc233, Alloc234, Alloc235, Alloc236, Alloc237, Alloc238, Alloc239]
theorem compiled_eq : RawChunk224_239.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (224, raw224), StackAlloc.progComp (225, raw225), StackAlloc.progComp (226, raw226), StackAlloc.progComp (227, raw227), StackAlloc.progComp (228, raw228), StackAlloc.progComp (229, raw229), StackAlloc.progComp (230, raw230), StackAlloc.progComp (231, raw231), StackAlloc.progComp (232, raw232), StackAlloc.progComp (233, raw233), StackAlloc.progComp (234, raw234), StackAlloc.progComp (235, raw235), StackAlloc.progComp (236, raw236), StackAlloc.progComp (237, raw237), StackAlloc.progComp (238, raw238), StackAlloc.progComp (239, raw239)] = bodies
  rw [Alloc224_eq, Alloc225_eq, Alloc226_eq, Alloc227_eq, Alloc228_eq, Alloc229_eq, Alloc230_eq, Alloc231_eq, Alloc232_eq, Alloc233_eq, Alloc234_eq, Alloc235_eq, Alloc236_eq, Alloc237_eq, Alloc238_eq, Alloc239_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk224_239

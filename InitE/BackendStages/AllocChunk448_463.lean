import InitE.BackendStages.RawChunk448_463
import InitE.BackendStages.Alloc448
import InitE.BackendStages.Alloc449
import InitE.BackendStages.Alloc450
import InitE.BackendStages.Alloc451
import InitE.BackendStages.Alloc452
import InitE.BackendStages.Alloc453
import InitE.BackendStages.Alloc454
import InitE.BackendStages.Alloc455
import InitE.BackendStages.Alloc456
import InitE.BackendStages.Alloc457
import InitE.BackendStages.Alloc458
import InitE.BackendStages.Alloc459
import InitE.BackendStages.Alloc460
import InitE.BackendStages.Alloc461
import InitE.BackendStages.Alloc462
import InitE.BackendStages.Alloc463
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk448_463
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc448, Alloc449, Alloc450, Alloc451, Alloc452, Alloc453, Alloc454, Alloc455, Alloc456, Alloc457, Alloc458, Alloc459, Alloc460, Alloc461, Alloc462, Alloc463]
theorem compiled_eq : RawChunk448_463.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (448, raw448), StackAlloc.progComp (449, raw449), StackAlloc.progComp (450, raw450), StackAlloc.progComp (451, raw451), StackAlloc.progComp (452, raw452), StackAlloc.progComp (453, raw453), StackAlloc.progComp (454, raw454), StackAlloc.progComp (455, raw455), StackAlloc.progComp (456, raw456), StackAlloc.progComp (457, raw457), StackAlloc.progComp (458, raw458), StackAlloc.progComp (459, raw459), StackAlloc.progComp (460, raw460), StackAlloc.progComp (461, raw461), StackAlloc.progComp (462, raw462), StackAlloc.progComp (463, raw463)] = bodies
  rw [Alloc448_eq, Alloc449_eq, Alloc450_eq, Alloc451_eq, Alloc452_eq, Alloc453_eq, Alloc454_eq, Alloc455_eq, Alloc456_eq, Alloc457_eq, Alloc458_eq, Alloc459_eq, Alloc460_eq, Alloc461_eq, Alloc462_eq, Alloc463_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk448_463

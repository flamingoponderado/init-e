import InitE.BackendStages.RawChunk416_431
import InitE.BackendStages.Alloc416
import InitE.BackendStages.Alloc417
import InitE.BackendStages.Alloc418
import InitE.BackendStages.Alloc419
import InitE.BackendStages.Alloc420
import InitE.BackendStages.Alloc421
import InitE.BackendStages.Alloc422
import InitE.BackendStages.Alloc423
import InitE.BackendStages.Alloc424
import InitE.BackendStages.Alloc425
import InitE.BackendStages.Alloc426
import InitE.BackendStages.Alloc427
import InitE.BackendStages.Alloc428
import InitE.BackendStages.Alloc429
import InitE.BackendStages.Alloc430
import InitE.BackendStages.Alloc431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk416_431
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc416, Alloc417, Alloc418, Alloc419, Alloc420, Alloc421, Alloc422, Alloc423, Alloc424, Alloc425, Alloc426, Alloc427, Alloc428, Alloc429, Alloc430, Alloc431]
theorem compiled_eq : RawChunk416_431.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (416, raw416), StackAlloc.progComp (417, raw417), StackAlloc.progComp (418, raw418), StackAlloc.progComp (419, raw419), StackAlloc.progComp (420, raw420), StackAlloc.progComp (421, raw421), StackAlloc.progComp (422, raw422), StackAlloc.progComp (423, raw423), StackAlloc.progComp (424, raw424), StackAlloc.progComp (425, raw425), StackAlloc.progComp (426, raw426), StackAlloc.progComp (427, raw427), StackAlloc.progComp (428, raw428), StackAlloc.progComp (429, raw429), StackAlloc.progComp (430, raw430), StackAlloc.progComp (431, raw431)] = bodies
  rw [Alloc416_eq, Alloc417_eq, Alloc418_eq, Alloc419_eq, Alloc420_eq, Alloc421_eq, Alloc422_eq, Alloc423_eq, Alloc424_eq, Alloc425_eq, Alloc426_eq, Alloc427_eq, Alloc428_eq, Alloc429_eq, Alloc430_eq, Alloc431_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk416_431

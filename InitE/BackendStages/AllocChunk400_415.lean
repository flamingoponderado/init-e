import InitE.BackendStages.RawChunk400_415
import InitE.BackendStages.Alloc400
import InitE.BackendStages.Alloc401
import InitE.BackendStages.Alloc402
import InitE.BackendStages.Alloc403
import InitE.BackendStages.Alloc404
import InitE.BackendStages.Alloc405
import InitE.BackendStages.Alloc406
import InitE.BackendStages.Alloc407
import InitE.BackendStages.Alloc408
import InitE.BackendStages.Alloc409
import InitE.BackendStages.Alloc410
import InitE.BackendStages.Alloc411
import InitE.BackendStages.Alloc412
import InitE.BackendStages.Alloc413
import InitE.BackendStages.Alloc414
import InitE.BackendStages.Alloc415
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk400_415
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc400, Alloc401, Alloc402, Alloc403, Alloc404, Alloc405, Alloc406, Alloc407, Alloc408, Alloc409, Alloc410, Alloc411, Alloc412, Alloc413, Alloc414, Alloc415]
theorem compiled_eq : RawChunk400_415.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (400, raw400), StackAlloc.progComp (401, raw401), StackAlloc.progComp (402, raw402), StackAlloc.progComp (403, raw403), StackAlloc.progComp (404, raw404), StackAlloc.progComp (405, raw405), StackAlloc.progComp (406, raw406), StackAlloc.progComp (407, raw407), StackAlloc.progComp (408, raw408), StackAlloc.progComp (409, raw409), StackAlloc.progComp (410, raw410), StackAlloc.progComp (411, raw411), StackAlloc.progComp (412, raw412), StackAlloc.progComp (413, raw413), StackAlloc.progComp (414, raw414), StackAlloc.progComp (415, raw415)] = bodies
  rw [Alloc400_eq, Alloc401_eq, Alloc402_eq, Alloc403_eq, Alloc404_eq, Alloc405_eq, Alloc406_eq, Alloc407_eq, Alloc408_eq, Alloc409_eq, Alloc410_eq, Alloc411_eq, Alloc412_eq, Alloc413_eq, Alloc414_eq, Alloc415_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk400_415

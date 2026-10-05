import InitE.BackendStages.RawChunk512_527
import InitE.BackendStages.Alloc512
import InitE.BackendStages.Alloc513
import InitE.BackendStages.Alloc514
import InitE.BackendStages.Alloc515
import InitE.BackendStages.Alloc516
import InitE.BackendStages.Alloc517
import InitE.BackendStages.Alloc518
import InitE.BackendStages.Alloc519
import InitE.BackendStages.Alloc520
import InitE.BackendStages.Alloc521
import InitE.BackendStages.Alloc522
import InitE.BackendStages.Alloc523
import InitE.BackendStages.Alloc524
import InitE.BackendStages.Alloc525
import InitE.BackendStages.Alloc526
import InitE.BackendStages.Alloc527
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk512_527
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc512, Alloc513, Alloc514, Alloc515, Alloc516, Alloc517, Alloc518, Alloc519, Alloc520, Alloc521, Alloc522, Alloc523, Alloc524, Alloc525, Alloc526, Alloc527]
theorem compiled_eq : RawChunk512_527.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (512, raw512), StackAlloc.progComp (513, raw513), StackAlloc.progComp (514, raw514), StackAlloc.progComp (515, raw515), StackAlloc.progComp (516, raw516), StackAlloc.progComp (517, raw517), StackAlloc.progComp (518, raw518), StackAlloc.progComp (519, raw519), StackAlloc.progComp (520, raw520), StackAlloc.progComp (521, raw521), StackAlloc.progComp (522, raw522), StackAlloc.progComp (523, raw523), StackAlloc.progComp (524, raw524), StackAlloc.progComp (525, raw525), StackAlloc.progComp (526, raw526), StackAlloc.progComp (527, raw527)] = bodies
  rw [Alloc512_eq, Alloc513_eq, Alloc514_eq, Alloc515_eq, Alloc516_eq, Alloc517_eq, Alloc518_eq, Alloc519_eq, Alloc520_eq, Alloc521_eq, Alloc522_eq, Alloc523_eq, Alloc524_eq, Alloc525_eq, Alloc526_eq, Alloc527_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk512_527

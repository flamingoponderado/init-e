import InitE.BackendStages.RawChunk736_751
import InitE.BackendStages.Alloc736
import InitE.BackendStages.Alloc737
import InitE.BackendStages.Alloc738
import InitE.BackendStages.Alloc739
import InitE.BackendStages.Alloc740
import InitE.BackendStages.Alloc741
import InitE.BackendStages.Alloc742
import InitE.BackendStages.Alloc743
import InitE.BackendStages.Alloc744
import InitE.BackendStages.Alloc745
import InitE.BackendStages.Alloc746
import InitE.BackendStages.Alloc747
import InitE.BackendStages.Alloc748
import InitE.BackendStages.Alloc749
import InitE.BackendStages.Alloc750
import InitE.BackendStages.Alloc751
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk736_751
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc736, Alloc737, Alloc738, Alloc739, Alloc740, Alloc741, Alloc742, Alloc743, Alloc744, Alloc745, Alloc746, Alloc747, Alloc748, Alloc749, Alloc750, Alloc751]
theorem compiled_eq : RawChunk736_751.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (736, raw736), StackAlloc.progComp (737, raw737), StackAlloc.progComp (738, raw738), StackAlloc.progComp (739, raw739), StackAlloc.progComp (740, raw740), StackAlloc.progComp (741, raw741), StackAlloc.progComp (742, raw742), StackAlloc.progComp (743, raw743), StackAlloc.progComp (744, raw744), StackAlloc.progComp (745, raw745), StackAlloc.progComp (746, raw746), StackAlloc.progComp (747, raw747), StackAlloc.progComp (748, raw748), StackAlloc.progComp (749, raw749), StackAlloc.progComp (750, raw750), StackAlloc.progComp (751, raw751)] = bodies
  rw [Alloc736_eq, Alloc737_eq, Alloc738_eq, Alloc739_eq, Alloc740_eq, Alloc741_eq, Alloc742_eq, Alloc743_eq, Alloc744_eq, Alloc745_eq, Alloc746_eq, Alloc747_eq, Alloc748_eq, Alloc749_eq, Alloc750_eq, Alloc751_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk736_751

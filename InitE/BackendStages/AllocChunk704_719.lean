import InitE.BackendStages.RawChunk704_719
import InitE.BackendStages.Alloc704
import InitE.BackendStages.Alloc705
import InitE.BackendStages.Alloc706
import InitE.BackendStages.Alloc707
import InitE.BackendStages.Alloc708
import InitE.BackendStages.Alloc709
import InitE.BackendStages.Alloc710
import InitE.BackendStages.Alloc711
import InitE.BackendStages.Alloc712
import InitE.BackendStages.Alloc713
import InitE.BackendStages.Alloc714
import InitE.BackendStages.Alloc715
import InitE.BackendStages.Alloc716
import InitE.BackendStages.Alloc717
import InitE.BackendStages.Alloc718
import InitE.BackendStages.Alloc719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk704_719
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc704, Alloc705, Alloc706, Alloc707, Alloc708, Alloc709, Alloc710, Alloc711, Alloc712, Alloc713, Alloc714, Alloc715, Alloc716, Alloc717, Alloc718, Alloc719]
theorem compiled_eq : RawChunk704_719.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (704, raw704), StackAlloc.progComp (705, raw705), StackAlloc.progComp (706, raw706), StackAlloc.progComp (707, raw707), StackAlloc.progComp (708, raw708), StackAlloc.progComp (709, raw709), StackAlloc.progComp (710, raw710), StackAlloc.progComp (711, raw711), StackAlloc.progComp (712, raw712), StackAlloc.progComp (713, raw713), StackAlloc.progComp (714, raw714), StackAlloc.progComp (715, raw715), StackAlloc.progComp (716, raw716), StackAlloc.progComp (717, raw717), StackAlloc.progComp (718, raw718), StackAlloc.progComp (719, raw719)] = bodies
  rw [Alloc704_eq, Alloc705_eq, Alloc706_eq, Alloc707_eq, Alloc708_eq, Alloc709_eq, Alloc710_eq, Alloc711_eq, Alloc712_eq, Alloc713_eq, Alloc714_eq, Alloc715_eq, Alloc716_eq, Alloc717_eq, Alloc718_eq, Alloc719_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk704_719

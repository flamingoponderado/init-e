import InitE.BackendStages.RawChunk800_815
import InitE.BackendStages.Alloc800
import InitE.BackendStages.Alloc801
import InitE.BackendStages.Alloc802
import InitE.BackendStages.Alloc803
import InitE.BackendStages.Alloc804
import InitE.BackendStages.Alloc805
import InitE.BackendStages.Alloc806
import InitE.BackendStages.Alloc807
import InitE.BackendStages.Alloc808
import InitE.BackendStages.Alloc809
import InitE.BackendStages.Alloc810
import InitE.BackendStages.Alloc811
import InitE.BackendStages.Alloc812
import InitE.BackendStages.Alloc813
import InitE.BackendStages.Alloc814
import InitE.BackendStages.Alloc815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk800_815
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc800, Alloc801, Alloc802, Alloc803, Alloc804, Alloc805, Alloc806, Alloc807, Alloc808, Alloc809, Alloc810, Alloc811, Alloc812, Alloc813, Alloc814, Alloc815]
theorem compiled_eq : RawChunk800_815.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (800, raw800), StackAlloc.progComp (801, raw801), StackAlloc.progComp (802, raw802), StackAlloc.progComp (803, raw803), StackAlloc.progComp (804, raw804), StackAlloc.progComp (805, raw805), StackAlloc.progComp (806, raw806), StackAlloc.progComp (807, raw807), StackAlloc.progComp (808, raw808), StackAlloc.progComp (809, raw809), StackAlloc.progComp (810, raw810), StackAlloc.progComp (811, raw811), StackAlloc.progComp (812, raw812), StackAlloc.progComp (813, raw813), StackAlloc.progComp (814, raw814), StackAlloc.progComp (815, raw815)] = bodies
  rw [Alloc800_eq, Alloc801_eq, Alloc802_eq, Alloc803_eq, Alloc804_eq, Alloc805_eq, Alloc806_eq, Alloc807_eq, Alloc808_eq, Alloc809_eq, Alloc810_eq, Alloc811_eq, Alloc812_eq, Alloc813_eq, Alloc814_eq, Alloc815_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk800_815

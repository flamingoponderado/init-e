import InitE.BackendStages.RawChunk816_831
import InitE.BackendStages.Alloc816
import InitE.BackendStages.Alloc817
import InitE.BackendStages.Alloc818
import InitE.BackendStages.Alloc819
import InitE.BackendStages.Alloc820
import InitE.BackendStages.Alloc821
import InitE.BackendStages.Alloc822
import InitE.BackendStages.Alloc823
import InitE.BackendStages.Alloc824
import InitE.BackendStages.Alloc825
import InitE.BackendStages.Alloc826
import InitE.BackendStages.Alloc827
import InitE.BackendStages.Alloc828
import InitE.BackendStages.Alloc829
import InitE.BackendStages.Alloc830
import InitE.BackendStages.Alloc831
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk816_831
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc816, Alloc817, Alloc818, Alloc819, Alloc820, Alloc821, Alloc822, Alloc823, Alloc824, Alloc825, Alloc826, Alloc827, Alloc828, Alloc829, Alloc830, Alloc831]
theorem compiled_eq : RawChunk816_831.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (816, raw816), StackAlloc.progComp (817, raw817), StackAlloc.progComp (818, raw818), StackAlloc.progComp (819, raw819), StackAlloc.progComp (820, raw820), StackAlloc.progComp (821, raw821), StackAlloc.progComp (822, raw822), StackAlloc.progComp (823, raw823), StackAlloc.progComp (824, raw824), StackAlloc.progComp (825, raw825), StackAlloc.progComp (826, raw826), StackAlloc.progComp (827, raw827), StackAlloc.progComp (828, raw828), StackAlloc.progComp (829, raw829), StackAlloc.progComp (830, raw830), StackAlloc.progComp (831, raw831)] = bodies
  rw [Alloc816_eq, Alloc817_eq, Alloc818_eq, Alloc819_eq, Alloc820_eq, Alloc821_eq, Alloc822_eq, Alloc823_eq, Alloc824_eq, Alloc825_eq, Alloc826_eq, Alloc827_eq, Alloc828_eq, Alloc829_eq, Alloc830_eq, Alloc831_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk816_831

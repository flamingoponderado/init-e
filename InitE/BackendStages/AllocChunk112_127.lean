import InitE.BackendStages.RawChunk112_127
import InitE.BackendStages.Alloc112
import InitE.BackendStages.Alloc113
import InitE.BackendStages.Alloc114
import InitE.BackendStages.Alloc115
import InitE.BackendStages.Alloc116
import InitE.BackendStages.Alloc117
import InitE.BackendStages.Alloc118
import InitE.BackendStages.Alloc119
import InitE.BackendStages.Alloc120
import InitE.BackendStages.Alloc121
import InitE.BackendStages.Alloc122
import InitE.BackendStages.Alloc123
import InitE.BackendStages.Alloc124
import InitE.BackendStages.Alloc125
import InitE.BackendStages.Alloc126
import InitE.BackendStages.Alloc127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk112_127
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc112, Alloc113, Alloc114, Alloc115, Alloc116, Alloc117, Alloc118, Alloc119, Alloc120, Alloc121, Alloc122, Alloc123, Alloc124, Alloc125, Alloc126, Alloc127]
theorem compiled_eq : RawChunk112_127.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (112, raw112), StackAlloc.progComp (113, raw113), StackAlloc.progComp (114, raw114), StackAlloc.progComp (115, raw115), StackAlloc.progComp (116, raw116), StackAlloc.progComp (117, raw117), StackAlloc.progComp (118, raw118), StackAlloc.progComp (119, raw119), StackAlloc.progComp (120, raw120), StackAlloc.progComp (121, raw121), StackAlloc.progComp (122, raw122), StackAlloc.progComp (123, raw123), StackAlloc.progComp (124, raw124), StackAlloc.progComp (125, raw125), StackAlloc.progComp (126, raw126), StackAlloc.progComp (127, raw127)] = bodies
  rw [Alloc112_eq, Alloc113_eq, Alloc114_eq, Alloc115_eq, Alloc116_eq, Alloc117_eq, Alloc118_eq, Alloc119_eq, Alloc120_eq, Alloc121_eq, Alloc122_eq, Alloc123_eq, Alloc124_eq, Alloc125_eq, Alloc126_eq, Alloc127_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk112_127

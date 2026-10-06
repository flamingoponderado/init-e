import InitE.BackendStages.RawChunk560_575
import InitE.BackendStages.Alloc560
import InitE.BackendStages.Alloc561
import InitE.BackendStages.Alloc562
import InitE.BackendStages.Alloc563
import InitE.BackendStages.Alloc564
import InitE.BackendStages.Alloc565
import InitE.BackendStages.Alloc566
import InitE.BackendStages.Alloc567
import InitE.BackendStages.Alloc568
import InitE.BackendStages.Alloc569
import InitE.BackendStages.Alloc570
import InitE.BackendStages.Alloc571
import InitE.BackendStages.Alloc572
import InitE.BackendStages.Alloc573
import InitE.BackendStages.Alloc574
import InitE.BackendStages.Alloc575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk560_575
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc560, Alloc561, Alloc562, Alloc563, Alloc564, Alloc565, Alloc566, Alloc567, Alloc568, Alloc569, Alloc570, Alloc571, Alloc572, Alloc573, Alloc574, Alloc575]
theorem compiled_eq : RawChunk560_575.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (560, raw560), StackAlloc.progComp (561, raw561), StackAlloc.progComp (562, raw562), StackAlloc.progComp (563, raw563), StackAlloc.progComp (564, raw564), StackAlloc.progComp (565, raw565), StackAlloc.progComp (566, raw566), StackAlloc.progComp (567, raw567), StackAlloc.progComp (568, raw568), StackAlloc.progComp (569, raw569), StackAlloc.progComp (570, raw570), StackAlloc.progComp (571, raw571), StackAlloc.progComp (572, raw572), StackAlloc.progComp (573, raw573), StackAlloc.progComp (574, raw574), StackAlloc.progComp (575, raw575)] = bodies
  rw [Alloc560_eq, Alloc561_eq, Alloc562_eq, Alloc563_eq, Alloc564_eq, Alloc565_eq, Alloc566_eq, Alloc567_eq, Alloc568_eq, Alloc569_eq, Alloc570_eq, Alloc571_eq, Alloc572_eq, Alloc573_eq, Alloc574_eq, Alloc575_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk560_575

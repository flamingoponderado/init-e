import InitE.BackendStages.RawChunk576_591
import InitE.BackendStages.Alloc576
import InitE.BackendStages.Alloc577
import InitE.BackendStages.Alloc578
import InitE.BackendStages.Alloc579
import InitE.BackendStages.Alloc580
import InitE.BackendStages.Alloc581
import InitE.BackendStages.Alloc582
import InitE.BackendStages.Alloc583
import InitE.BackendStages.Alloc584
import InitE.BackendStages.Alloc585
import InitE.BackendStages.Alloc586
import InitE.BackendStages.Alloc587
import InitE.BackendStages.Alloc588
import InitE.BackendStages.Alloc589
import InitE.BackendStages.Alloc590
import InitE.BackendStages.Alloc591
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk576_591
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc576, Alloc577, Alloc578, Alloc579, Alloc580, Alloc581, Alloc582, Alloc583, Alloc584, Alloc585, Alloc586, Alloc587, Alloc588, Alloc589, Alloc590, Alloc591]
theorem compiled_eq : RawChunk576_591.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (576, raw576), StackAlloc.progComp (577, raw577), StackAlloc.progComp (578, raw578), StackAlloc.progComp (579, raw579), StackAlloc.progComp (580, raw580), StackAlloc.progComp (581, raw581), StackAlloc.progComp (582, raw582), StackAlloc.progComp (583, raw583), StackAlloc.progComp (584, raw584), StackAlloc.progComp (585, raw585), StackAlloc.progComp (586, raw586), StackAlloc.progComp (587, raw587), StackAlloc.progComp (588, raw588), StackAlloc.progComp (589, raw589), StackAlloc.progComp (590, raw590), StackAlloc.progComp (591, raw591)] = bodies
  rw [Alloc576_eq, Alloc577_eq, Alloc578_eq, Alloc579_eq, Alloc580_eq, Alloc581_eq, Alloc582_eq, Alloc583_eq, Alloc584_eq, Alloc585_eq, Alloc586_eq, Alloc587_eq, Alloc588_eq, Alloc589_eq, Alloc590_eq, Alloc591_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk576_591

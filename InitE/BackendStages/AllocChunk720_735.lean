import InitE.BackendStages.RawChunk720_735
import InitE.BackendStages.Alloc720
import InitE.BackendStages.Alloc721
import InitE.BackendStages.Alloc722
import InitE.BackendStages.Alloc723
import InitE.BackendStages.Alloc724
import InitE.BackendStages.Alloc725
import InitE.BackendStages.Alloc726
import InitE.BackendStages.Alloc727
import InitE.BackendStages.Alloc728
import InitE.BackendStages.Alloc729
import InitE.BackendStages.Alloc730
import InitE.BackendStages.Alloc731
import InitE.BackendStages.Alloc732
import InitE.BackendStages.Alloc733
import InitE.BackendStages.Alloc734
import InitE.BackendStages.Alloc735
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk720_735
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc720, Alloc721, Alloc722, Alloc723, Alloc724, Alloc725, Alloc726, Alloc727, Alloc728, Alloc729, Alloc730, Alloc731, Alloc732, Alloc733, Alloc734, Alloc735]
theorem compiled_eq : RawChunk720_735.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (720, raw720), StackAlloc.progComp (721, raw721), StackAlloc.progComp (722, raw722), StackAlloc.progComp (723, raw723), StackAlloc.progComp (724, raw724), StackAlloc.progComp (725, raw725), StackAlloc.progComp (726, raw726), StackAlloc.progComp (727, raw727), StackAlloc.progComp (728, raw728), StackAlloc.progComp (729, raw729), StackAlloc.progComp (730, raw730), StackAlloc.progComp (731, raw731), StackAlloc.progComp (732, raw732), StackAlloc.progComp (733, raw733), StackAlloc.progComp (734, raw734), StackAlloc.progComp (735, raw735)] = bodies
  rw [Alloc720_eq, Alloc721_eq, Alloc722_eq, Alloc723_eq, Alloc724_eq, Alloc725_eq, Alloc726_eq, Alloc727_eq, Alloc728_eq, Alloc729_eq, Alloc730_eq, Alloc731_eq, Alloc732_eq, Alloc733_eq, Alloc734_eq, Alloc735_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk720_735

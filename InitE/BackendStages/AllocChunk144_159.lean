import InitE.BackendStages.RawChunk144_159
import InitE.BackendStages.Alloc144
import InitE.BackendStages.Alloc145
import InitE.BackendStages.Alloc146
import InitE.BackendStages.Alloc147
import InitE.BackendStages.Alloc148
import InitE.BackendStages.Alloc149
import InitE.BackendStages.Alloc150
import InitE.BackendStages.Alloc151
import InitE.BackendStages.Alloc152
import InitE.BackendStages.Alloc153
import InitE.BackendStages.Alloc154
import InitE.BackendStages.Alloc155
import InitE.BackendStages.Alloc156
import InitE.BackendStages.Alloc157
import InitE.BackendStages.Alloc158
import InitE.BackendStages.Alloc159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.BackendStages.AllocChunk144_159
def bodies : List (Nat × StackLang.HolProg 64) := [Alloc144, Alloc145, Alloc146, Alloc147, Alloc148, Alloc149, Alloc150, Alloc151, Alloc152, Alloc153, Alloc154, Alloc155, Alloc156, Alloc157, Alloc158, Alloc159]
theorem compiled_eq : RawChunk144_159.bodies.map (StackAlloc.progComp) = bodies := by
  change [StackAlloc.progComp (144, raw144), StackAlloc.progComp (145, raw145), StackAlloc.progComp (146, raw146), StackAlloc.progComp (147, raw147), StackAlloc.progComp (148, raw148), StackAlloc.progComp (149, raw149), StackAlloc.progComp (150, raw150), StackAlloc.progComp (151, raw151), StackAlloc.progComp (152, raw152), StackAlloc.progComp (153, raw153), StackAlloc.progComp (154, raw154), StackAlloc.progComp (155, raw155), StackAlloc.progComp (156, raw156), StackAlloc.progComp (157, raw157), StackAlloc.progComp (158, raw158), StackAlloc.progComp (159, raw159)] = bodies
  rw [Alloc144_eq, Alloc145_eq, Alloc146_eq, Alloc147_eq, Alloc148_eq, Alloc149_eq, Alloc150_eq, Alloc151_eq, Alloc152_eq, Alloc153_eq, Alloc154_eq, Alloc155_eq, Alloc156_eq, Alloc157_eq, Alloc158_eq, Alloc159_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.AllocChunk144_159

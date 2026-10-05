import InitE.BackendStages.Chunk512_527
import InitE.BackendStages.Raw512
import InitE.BackendStages.Raw513
import InitE.BackendStages.Raw514
import InitE.BackendStages.Raw515
import InitE.BackendStages.Raw516
import InitE.BackendStages.Raw517
import InitE.BackendStages.Raw518
import InitE.BackendStages.Raw519
import InitE.BackendStages.Raw520
import InitE.BackendStages.Raw521
import InitE.BackendStages.Raw522
import InitE.BackendStages.Raw523
import InitE.BackendStages.Raw524
import InitE.BackendStages.Raw525
import InitE.BackendStages.Raw526
import InitE.BackendStages.Raw527
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.RawChunk512_527
def bodies : List (Nat × StackLang.HolProg 64) := [(512, raw512), (513, raw513), (514, raw514), (515, raw515), (516, raw516), (517, raw517), (518, raw518), (519, raw519), (520, raw520), (521, raw521), (522, raw522), (523, raw523), (524, raw524), (525, raw525), (526, raw526), (527, raw527)]
theorem compiled_eq : Chunk512_527.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(512, StackRawCall.compTop RawInfo.rawInfo (function512 (.list [])).1), (513, StackRawCall.compTop RawInfo.rawInfo (function513 (.list [])).1), (514, StackRawCall.compTop RawInfo.rawInfo (function514 (.list [])).1), (515, StackRawCall.compTop RawInfo.rawInfo (function515 (.list [])).1), (516, StackRawCall.compTop RawInfo.rawInfo (function516 (.list [])).1), (517, StackRawCall.compTop RawInfo.rawInfo (function517 (.list [])).1), (518, StackRawCall.compTop RawInfo.rawInfo (function518 (.list [])).1), (519, StackRawCall.compTop RawInfo.rawInfo (function519 (.list [])).1), (520, StackRawCall.compTop RawInfo.rawInfo (function520 (.list [])).1), (521, StackRawCall.compTop RawInfo.rawInfo (function521 (.list [])).1), (522, StackRawCall.compTop RawInfo.rawInfo (function522 (.list [])).1), (523, StackRawCall.compTop RawInfo.rawInfo (function523 (.list [])).1), (524, StackRawCall.compTop RawInfo.rawInfo (function524 (.list [])).1), (525, StackRawCall.compTop RawInfo.rawInfo (function525 (.list [])).1), (526, StackRawCall.compTop RawInfo.rawInfo (function526 (.list [])).1), (527, StackRawCall.compTop RawInfo.rawInfo (function527 (.list [])).1)] = bodies
  rw [raw512_eq, raw513_eq, raw514_eq, raw515_eq, raw516_eq, raw517_eq, raw518_eq, raw519_eq, raw520_eq, raw521_eq, raw522_eq, raw523_eq, raw524_eq, raw525_eq, raw526_eq, raw527_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RawChunk512_527

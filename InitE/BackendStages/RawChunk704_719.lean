import InitE.BackendStages.Chunk704_719
import InitE.BackendStages.Raw704
import InitE.BackendStages.Raw705
import InitE.BackendStages.Raw706
import InitE.BackendStages.Raw707
import InitE.BackendStages.Raw708
import InitE.BackendStages.Raw709
import InitE.BackendStages.Raw710
import InitE.BackendStages.Raw711
import InitE.BackendStages.Raw712
import InitE.BackendStages.Raw713
import InitE.BackendStages.Raw714
import InitE.BackendStages.Raw715
import InitE.BackendStages.Raw716
import InitE.BackendStages.Raw717
import InitE.BackendStages.Raw718
import InitE.BackendStages.Raw719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.RawChunk704_719
def bodies : List (Nat × StackLang.HolProg 64) := [(704, raw704), (705, raw705), (706, raw706), (707, raw707), (708, raw708), (709, raw709), (710, raw710), (711, raw711), (712, raw712), (713, raw713), (714, raw714), (715, raw715), (716, raw716), (717, raw717), (718, raw718), (719, raw719)]
theorem compiled_eq : Chunk704_719.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = bodies := by
  change [(704, StackRawCall.compTop RawInfo.rawInfo (function704 (.list [])).1), (705, StackRawCall.compTop RawInfo.rawInfo (function705 (.list [])).1), (706, StackRawCall.compTop RawInfo.rawInfo (function706 (.list [])).1), (707, StackRawCall.compTop RawInfo.rawInfo (function707 (.list [])).1), (708, StackRawCall.compTop RawInfo.rawInfo (function708 (.list [])).1), (709, StackRawCall.compTop RawInfo.rawInfo (function709 (.list [])).1), (710, StackRawCall.compTop RawInfo.rawInfo (function710 (.list [])).1), (711, StackRawCall.compTop RawInfo.rawInfo (function711 (.list [])).1), (712, StackRawCall.compTop RawInfo.rawInfo (function712 (.list [])).1), (713, StackRawCall.compTop RawInfo.rawInfo (function713 (.list [])).1), (714, StackRawCall.compTop RawInfo.rawInfo (function714 (.list [])).1), (715, StackRawCall.compTop RawInfo.rawInfo (function715 (.list [])).1), (716, StackRawCall.compTop RawInfo.rawInfo (function716 (.list [])).1), (717, StackRawCall.compTop RawInfo.rawInfo (function717 (.list [])).1), (718, StackRawCall.compTop RawInfo.rawInfo (function718 (.list [])).1), (719, StackRawCall.compTop RawInfo.rawInfo (function719 (.list [])).1)] = bodies
  rw [raw704_eq, raw705_eq, raw706_eq, raw707_eq, raw708_eq, raw709_eq, raw710_eq, raw711_eq, raw712_eq, raw713_eq, raw714_eq, raw715_eq, raw716_eq, raw717_eq, raw718_eq, raw719_eq]
  rfl
#print axioms compiled_eq
end InitE.BackendStages.RawChunk704_719

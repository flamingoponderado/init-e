import InitE.FrontendStages.Word.Checkpoints744.Compose.Chunk005
import InitE.FrontendStages.Word.Checkpoints744.Agreement.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Word.Checkpoints744
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context744 Loop.output744.2.2 (808,2) =
    (InitE.WordStages.sourceBody808_1046, (808, 58)) := by
  have h := node2121_eq
  rw [output2121_source] at h
  exact h
#print axioms compiledBody_eq
end InitE.FrontendStages.Word.Checkpoints744

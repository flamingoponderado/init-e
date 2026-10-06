import InitE.FrontendStages.Word.Checkpoints588.Compose.Chunk003
import InitE.FrontendStages.Word.Checkpoints588.Agreement.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Word.Checkpoints588
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context588 Loop.output588.2.2 (652,2) =
    (InitE.WordStages.sourceBody652_729, (652, 52)) := by
  have h := node1435_eq
  rw [output1435_source] at h
  exact h
#print axioms compiledBody_eq
end InitE.FrontendStages.Word.Checkpoints588

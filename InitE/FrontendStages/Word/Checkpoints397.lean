import InitE.FrontendStages.Word.Checkpoints397.Compose.Chunk005
import InitE.FrontendStages.Word.Checkpoints397.Agreement.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Word.Checkpoints397
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context397 Loop.output397.2.2 (461,2) =
    (InitE.WordStages.sourceBody461_1125, (461, 122)) := by
  have h := node2218_eq
  rw [output2218_source] at h
  exact h
#print axioms compiledBody_eq
end InitE.FrontendStages.Word.Checkpoints397

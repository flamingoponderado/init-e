import InitE.FrontendStages.Word.Checkpoints57.Compose.Chunk002
import InitE.FrontendStages.Word.Checkpoints57.Agreement.Chunk002
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Word.Checkpoints57
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context57 Loop.output57.2.2 (121,2) =
    (InitE.WordStages.sourceBody121_595, (121, 34)) := by
  have h := node1115_eq
  rw [output1115_source] at h
  exact h
#print axioms compiledBody_eq
end InitE.FrontendStages.Word.Checkpoints57

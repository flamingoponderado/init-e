import InitE.FrontendStages.Word.Checkpoints176.Compose.Chunk009
import InitE.FrontendStages.Word.Checkpoints176.Agreement.Chunk009
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Word.Checkpoints176
theorem compiledBody_eq : Flapjack.LoopToWord.compHOL Word.context176 Loop.output176.2.2 (240,2) =
    (InitE.WordStages.sourceBody240_1852, (240, 8)) := by
  have h := node3739_eq
  rw [output3739_source] at h
  exact h
#print axioms compiledBody_eq
end InitE.FrontendStages.Word.Checkpoints176

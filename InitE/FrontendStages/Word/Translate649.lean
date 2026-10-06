import InitE.FrontendStages.Word.Translate633
import InitE.FrontendStages.Word.Checkpoints649

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate649_eq : InitE.WordFrontendComputation.compileEntry Loop.output649 =
    InitE.WordStages.source713 := by
  unfold InitE.WordFrontendComputation.compileEntry
  change (713, 1, loopToWordCompFuncHOL 713 Loop.output649.2.1 Loop.output649.2.2) =
    InitE.WordStages.source713
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context649_eq, Checkpoints649.compiledBody_eq]
  rfl

#print axioms translate649_eq
end InitE.FrontendStages.Word

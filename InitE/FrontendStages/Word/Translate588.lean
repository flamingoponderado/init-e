import InitE.FrontendStages.Word.Translate572
import InitE.FrontendStages.Word.Checkpoints588
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate588_eq : InitE.WordFrontendComputation.compileEntry Loop.output588 =
    InitE.WordStages.source652 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output588.1 = 652 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context588_eq, Checkpoints588.compiledBody_eq]
  rfl
#print axioms translate588_eq
end InitE.FrontendStages.Word

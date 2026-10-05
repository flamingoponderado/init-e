import InitE.FrontendStages.Word.Translate571
import InitE.FrontendStages.Word.Checkpoints587
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate587_eq : InitE.WordFrontendComputation.compileEntry Loop.output587 =
    InitE.WordStages.source651 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output587.1 = 651 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context587_eq, Checkpoints587.compiledBody_eq]
  rfl
#print axioms translate587_eq
end InitE.FrontendStages.Word

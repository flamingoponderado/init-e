import InitE.FrontendStages.Word.Translate728
import InitE.FrontendStages.Word.Checkpoints744
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate744_eq : InitE.WordFrontendComputation.compileEntry Loop.output744 =
    InitE.WordStages.source808 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output744.1 = 808 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context744_eq, Checkpoints744.compiledBody_eq]
  rfl
#print axioms translate744_eq
end InitE.FrontendStages.Word

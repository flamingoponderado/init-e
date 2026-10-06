import InitE.FrontendStages.Word.Translate703
import InitE.FrontendStages.Word.Checkpoints719
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate719_eq : InitE.WordFrontendComputation.compileEntry Loop.output719 =
    InitE.WordStages.source783 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output719.1 = 783 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context719_eq, Checkpoints719.compiledBody_eq]
  rfl
#print axioms translate719_eq
end InitE.FrontendStages.Word

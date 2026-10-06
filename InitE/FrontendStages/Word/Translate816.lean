import InitE.FrontendStages.Word.Translate800
import InitE.FrontendStages.Word.Checkpoints816
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate816_eq : InitE.WordFrontendComputation.compileEntry Loop.output816 =
    InitE.WordStages.source880 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output816.1 = 880 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context816_eq, Checkpoints816.compiledBody_eq]
  rfl
#print axioms translate816_eq
end InitE.FrontendStages.Word

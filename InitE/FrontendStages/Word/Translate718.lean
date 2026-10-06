import InitE.FrontendStages.Word.Translate702
import InitE.FrontendStages.Word.Checkpoints718
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate718_eq : InitE.WordFrontendComputation.compileEntry Loop.output718 =
    InitE.WordStages.source782 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output718.1 = 782 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context718_eq, Checkpoints718.compiledBody_eq]
  rfl
#print axioms translate718_eq
end InitE.FrontendStages.Word

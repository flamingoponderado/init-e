import InitE.FrontendStages.Word.Translate750
import InitE.FrontendStages.Word.Checkpoints766
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate766_eq : InitE.WordFrontendComputation.compileEntry Loop.output766 =
    InitE.WordStages.source830 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output766.1 = 830 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context766_eq, Checkpoints766.compiledBody_eq]
  rfl
#print axioms translate766_eq
end InitE.FrontendStages.Word

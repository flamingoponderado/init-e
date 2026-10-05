import InitE.FrontendStages.Word.Translate566
import InitE.FrontendStages.Word.Checkpoints582
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate582_eq : InitE.WordFrontendComputation.compileEntry Loop.output582 =
    InitE.WordStages.source646 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output582.1 = 646 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context582_eq, Checkpoints582.compiledBody_eq]
  rfl
#print axioms translate582_eq
end InitE.FrontendStages.Word

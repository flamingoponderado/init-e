import InitE.FrontendStages.Word.Translate41
import InitE.FrontendStages.Word.Checkpoints57
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate57_eq : InitE.WordFrontendComputation.compileEntry Loop.output57 =
    InitE.WordStages.source121 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output57.1 = 121 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context57_eq, Checkpoints57.compiledBody_eq]
  rfl
#print axioms translate57_eq
end InitE.FrontendStages.Word

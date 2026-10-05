import InitE.FrontendStages.Word.Translate576
import InitE.FrontendStages.Word.Checkpoints592
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate592_eq : InitE.WordFrontendComputation.compileEntry Loop.output592 =
    InitE.WordStages.source656 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output592.1 = 656 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context592_eq, Checkpoints592.compiledBody_eq]
  rfl
#print axioms translate592_eq
end InitE.FrontendStages.Word

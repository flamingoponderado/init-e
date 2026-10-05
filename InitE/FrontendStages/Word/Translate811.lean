import InitE.FrontendStages.Word.Translate795
import InitE.FrontendStages.Word.Checkpoints811
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate811_eq : InitE.WordFrontendComputation.compileEntry Loop.output811 =
    InitE.WordStages.source875 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output811.1 = 875 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context811_eq, Checkpoints811.compiledBody_eq]
  rfl
#print axioms translate811_eq
end InitE.FrontendStages.Word

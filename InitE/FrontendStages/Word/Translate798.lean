import InitE.FrontendStages.Word.Translate782
import InitE.FrontendStages.Word.Checkpoints798
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate798_eq : InitE.WordFrontendComputation.compileEntry Loop.output798 =
    InitE.WordStages.source862 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output798.1 = 862 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context798_eq, Checkpoints798.compiledBody_eq]
  rfl
#print axioms translate798_eq
end InitE.FrontendStages.Word

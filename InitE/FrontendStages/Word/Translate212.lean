import InitE.FrontendStages.Word.Translate196
import InitE.FrontendStages.Word.Checkpoints212
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate212_eq : InitE.WordFrontendComputation.compileEntry Loop.output212 =
    InitE.WordStages.source276 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output212.1 = 276 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context212_eq, Checkpoints212.compiledBody_eq]
  rfl
#print axioms translate212_eq
end InitE.FrontendStages.Word

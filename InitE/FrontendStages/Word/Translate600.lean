import InitE.FrontendStages.Word.Translate584
import InitE.FrontendStages.Word.Checkpoints600
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate600_eq : InitE.WordFrontendComputation.compileEntry Loop.output600 =
    InitE.WordStages.source664 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output600.1 = 664 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context600_eq, Checkpoints600.compiledBody_eq]
  rfl
#print axioms translate600_eq
end InitE.FrontendStages.Word

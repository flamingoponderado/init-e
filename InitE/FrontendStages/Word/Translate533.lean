import InitE.FrontendStages.Word.Translate517
import InitE.FrontendStages.Word.Checkpoints533
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate533_eq : InitE.WordFrontendComputation.compileEntry Loop.output533 =
    InitE.WordStages.source597 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output533.1 = 597 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context533_eq, Checkpoints533.compiledBody_eq]
  rfl
#print axioms translate533_eq
end InitE.FrontendStages.Word

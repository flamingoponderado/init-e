import InitE.FrontendStages.Word.Translate567
import InitE.FrontendStages.Word.Checkpoints583
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate583_eq : InitE.WordFrontendComputation.compileEntry Loop.output583 =
    InitE.WordStages.source647 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output583.1 = 647 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context583_eq, Checkpoints583.compiledBody_eq]
  rfl
#print axioms translate583_eq
end InitE.FrontendStages.Word

import InitE.FrontendStages.Word.Translate794
import InitE.FrontendStages.Word.Checkpoints810
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate810_eq : InitE.WordFrontendComputation.compileEntry Loop.output810 =
    InitE.WordStages.source874 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output810.1 = 874 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context810_eq, Checkpoints810.compiledBody_eq]
  rfl
#print axioms translate810_eq
end InitE.FrontendStages.Word

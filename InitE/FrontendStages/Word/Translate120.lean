import InitE.FrontendStages.Word.Translate104
import InitE.FrontendStages.Word.Checkpoints120
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate120_eq : InitE.WordFrontendComputation.compileEntry Loop.output120 =
    InitE.WordStages.source184 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output120.1 = 184 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context120_eq, Checkpoints120.compiledBody_eq]
  rfl
#print axioms translate120_eq
end InitE.FrontendStages.Word

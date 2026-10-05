import InitE.FrontendStages.Word.Translate151
import InitE.FrontendStages.Word.Checkpoints167
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate167_eq : InitE.WordFrontendComputation.compileEntry Loop.output167 =
    InitE.WordStages.source231 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output167.1 = 231 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context167_eq, Checkpoints167.compiledBody_eq]
  rfl
#print axioms translate167_eq
end InitE.FrontendStages.Word

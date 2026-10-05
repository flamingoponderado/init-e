import InitE.FrontendStages.Word.Translate153
import InitE.FrontendStages.Word.Checkpoints169
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate169_eq : InitE.WordFrontendComputation.compileEntry Loop.output169 =
    InitE.WordStages.source233 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output169.1 = 233 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context169_eq, Checkpoints169.compiledBody_eq]
  rfl
#print axioms translate169_eq
end InitE.FrontendStages.Word

import InitE.FrontendStages.Word.Translate612
import InitE.FrontendStages.Word.Checkpoints628
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate628_eq : InitE.WordFrontendComputation.compileEntry Loop.output628 =
    InitE.WordStages.source692 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output628.1 = 692 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context628_eq, Checkpoints628.compiledBody_eq]
  rfl
#print axioms translate628_eq
end InitE.FrontendStages.Word

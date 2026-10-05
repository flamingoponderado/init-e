import InitE.FrontendStages.Word.Translate786
import InitE.FrontendStages.Word.Checkpoints802
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
open Flapjack

theorem translate802_eq : InitE.WordFrontendComputation.compileEntry Loop.output802 =
    InitE.WordStages.source866 := by
  unfold InitE.WordFrontendComputation.compileEntry
  have name_eq : Loop.output802.1 = 866 := by rfl
  simp only [name_eq]
  unfold loopToWordCompFuncHOL
  dsimp only
  rw [context802_eq, Checkpoints802.compiledBody_eq]
  rfl
#print axioms translate802_eq
end InitE.FrontendStages.Word

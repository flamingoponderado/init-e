import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data80
import InitE.WordStages.Source144
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate64
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate80_eq : InitE.WordFrontendComputation.compileEntry Loop.output80 =
    InitE.WordStages.source144 := by
  kernel_rfl
#print axioms translate80_eq
end InitE.FrontendStages.Word

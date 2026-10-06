import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data565
import InitE.WordStages.Source629
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate549
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate565_eq : InitE.WordFrontendComputation.compileEntry Loop.output565 =
    InitE.WordStages.source629 := by
  kernel_rfl
#print axioms translate565_eq
end InitE.FrontendStages.Word

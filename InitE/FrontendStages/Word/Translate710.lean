import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data710
import InitE.WordStages.Source774
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate694
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate710_eq : InitE.WordFrontendComputation.compileEntry Loop.output710 =
    InitE.WordStages.source774 := by
  kernel_rfl
#print axioms translate710_eq
end InitE.FrontendStages.Word

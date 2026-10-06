import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data146
import InitE.WordStages.Source210
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate130
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate146_eq : InitE.WordFrontendComputation.compileEntry Loop.output146 =
    InitE.WordStages.source210 := by
  kernel_rfl
#print axioms translate146_eq
end InitE.FrontendStages.Word

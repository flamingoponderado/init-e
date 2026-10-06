import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data107
import InitE.WordStages.Source171
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate91
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate107_eq : InitE.WordFrontendComputation.compileEntry Loop.output107 =
    InitE.WordStages.source171 := by
  kernel_rfl
#print axioms translate107_eq
end InitE.FrontendStages.Word

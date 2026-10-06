import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data254
import InitE.WordStages.Source318
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate238
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate254_eq : InitE.WordFrontendComputation.compileEntry Loop.output254 =
    InitE.WordStages.source318 := by
  kernel_rfl
#print axioms translate254_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data225
import InitE.WordStages.Source289
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate209
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate225_eq : InitE.WordFrontendComputation.compileEntry Loop.output225 =
    InitE.WordStages.source289 := by
  kernel_rfl
#print axioms translate225_eq
end InitE.FrontendStages.Word

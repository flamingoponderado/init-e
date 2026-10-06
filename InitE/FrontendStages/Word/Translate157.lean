import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data157
import InitE.WordStages.Source221
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate141
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate157_eq : InitE.WordFrontendComputation.compileEntry Loop.output157 =
    InitE.WordStages.source221 := by
  kernel_rfl
#print axioms translate157_eq
end InitE.FrontendStages.Word

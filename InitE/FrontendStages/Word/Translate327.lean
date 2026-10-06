import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data327
import InitE.WordStages.Source391
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate311
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate327_eq : InitE.WordFrontendComputation.compileEntry Loop.output327 =
    InitE.WordStages.source391 := by
  kernel_rfl
#print axioms translate327_eq
end InitE.FrontendStages.Word

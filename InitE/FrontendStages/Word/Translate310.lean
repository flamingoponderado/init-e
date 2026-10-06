import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data310
import InitE.WordStages.Source374
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate294
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate310_eq : InitE.WordFrontendComputation.compileEntry Loop.output310 =
    InitE.WordStages.source374 := by
  kernel_rfl
#print axioms translate310_eq
end InitE.FrontendStages.Word

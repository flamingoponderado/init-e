import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data244
import InitE.WordStages.Source308
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate228
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate244_eq : InitE.WordFrontendComputation.compileEntry Loop.output244 =
    InitE.WordStages.source308 := by
  kernel_rfl
#print axioms translate244_eq
end InitE.FrontendStages.Word

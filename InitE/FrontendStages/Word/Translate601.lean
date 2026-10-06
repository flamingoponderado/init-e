import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data601
import InitE.WordStages.Source665
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate585
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate601_eq : InitE.WordFrontendComputation.compileEntry Loop.output601 =
    InitE.WordStages.source665 := by
  kernel_rfl
#print axioms translate601_eq
end InitE.FrontendStages.Word

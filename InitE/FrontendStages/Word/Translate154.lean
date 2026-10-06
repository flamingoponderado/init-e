import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data154
import InitE.WordStages.Source218
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate138
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate154_eq : InitE.WordFrontendComputation.compileEntry Loop.output154 =
    InitE.WordStages.source218 := by
  kernel_rfl
#print axioms translate154_eq
end InitE.FrontendStages.Word

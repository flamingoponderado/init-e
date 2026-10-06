import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data201
import InitE.WordStages.Source265
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate185
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate201_eq : InitE.WordFrontendComputation.compileEntry Loop.output201 =
    InitE.WordStages.source265 := by
  kernel_rfl
#print axioms translate201_eq
end InitE.FrontendStages.Word

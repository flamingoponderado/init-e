import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data257
import InitE.WordStages.Source321
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate241
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate257_eq : InitE.WordFrontendComputation.compileEntry Loop.output257 =
    InitE.WordStages.source321 := by
  kernel_rfl
#print axioms translate257_eq
end InitE.FrontendStages.Word

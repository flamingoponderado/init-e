import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data773
import InitE.WordStages.Source837
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate757
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate773_eq : InitE.WordFrontendComputation.compileEntry Loop.output773 =
    InitE.WordStages.source837 := by
  kernel_rfl
#print axioms translate773_eq
end InitE.FrontendStages.Word

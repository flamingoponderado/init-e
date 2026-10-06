import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data707
import InitE.WordStages.Source771
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate691
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate707_eq : InitE.WordFrontendComputation.compileEntry Loop.output707 =
    InitE.WordStages.source771 := by
  kernel_rfl
#print axioms translate707_eq
end InitE.FrontendStages.Word

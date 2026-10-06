import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data797
import InitE.WordStages.Source861
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate781
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate797_eq : InitE.WordFrontendComputation.compileEntry Loop.output797 =
    InitE.WordStages.source861 := by
  kernel_rfl
#print axioms translate797_eq
end InitE.FrontendStages.Word

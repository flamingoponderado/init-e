import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data771
import InitE.WordStages.Source835
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate755
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate771_eq : InitE.WordFrontendComputation.compileEntry Loop.output771 =
    InitE.WordStages.source835 := by
  kernel_rfl
#print axioms translate771_eq
end InitE.FrontendStages.Word

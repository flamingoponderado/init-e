import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data174
import InitE.WordStages.Source238
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate158
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate174_eq : InitE.WordFrontendComputation.compileEntry Loop.output174 =
    InitE.WordStages.source238 := by
  kernel_rfl
#print axioms translate174_eq
end InitE.FrontendStages.Word

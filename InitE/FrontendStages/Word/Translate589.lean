import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data589
import InitE.WordStages.Source653
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate573
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate589_eq : InitE.WordFrontendComputation.compileEntry Loop.output589 =
    InitE.WordStages.source653 := by
  kernel_rfl
#print axioms translate589_eq
end InitE.FrontendStages.Word

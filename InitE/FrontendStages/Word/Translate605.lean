import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data605
import InitE.WordStages.Source669
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate589
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate605_eq : InitE.WordFrontendComputation.compileEntry Loop.output605 =
    InitE.WordStages.source669 := by
  kernel_rfl
#print axioms translate605_eq
end InitE.FrontendStages.Word

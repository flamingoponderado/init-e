import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data578
import InitE.WordStages.Source642
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate562
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate578_eq : InitE.WordFrontendComputation.compileEntry Loop.output578 =
    InitE.WordStages.source642 := by
  kernel_rfl
#print axioms translate578_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data509
import InitE.WordStages.Source573
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate493
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate509_eq : InitE.WordFrontendComputation.compileEntry Loop.output509 =
    InitE.WordStages.source573 := by
  kernel_rfl
#print axioms translate509_eq
end InitE.FrontendStages.Word

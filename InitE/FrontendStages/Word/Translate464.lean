import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data464
import InitE.WordStages.Source528
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate448
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate464_eq : InitE.WordFrontendComputation.compileEntry Loop.output464 =
    InitE.WordStages.source528 := by
  kernel_rfl
#print axioms translate464_eq
end InitE.FrontendStages.Word

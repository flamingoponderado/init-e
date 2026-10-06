import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data604
import InitE.WordStages.Source668
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate588
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate604_eq : InitE.WordFrontendComputation.compileEntry Loop.output604 =
    InitE.WordStages.source668 := by
  kernel_rfl
#print axioms translate604_eq
end InitE.FrontendStages.Word

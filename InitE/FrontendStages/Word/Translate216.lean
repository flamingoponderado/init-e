import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data216
import InitE.WordStages.Source280
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate200
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate216_eq : InitE.WordFrontendComputation.compileEntry Loop.output216 =
    InitE.WordStages.source280 := by
  kernel_rfl
#print axioms translate216_eq
end InitE.FrontendStages.Word

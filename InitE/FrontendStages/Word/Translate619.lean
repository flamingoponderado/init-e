import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data619
import InitE.WordStages.Source683
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate603
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate619_eq : InitE.WordFrontendComputation.compileEntry Loop.output619 =
    InitE.WordStages.source683 := by
  kernel_rfl
#print axioms translate619_eq
end InitE.FrontendStages.Word

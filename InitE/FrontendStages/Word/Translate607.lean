import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data607
import InitE.WordStages.Source671
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate591
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate607_eq : InitE.WordFrontendComputation.compileEntry Loop.output607 =
    InitE.WordStages.source671 := by
  kernel_rfl
#print axioms translate607_eq
end InitE.FrontendStages.Word

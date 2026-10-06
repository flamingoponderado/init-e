import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data581
import InitE.WordStages.Source645
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate565
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate581_eq : InitE.WordFrontendComputation.compileEntry Loop.output581 =
    InitE.WordStages.source645 := by
  kernel_rfl
#print axioms translate581_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data193
import InitE.WordStages.Source257
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate177
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate193_eq : InitE.WordFrontendComputation.compileEntry Loop.output193 =
    InitE.WordStages.source257 := by
  kernel_rfl
#print axioms translate193_eq
end InitE.FrontendStages.Word

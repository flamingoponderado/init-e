import InitE.FrontendStages.Loop.Data298
import InitE.WordStages.Source362
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate282
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate298_eq : InitE.WordFrontendComputation.compileEntry Loop.output298 =
    InitE.WordStages.source362 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate298_eq
end InitE.FrontendStages.Word

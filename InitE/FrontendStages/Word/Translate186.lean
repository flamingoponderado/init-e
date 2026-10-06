import InitE.FrontendStages.Loop.Data186
import InitE.WordStages.Source250
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate170
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate186_eq : InitE.WordFrontendComputation.compileEntry Loop.output186 =
    InitE.WordStages.source250 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate186_eq
end InitE.FrontendStages.Word

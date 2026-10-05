import InitE.FrontendStages.Loop.Data343
import InitE.WordStages.Source407
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate327
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate343_eq : InitE.WordFrontendComputation.compileEntry Loop.output343 =
    InitE.WordStages.source407 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate343_eq
end InitE.FrontendStages.Word

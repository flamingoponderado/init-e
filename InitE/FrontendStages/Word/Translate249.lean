import InitE.FrontendStages.Loop.Data249
import InitE.WordStages.Source313
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate233
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate249_eq : InitE.WordFrontendComputation.compileEntry Loop.output249 =
    InitE.WordStages.source313 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate249_eq
end InitE.FrontendStages.Word

import InitE.FrontendStages.Loop.Data764
import InitE.WordStages.Source828
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate748
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate764_eq : InitE.WordFrontendComputation.compileEntry Loop.output764 =
    InitE.WordStages.source828 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate764_eq
end InitE.FrontendStages.Word

import InitE.FrontendStages.Loop.Data265
import InitE.WordStages.Source329
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate249
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate265_eq : InitE.WordFrontendComputation.compileEntry Loop.output265 =
    InitE.WordStages.source329 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate265_eq
end InitE.FrontendStages.Word

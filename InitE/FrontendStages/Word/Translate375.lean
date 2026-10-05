import InitE.FrontendStages.Loop.Data375
import InitE.WordStages.Source439
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate359
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate375_eq : InitE.WordFrontendComputation.compileEntry Loop.output375 =
    InitE.WordStages.source439 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate375_eq
end InitE.FrontendStages.Word

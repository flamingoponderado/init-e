import InitE.FrontendStages.Loop.Data112
import InitE.WordStages.Source176
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate96
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate112_eq : InitE.WordFrontendComputation.compileEntry Loop.output112 =
    InitE.WordStages.source176 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate112_eq
end InitE.FrontendStages.Word

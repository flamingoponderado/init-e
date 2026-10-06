import InitE.FrontendStages.Loop.Data81
import InitE.WordStages.Source145
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate65
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate81_eq : InitE.WordFrontendComputation.compileEntry Loop.output81 =
    InitE.WordStages.source145 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate81_eq
end InitE.FrontendStages.Word

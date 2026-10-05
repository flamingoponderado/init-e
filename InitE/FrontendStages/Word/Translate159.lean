import InitE.FrontendStages.Loop.Data159
import InitE.WordStages.Source223
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate143
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate159_eq : InitE.WordFrontendComputation.compileEntry Loop.output159 =
    InitE.WordStages.source223 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate159_eq
end InitE.FrontendStages.Word

import InitE.FrontendStages.Loop.Data115
import InitE.WordStages.Source179
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate99
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate115_eq : InitE.WordFrontendComputation.compileEntry Loop.output115 =
    InitE.WordStages.source179 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate115_eq
end InitE.FrontendStages.Word

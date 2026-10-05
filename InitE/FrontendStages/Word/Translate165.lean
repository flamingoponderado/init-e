import InitE.FrontendStages.Loop.Data165
import InitE.WordStages.Source229
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate149
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate165_eq : InitE.WordFrontendComputation.compileEntry Loop.output165 =
    InitE.WordStages.source229 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate165_eq
end InitE.FrontendStages.Word

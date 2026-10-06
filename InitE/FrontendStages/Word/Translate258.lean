import InitE.FrontendStages.Loop.Data258
import InitE.WordStages.Source322
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate242
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate258_eq : InitE.WordFrontendComputation.compileEntry Loop.output258 =
    InitE.WordStages.source322 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate258_eq
end InitE.FrontendStages.Word

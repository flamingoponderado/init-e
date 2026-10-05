import InitE.FrontendStages.Loop.Data513
import InitE.WordStages.Source577
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate497
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate513_eq : InitE.WordFrontendComputation.compileEntry Loop.output513 =
    InitE.WordStages.source577 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate513_eq
end InitE.FrontendStages.Word

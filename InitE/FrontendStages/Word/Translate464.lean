import InitE.FrontendStages.Loop.Data464
import InitE.WordStages.Source528
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate448
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate464_eq : InitE.WordFrontendComputation.compileEntry Loop.output464 =
    InitE.WordStages.source528 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate464_eq
end InitE.FrontendStages.Word

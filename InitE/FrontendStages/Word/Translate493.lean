import InitE.FrontendStages.Loop.Data493
import InitE.WordStages.Source557
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate477
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate493_eq : InitE.WordFrontendComputation.compileEntry Loop.output493 =
    InitE.WordStages.source557 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate493_eq
end InitE.FrontendStages.Word

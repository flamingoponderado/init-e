import InitE.FrontendStages.Loop.Data714
import InitE.WordStages.Source778
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate698
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate714_eq : InitE.WordFrontendComputation.compileEntry Loop.output714 =
    InitE.WordStages.source778 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate714_eq
end InitE.FrontendStages.Word

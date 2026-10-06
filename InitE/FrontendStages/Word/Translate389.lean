import InitE.FrontendStages.Loop.Data389
import InitE.WordStages.Source453
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate373
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate389_eq : InitE.WordFrontendComputation.compileEntry Loop.output389 =
    InitE.WordStages.source453 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate389_eq
end InitE.FrontendStages.Word

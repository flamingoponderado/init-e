import InitE.FrontendStages.Loop.Data477
import InitE.WordStages.Source541
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate461
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate477_eq : InitE.WordFrontendComputation.compileEntry Loop.output477 =
    InitE.WordStages.source541 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate477_eq
end InitE.FrontendStages.Word

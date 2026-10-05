import InitE.FrontendStages.Loop.Data491
import InitE.WordStages.Source555
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate475
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate491_eq : InitE.WordFrontendComputation.compileEntry Loop.output491 =
    InitE.WordStages.source555 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate491_eq
end InitE.FrontendStages.Word

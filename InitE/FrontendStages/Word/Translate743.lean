import InitE.FrontendStages.Loop.Data743
import InitE.WordStages.Source807
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate727
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate743_eq : InitE.WordFrontendComputation.compileEntry Loop.output743 =
    InitE.WordStages.source807 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate743_eq
end InitE.FrontendStages.Word

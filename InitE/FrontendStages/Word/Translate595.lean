import InitE.FrontendStages.Loop.Data595
import InitE.WordStages.Source659
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate579
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate595_eq : InitE.WordFrontendComputation.compileEntry Loop.output595 =
    InitE.WordStages.source659 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate595_eq
end InitE.FrontendStages.Word

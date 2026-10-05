import InitE.FrontendStages.Loop.Data553
import InitE.WordStages.Source617
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate537
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate553_eq : InitE.WordFrontendComputation.compileEntry Loop.output553 =
    InitE.WordStages.source617 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate553_eq
end InitE.FrontendStages.Word

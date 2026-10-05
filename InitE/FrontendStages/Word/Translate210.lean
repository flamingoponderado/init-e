import InitE.FrontendStages.Loop.Data210
import InitE.WordStages.Source274
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate194
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate210_eq : InitE.WordFrontendComputation.compileEntry Loop.output210 =
    InitE.WordStages.source274 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate210_eq
end InitE.FrontendStages.Word

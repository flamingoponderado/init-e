import InitE.FrontendStages.Loop.Data208
import InitE.WordStages.Source272
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate192
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate208_eq : InitE.WordFrontendComputation.compileEntry Loop.output208 =
    InitE.WordStages.source272 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate208_eq
end InitE.FrontendStages.Word

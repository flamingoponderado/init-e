import InitE.FrontendStages.Loop.Data276
import InitE.WordStages.Source340
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate260
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate276_eq : InitE.WordFrontendComputation.compileEntry Loop.output276 =
    InitE.WordStages.source340 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate276_eq
end InitE.FrontendStages.Word

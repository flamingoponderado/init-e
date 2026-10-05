import InitE.FrontendStages.Loop.Data219
import InitE.WordStages.Source283
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate203
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate219_eq : InitE.WordFrontendComputation.compileEntry Loop.output219 =
    InitE.WordStages.source283 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate219_eq
end InitE.FrontendStages.Word

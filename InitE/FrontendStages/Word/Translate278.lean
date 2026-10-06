import InitE.FrontendStages.Loop.Data278
import InitE.WordStages.Source342
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate262
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate278_eq : InitE.WordFrontendComputation.compileEntry Loop.output278 =
    InitE.WordStages.source342 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate278_eq
end InitE.FrontendStages.Word

import InitE.FrontendStages.Loop.Data407
import InitE.WordStages.Source471
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate391
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate407_eq : InitE.WordFrontendComputation.compileEntry Loop.output407 =
    InitE.WordStages.source471 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate407_eq
end InitE.FrontendStages.Word

import InitE.FrontendStages.Loop.Data639
import InitE.WordStages.Source703
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate623
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate639_eq : InitE.WordFrontendComputation.compileEntry Loop.output639 =
    InitE.WordStages.source703 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate639_eq
end InitE.FrontendStages.Word

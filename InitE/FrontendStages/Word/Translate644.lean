import InitE.FrontendStages.Loop.Data644
import InitE.WordStages.Source708
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate628
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate644_eq : InitE.WordFrontendComputation.compileEntry Loop.output644 =
    InitE.WordStages.source708 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate644_eq
end InitE.FrontendStages.Word

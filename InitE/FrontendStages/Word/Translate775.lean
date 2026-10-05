import InitE.FrontendStages.Loop.Data775
import InitE.WordStages.Source839
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate759
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate775_eq : InitE.WordFrontendComputation.compileEntry Loop.output775 =
    InitE.WordStages.source839 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate775_eq
end InitE.FrontendStages.Word

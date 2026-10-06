import InitE.FrontendStages.Loop.Data612
import InitE.WordStages.Source676
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate596
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate612_eq : InitE.WordFrontendComputation.compileEntry Loop.output612 =
    InitE.WordStages.source676 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate612_eq
end InitE.FrontendStages.Word

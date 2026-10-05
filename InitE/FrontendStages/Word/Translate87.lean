import InitE.FrontendStages.Loop.Data87
import InitE.WordStages.Source151
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate71
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate87_eq : InitE.WordFrontendComputation.compileEntry Loop.output87 =
    InitE.WordStages.source151 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate87_eq
end InitE.FrontendStages.Word

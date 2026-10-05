import InitE.FrontendStages.Loop.Data723
import InitE.WordStages.Source787
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate707
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate723_eq : InitE.WordFrontendComputation.compileEntry Loop.output723 =
    InitE.WordStages.source787 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate723_eq
end InitE.FrontendStages.Word

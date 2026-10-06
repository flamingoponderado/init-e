import InitE.FrontendStages.Loop.Data148
import InitE.WordStages.Source212
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate132
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate148_eq : InitE.WordFrontendComputation.compileEntry Loop.output148 =
    InitE.WordStages.source212 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate148_eq
end InitE.FrontendStages.Word

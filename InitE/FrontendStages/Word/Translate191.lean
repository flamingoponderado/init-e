import InitE.FrontendStages.Loop.Data191
import InitE.WordStages.Source255
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate175
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate191_eq : InitE.WordFrontendComputation.compileEntry Loop.output191 =
    InitE.WordStages.source255 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate191_eq
end InitE.FrontendStages.Word

import InitE.FrontendStages.Loop.Data313
import InitE.WordStages.Source377
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate297
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate313_eq : InitE.WordFrontendComputation.compileEntry Loop.output313 =
    InitE.WordStages.source377 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate313_eq
end InitE.FrontendStages.Word

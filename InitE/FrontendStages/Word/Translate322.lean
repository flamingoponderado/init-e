import InitE.FrontendStages.Loop.Data322
import InitE.WordStages.Source386
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate306
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate322_eq : InitE.WordFrontendComputation.compileEntry Loop.output322 =
    InitE.WordStages.source386 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate322_eq
end InitE.FrontendStages.Word

import InitE.FrontendStages.Loop.Data434
import InitE.WordStages.Source498
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate418
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate434_eq : InitE.WordFrontendComputation.compileEntry Loop.output434 =
    InitE.WordStages.source498 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate434_eq
end InitE.FrontendStages.Word

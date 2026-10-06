import InitE.FrontendStages.Loop.Data442
import InitE.WordStages.Source506
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate426
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate442_eq : InitE.WordFrontendComputation.compileEntry Loop.output442 =
    InitE.WordStages.source506 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate442_eq
end InitE.FrontendStages.Word

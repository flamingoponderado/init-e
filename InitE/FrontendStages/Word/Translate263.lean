import InitE.FrontendStages.Loop.Data263
import InitE.WordStages.Source327
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate247
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate263_eq : InitE.WordFrontendComputation.compileEntry Loop.output263 =
    InitE.WordStages.source327 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate263_eq
end InitE.FrontendStages.Word

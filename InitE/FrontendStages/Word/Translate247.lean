import InitE.FrontendStages.Loop.Data247
import InitE.WordStages.Source311
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate231
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate247_eq : InitE.WordFrontendComputation.compileEntry Loop.output247 =
    InitE.WordStages.source311 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate247_eq
end InitE.FrontendStages.Word

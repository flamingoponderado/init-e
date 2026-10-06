import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data289
import InitE.WordStages.Source353
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate273
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate289_eq : InitE.WordFrontendComputation.compileEntry Loop.output289 =
    InitE.WordStages.source353 := by
  kernel_rfl
#print axioms translate289_eq
end InitE.FrontendStages.Word

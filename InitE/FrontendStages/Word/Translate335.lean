import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data335
import InitE.WordStages.Source399
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate319
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate335_eq : InitE.WordFrontendComputation.compileEntry Loop.output335 =
    InitE.WordStages.source399 := by
  kernel_rfl
#print axioms translate335_eq
end InitE.FrontendStages.Word

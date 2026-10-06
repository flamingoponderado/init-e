import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data339
import InitE.WordStages.Source403
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate323
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate339_eq : InitE.WordFrontendComputation.compileEntry Loop.output339 =
    InitE.WordStages.source403 := by
  kernel_rfl
#print axioms translate339_eq
end InitE.FrontendStages.Word

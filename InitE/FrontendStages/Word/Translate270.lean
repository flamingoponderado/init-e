import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data270
import InitE.WordStages.Source334
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate254
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate270_eq : InitE.WordFrontendComputation.compileEntry Loop.output270 =
    InitE.WordStages.source334 := by
  kernel_rfl
#print axioms translate270_eq
end InitE.FrontendStages.Word

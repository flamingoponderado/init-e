import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data319
import InitE.WordStages.Source383
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate303
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate319_eq : InitE.WordFrontendComputation.compileEntry Loop.output319 =
    InitE.WordStages.source383 := by
  kernel_rfl
#print axioms translate319_eq
end InitE.FrontendStages.Word

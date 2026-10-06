import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data458
import InitE.WordStages.Source522
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate442
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate458_eq : InitE.WordFrontendComputation.compileEntry Loop.output458 =
    InitE.WordStages.source522 := by
  kernel_rfl
#print axioms translate458_eq
end InitE.FrontendStages.Word

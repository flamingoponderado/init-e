import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data523
import InitE.WordStages.Source587
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate507
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate523_eq : InitE.WordFrontendComputation.compileEntry Loop.output523 =
    InitE.WordStages.source587 := by
  kernel_rfl
#print axioms translate523_eq
end InitE.FrontendStages.Word

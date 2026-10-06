import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data450
import InitE.WordStages.Source514
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate434
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate450_eq : InitE.WordFrontendComputation.compileEntry Loop.output450 =
    InitE.WordStages.source514 := by
  kernel_rfl
#print axioms translate450_eq
end InitE.FrontendStages.Word

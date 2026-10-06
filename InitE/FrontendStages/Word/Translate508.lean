import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data508
import InitE.WordStages.Source572
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate492
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate508_eq : InitE.WordFrontendComputation.compileEntry Loop.output508 =
    InitE.WordStages.source572 := by
  kernel_rfl
#print axioms translate508_eq
end InitE.FrontendStages.Word

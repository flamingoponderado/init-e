import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data326
import InitE.WordStages.Source390
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate310
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate326_eq : InitE.WordFrontendComputation.compileEntry Loop.output326 =
    InitE.WordStages.source390 := by
  kernel_rfl
#print axioms translate326_eq
end InitE.FrontendStages.Word

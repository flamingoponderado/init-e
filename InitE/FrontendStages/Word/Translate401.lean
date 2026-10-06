import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data401
import InitE.WordStages.Source465
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate385
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate401_eq : InitE.WordFrontendComputation.compileEntry Loop.output401 =
    InitE.WordStages.source465 := by
  kernel_rfl
#print axioms translate401_eq
end InitE.FrontendStages.Word

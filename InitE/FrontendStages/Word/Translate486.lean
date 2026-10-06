import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data486
import InitE.WordStages.Source550
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate470
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate486_eq : InitE.WordFrontendComputation.compileEntry Loop.output486 =
    InitE.WordStages.source550 := by
  kernel_rfl
#print axioms translate486_eq
end InitE.FrontendStages.Word

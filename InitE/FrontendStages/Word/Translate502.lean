import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data502
import InitE.WordStages.Source566
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate486
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate502_eq : InitE.WordFrontendComputation.compileEntry Loop.output502 =
    InitE.WordStages.source566 := by
  kernel_rfl
#print axioms translate502_eq
end InitE.FrontendStages.Word

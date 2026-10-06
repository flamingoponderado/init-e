import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data750
import InitE.WordStages.Source814
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate734
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate750_eq : InitE.WordFrontendComputation.compileEntry Loop.output750 =
    InitE.WordStages.source814 := by
  kernel_rfl
#print axioms translate750_eq
end InitE.FrontendStages.Word

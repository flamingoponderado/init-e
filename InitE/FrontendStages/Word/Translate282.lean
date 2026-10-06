import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data282
import InitE.WordStages.Source346
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate266
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate282_eq : InitE.WordFrontendComputation.compileEntry Loop.output282 =
    InitE.WordStages.source346 := by
  kernel_rfl
#print axioms translate282_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data92
import InitE.WordStages.Source156
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate76
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate92_eq : InitE.WordFrontendComputation.compileEntry Loop.output92 =
    InitE.WordStages.source156 := by
  kernel_rfl
#print axioms translate92_eq
end InitE.FrontendStages.Word

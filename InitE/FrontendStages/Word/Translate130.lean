import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data130
import InitE.WordStages.Source194
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate114
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate130_eq : InitE.WordFrontendComputation.compileEntry Loop.output130 =
    InitE.WordStages.source194 := by
  kernel_rfl
#print axioms translate130_eq
end InitE.FrontendStages.Word

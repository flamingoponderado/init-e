import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data31
import InitE.WordStages.Source95
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate15
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate31_eq : InitE.WordFrontendComputation.compileEntry Loop.output31 =
    InitE.WordStages.source95 := by
  kernel_rfl
#print axioms translate31_eq
end InitE.FrontendStages.Word

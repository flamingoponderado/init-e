import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data170
import InitE.WordStages.Source234
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate154
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate170_eq : InitE.WordFrontendComputation.compileEntry Loop.output170 =
    InitE.WordStages.source234 := by
  kernel_rfl
#print axioms translate170_eq
end InitE.FrontendStages.Word

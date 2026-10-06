import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data238
import InitE.WordStages.Source302
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate222
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate238_eq : InitE.WordFrontendComputation.compileEntry Loop.output238 =
    InitE.WordStages.source302 := by
  kernel_rfl
#print axioms translate238_eq
end InitE.FrontendStages.Word

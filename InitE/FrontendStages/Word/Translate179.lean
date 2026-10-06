import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data179
import InitE.WordStages.Source243
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate163
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate179_eq : InitE.WordFrontendComputation.compileEntry Loop.output179 =
    InitE.WordStages.source243 := by
  kernel_rfl
#print axioms translate179_eq
end InitE.FrontendStages.Word

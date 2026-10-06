import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data153
import InitE.WordStages.Source217
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate137
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate153_eq : InitE.WordFrontendComputation.compileEntry Loop.output153 =
    InitE.WordStages.source217 := by
  kernel_rfl
#print axioms translate153_eq
end InitE.FrontendStages.Word

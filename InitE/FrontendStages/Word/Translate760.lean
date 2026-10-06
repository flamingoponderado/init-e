import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data760
import InitE.WordStages.Source824
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate744
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate760_eq : InitE.WordFrontendComputation.compileEntry Loop.output760 =
    InitE.WordStages.source824 := by
  kernel_rfl
#print axioms translate760_eq
end InitE.FrontendStages.Word

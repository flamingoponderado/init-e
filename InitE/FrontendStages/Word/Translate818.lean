import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data818
import InitE.WordStages.Source882
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate802
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate818_eq : InitE.WordFrontendComputation.compileEntry Loop.output818 =
    InitE.WordStages.source882 := by
  kernel_rfl
#print axioms translate818_eq
end InitE.FrontendStages.Word

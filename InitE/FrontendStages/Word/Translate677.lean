import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data677
import InitE.WordStages.Source741
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate661
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate677_eq : InitE.WordFrontendComputation.compileEntry Loop.output677 =
    InitE.WordStages.source741 := by
  kernel_rfl
#print axioms translate677_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data67
import InitE.WordStages.Source131
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate51
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate67_eq : InitE.WordFrontendComputation.compileEntry Loop.output67 =
    InitE.WordStages.source131 := by
  kernel_rfl
#print axioms translate67_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data778
import InitE.WordStages.Source842
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate762
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate778_eq : InitE.WordFrontendComputation.compileEntry Loop.output778 =
    InitE.WordStages.source842 := by
  kernel_rfl
#print axioms translate778_eq
end InitE.FrontendStages.Word

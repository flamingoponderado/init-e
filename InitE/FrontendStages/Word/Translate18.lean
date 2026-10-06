import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data18
import InitE.WordStages.Source82
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate2
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate18_eq : InitE.WordFrontendComputation.compileEntry Loop.output18 =
    InitE.WordStages.source82 := by
  kernel_rfl
#print axioms translate18_eq
end InitE.FrontendStages.Word

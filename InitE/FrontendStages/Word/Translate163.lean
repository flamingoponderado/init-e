import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data163
import InitE.WordStages.Source227
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate147
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate163_eq : InitE.WordFrontendComputation.compileEntry Loop.output163 =
    InitE.WordStages.source227 := by
  kernel_rfl
#print axioms translate163_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data177
import InitE.WordStages.Source241
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate161
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate177_eq : InitE.WordFrontendComputation.compileEntry Loop.output177 =
    InitE.WordStages.source241 := by
  kernel_rfl
#print axioms translate177_eq
end InitE.FrontendStages.Word

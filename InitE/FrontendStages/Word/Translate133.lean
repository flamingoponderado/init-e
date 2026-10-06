import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data133
import InitE.WordStages.Source197
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate117
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate133_eq : InitE.WordFrontendComputation.compileEntry Loop.output133 =
    InitE.WordStages.source197 := by
  kernel_rfl
#print axioms translate133_eq
end InitE.FrontendStages.Word

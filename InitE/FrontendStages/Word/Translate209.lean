import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data209
import InitE.WordStages.Source273
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate193
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate209_eq : InitE.WordFrontendComputation.compileEntry Loop.output209 =
    InitE.WordStages.source273 := by
  kernel_rfl
#print axioms translate209_eq
end InitE.FrontendStages.Word

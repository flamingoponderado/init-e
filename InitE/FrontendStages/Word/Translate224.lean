import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data224
import InitE.WordStages.Source288
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate208
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate224_eq : InitE.WordFrontendComputation.compileEntry Loop.output224 =
    InitE.WordStages.source288 := by
  kernel_rfl
#print axioms translate224_eq
end InitE.FrontendStages.Word

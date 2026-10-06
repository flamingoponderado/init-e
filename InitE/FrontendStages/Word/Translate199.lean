import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data199
import InitE.WordStages.Source263
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate183
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate199_eq : InitE.WordFrontendComputation.compileEntry Loop.output199 =
    InitE.WordStages.source263 := by
  kernel_rfl
#print axioms translate199_eq
end InitE.FrontendStages.Word

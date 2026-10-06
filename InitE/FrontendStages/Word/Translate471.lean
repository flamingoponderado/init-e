import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data471
import InitE.WordStages.Source535
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate455
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate471_eq : InitE.WordFrontendComputation.compileEntry Loop.output471 =
    InitE.WordStages.source535 := by
  kernel_rfl
#print axioms translate471_eq
end InitE.FrontendStages.Word

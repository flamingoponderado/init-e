import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data223
import InitE.WordStages.Source287
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate207
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate223_eq : InitE.WordFrontendComputation.compileEntry Loop.output223 =
    InitE.WordStages.source287 := by
  kernel_rfl
#print axioms translate223_eq
end InitE.FrontendStages.Word

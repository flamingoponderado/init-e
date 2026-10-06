import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data329
import InitE.WordStages.Source393
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate313
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate329_eq : InitE.WordFrontendComputation.compileEntry Loop.output329 =
    InitE.WordStages.source393 := by
  kernel_rfl
#print axioms translate329_eq
end InitE.FrontendStages.Word

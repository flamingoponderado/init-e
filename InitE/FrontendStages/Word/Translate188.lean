import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data188
import InitE.WordStages.Source252
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate172
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate188_eq : InitE.WordFrontendComputation.compileEntry Loop.output188 =
    InitE.WordStages.source252 := by
  kernel_rfl
#print axioms translate188_eq
end InitE.FrontendStages.Word

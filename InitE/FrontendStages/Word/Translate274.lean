import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data274
import InitE.WordStages.Source338
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate258
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate274_eq : InitE.WordFrontendComputation.compileEntry Loop.output274 =
    InitE.WordStages.source338 := by
  kernel_rfl
#print axioms translate274_eq
end InitE.FrontendStages.Word

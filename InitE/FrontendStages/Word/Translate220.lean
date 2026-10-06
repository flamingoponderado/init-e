import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data220
import InitE.WordStages.Source284
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate204
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate220_eq : InitE.WordFrontendComputation.compileEntry Loop.output220 =
    InitE.WordStages.source284 := by
  kernel_rfl
#print axioms translate220_eq
end InitE.FrontendStages.Word

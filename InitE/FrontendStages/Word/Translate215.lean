import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data215
import InitE.WordStages.Source279
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate199
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate215_eq : InitE.WordFrontendComputation.compileEntry Loop.output215 =
    InitE.WordStages.source279 := by
  kernel_rfl
#print axioms translate215_eq
end InitE.FrontendStages.Word

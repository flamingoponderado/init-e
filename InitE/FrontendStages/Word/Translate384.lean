import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data384
import InitE.WordStages.Source448
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate368
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate384_eq : InitE.WordFrontendComputation.compileEntry Loop.output384 =
    InitE.WordStages.source448 := by
  kernel_rfl
#print axioms translate384_eq
end InitE.FrontendStages.Word

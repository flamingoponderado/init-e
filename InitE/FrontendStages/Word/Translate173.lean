import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data173
import InitE.WordStages.Source237
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate157
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate173_eq : InitE.WordFrontendComputation.compileEntry Loop.output173 =
    InitE.WordStages.source237 := by
  kernel_rfl
#print axioms translate173_eq
end InitE.FrontendStages.Word

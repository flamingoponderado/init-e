import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data260
import InitE.WordStages.Source324
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate244
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate260_eq : InitE.WordFrontendComputation.compileEntry Loop.output260 =
    InitE.WordStages.source324 := by
  kernel_rfl
#print axioms translate260_eq
end InitE.FrontendStages.Word

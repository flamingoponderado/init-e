import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data352
import InitE.WordStages.Source416
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate336
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate352_eq : InitE.WordFrontendComputation.compileEntry Loop.output352 =
    InitE.WordStages.source416 := by
  kernel_rfl
#print axioms translate352_eq
end InitE.FrontendStages.Word

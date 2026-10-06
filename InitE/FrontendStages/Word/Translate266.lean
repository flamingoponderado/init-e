import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data266
import InitE.WordStages.Source330
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate250
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate266_eq : InitE.WordFrontendComputation.compileEntry Loop.output266 =
    InitE.WordStages.source330 := by
  kernel_rfl
#print axioms translate266_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data325
import InitE.WordStages.Source389
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate309
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate325_eq : InitE.WordFrontendComputation.compileEntry Loop.output325 =
    InitE.WordStages.source389 := by
  kernel_rfl
#print axioms translate325_eq
end InitE.FrontendStages.Word

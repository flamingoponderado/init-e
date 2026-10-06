import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data431
import InitE.WordStages.Source495
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate415
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate431_eq : InitE.WordFrontendComputation.compileEntry Loop.output431 =
    InitE.WordStages.source495 := by
  kernel_rfl
#print axioms translate431_eq
end InitE.FrontendStages.Word

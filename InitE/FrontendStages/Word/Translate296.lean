import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data296
import InitE.WordStages.Source360
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate280
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate296_eq : InitE.WordFrontendComputation.compileEntry Loop.output296 =
    InitE.WordStages.source360 := by
  kernel_rfl
#print axioms translate296_eq
end InitE.FrontendStages.Word

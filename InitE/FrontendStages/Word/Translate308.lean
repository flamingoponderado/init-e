import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data308
import InitE.WordStages.Source372
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate292
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate308_eq : InitE.WordFrontendComputation.compileEntry Loop.output308 =
    InitE.WordStages.source372 := by
  kernel_rfl
#print axioms translate308_eq
end InitE.FrontendStages.Word

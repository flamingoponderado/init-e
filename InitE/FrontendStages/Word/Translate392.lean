import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data392
import InitE.WordStages.Source456
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate376
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate392_eq : InitE.WordFrontendComputation.compileEntry Loop.output392 =
    InitE.WordStages.source456 := by
  kernel_rfl
#print axioms translate392_eq
end InitE.FrontendStages.Word

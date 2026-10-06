import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data448
import InitE.WordStages.Source512
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate432
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate448_eq : InitE.WordFrontendComputation.compileEntry Loop.output448 =
    InitE.WordStages.source512 := by
  kernel_rfl
#print axioms translate448_eq
end InitE.FrontendStages.Word

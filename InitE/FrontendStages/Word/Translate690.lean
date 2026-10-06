import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data690
import InitE.WordStages.Source754
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate674
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate690_eq : InitE.WordFrontendComputation.compileEntry Loop.output690 =
    InitE.WordStages.source754 := by
  kernel_rfl
#print axioms translate690_eq
end InitE.FrontendStages.Word

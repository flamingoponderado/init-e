import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data116
import InitE.WordStages.Source180
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate100
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate116_eq : InitE.WordFrontendComputation.compileEntry Loop.output116 =
    InitE.WordStages.source180 := by
  kernel_rfl
#print axioms translate116_eq
end InitE.FrontendStages.Word

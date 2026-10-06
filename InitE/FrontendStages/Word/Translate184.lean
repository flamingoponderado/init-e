import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data184
import InitE.WordStages.Source248
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate168
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate184_eq : InitE.WordFrontendComputation.compileEntry Loop.output184 =
    InitE.WordStages.source248 := by
  kernel_rfl
#print axioms translate184_eq
end InitE.FrontendStages.Word

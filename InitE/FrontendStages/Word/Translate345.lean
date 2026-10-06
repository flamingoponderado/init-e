import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data345
import InitE.WordStages.Source409
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate329
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate345_eq : InitE.WordFrontendComputation.compileEntry Loop.output345 =
    InitE.WordStages.source409 := by
  kernel_rfl
#print axioms translate345_eq
end InitE.FrontendStages.Word

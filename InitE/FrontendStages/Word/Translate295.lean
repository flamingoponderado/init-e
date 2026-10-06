import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data295
import InitE.WordStages.Source359
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate279
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate295_eq : InitE.WordFrontendComputation.compileEntry Loop.output295 =
    InitE.WordStages.source359 := by
  kernel_rfl
#print axioms translate295_eq
end InitE.FrontendStages.Word

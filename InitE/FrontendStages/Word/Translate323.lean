import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data323
import InitE.WordStages.Source387
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate307
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate323_eq : InitE.WordFrontendComputation.compileEntry Loop.output323 =
    InitE.WordStages.source387 := by
  kernel_rfl
#print axioms translate323_eq
end InitE.FrontendStages.Word

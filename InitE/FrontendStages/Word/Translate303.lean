import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data303
import InitE.WordStages.Source367
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate287
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate303_eq : InitE.WordFrontendComputation.compileEntry Loop.output303 =
    InitE.WordStages.source367 := by
  kernel_rfl
#print axioms translate303_eq
end InitE.FrontendStages.Word

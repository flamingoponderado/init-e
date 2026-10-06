import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data262
import InitE.WordStages.Source326
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate246
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate262_eq : InitE.WordFrontendComputation.compileEntry Loop.output262 =
    InitE.WordStages.source326 := by
  kernel_rfl
#print axioms translate262_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data314
import InitE.WordStages.Source378
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate298
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate314_eq : InitE.WordFrontendComputation.compileEntry Loop.output314 =
    InitE.WordStages.source378 := by
  kernel_rfl
#print axioms translate314_eq
end InitE.FrontendStages.Word

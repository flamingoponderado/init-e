import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data482
import InitE.WordStages.Source546
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate466
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate482_eq : InitE.WordFrontendComputation.compileEntry Loop.output482 =
    InitE.WordStages.source546 := by
  kernel_rfl
#print axioms translate482_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data406
import InitE.WordStages.Source470
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate390
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate406_eq : InitE.WordFrontendComputation.compileEntry Loop.output406 =
    InitE.WordStages.source470 := by
  kernel_rfl
#print axioms translate406_eq
end InitE.FrontendStages.Word

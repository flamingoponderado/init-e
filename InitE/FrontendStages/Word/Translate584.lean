import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data584
import InitE.WordStages.Source648
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate568
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate584_eq : InitE.WordFrontendComputation.compileEntry Loop.output584 =
    InitE.WordStages.source648 := by
  kernel_rfl
#print axioms translate584_eq
end InitE.FrontendStages.Word

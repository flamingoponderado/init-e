import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data634
import InitE.WordStages.Source698
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate618
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate634_eq : InitE.WordFrontendComputation.compileEntry Loop.output634 =
    InitE.WordStages.source698 := by
  kernel_rfl
#print axioms translate634_eq
end InitE.FrontendStages.Word

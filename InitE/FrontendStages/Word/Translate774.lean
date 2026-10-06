import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data774
import InitE.WordStages.Source838
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate758
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate774_eq : InitE.WordFrontendComputation.compileEntry Loop.output774 =
    InitE.WordStages.source838 := by
  kernel_rfl
#print axioms translate774_eq
end InitE.FrontendStages.Word

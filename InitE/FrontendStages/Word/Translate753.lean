import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data753
import InitE.WordStages.Source817
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate737
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate753_eq : InitE.WordFrontendComputation.compileEntry Loop.output753 =
    InitE.WordStages.source817 := by
  kernel_rfl
#print axioms translate753_eq
end InitE.FrontendStages.Word

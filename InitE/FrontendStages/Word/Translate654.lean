import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data654
import InitE.WordStages.Source718
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate638
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate654_eq : InitE.WordFrontendComputation.compileEntry Loop.output654 =
    InitE.WordStages.source718 := by
  kernel_rfl
#print axioms translate654_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data742
import InitE.WordStages.Source806
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate726
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate742_eq : InitE.WordFrontendComputation.compileEntry Loop.output742 =
    InitE.WordStages.source806 := by
  kernel_rfl
#print axioms translate742_eq
end InitE.FrontendStages.Word

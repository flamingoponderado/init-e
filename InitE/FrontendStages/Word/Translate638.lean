import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data638
import InitE.WordStages.Source702
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate622
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate638_eq : InitE.WordFrontendComputation.compileEntry Loop.output638 =
    InitE.WordStages.source702 := by
  kernel_rfl
#print axioms translate638_eq
end InitE.FrontendStages.Word

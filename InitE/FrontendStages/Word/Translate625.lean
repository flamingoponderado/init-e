import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data625
import InitE.WordStages.Source689
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate609
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate625_eq : InitE.WordFrontendComputation.compileEntry Loop.output625 =
    InitE.WordStages.source689 := by
  kernel_rfl
#print axioms translate625_eq
end InitE.FrontendStages.Word

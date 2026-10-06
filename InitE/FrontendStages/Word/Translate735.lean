import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data735
import InitE.WordStages.Source799
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate719
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate735_eq : InitE.WordFrontendComputation.compileEntry Loop.output735 =
    InitE.WordStages.source799 := by
  kernel_rfl
#print axioms translate735_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data801
import InitE.WordStages.Source865
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate785
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate801_eq : InitE.WordFrontendComputation.compileEntry Loop.output801 =
    InitE.WordStages.source865 := by
  kernel_rfl
#print axioms translate801_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data745
import InitE.WordStages.Source809
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate729
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate745_eq : InitE.WordFrontendComputation.compileEntry Loop.output745 =
    InitE.WordStages.source809 := by
  kernel_rfl
#print axioms translate745_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data635
import InitE.WordStages.Source699
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate619
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate635_eq : InitE.WordFrontendComputation.compileEntry Loop.output635 =
    InitE.WordStages.source699 := by
  kernel_rfl
#print axioms translate635_eq
end InitE.FrontendStages.Word

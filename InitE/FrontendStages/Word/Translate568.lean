import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data568
import InitE.WordStages.Source632
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate552
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate568_eq : InitE.WordFrontendComputation.compileEntry Loop.output568 =
    InitE.WordStages.source632 := by
  kernel_rfl
#print axioms translate568_eq
end InitE.FrontendStages.Word

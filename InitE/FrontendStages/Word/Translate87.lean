import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data87
import InitE.WordStages.Source151
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate71
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate87_eq : InitE.WordFrontendComputation.compileEntry Loop.output87 =
    InitE.WordStages.source151 := by
  kernel_rfl
#print axioms translate87_eq
end InitE.FrontendStages.Word

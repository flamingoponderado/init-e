import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data562
import InitE.WordStages.Source626
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate546
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate562_eq : InitE.WordFrontendComputation.compileEntry Loop.output562 =
    InitE.WordStages.source626 := by
  kernel_rfl
#print axioms translate562_eq
end InitE.FrontendStages.Word

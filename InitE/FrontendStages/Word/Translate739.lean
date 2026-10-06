import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data739
import InitE.WordStages.Source803
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate723
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate739_eq : InitE.WordFrontendComputation.compileEntry Loop.output739 =
    InitE.WordStages.source803 := by
  kernel_rfl
#print axioms translate739_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data642
import InitE.WordStages.Source706
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate626
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate642_eq : InitE.WordFrontendComputation.compileEntry Loop.output642 =
    InitE.WordStages.source706 := by
  kernel_rfl
#print axioms translate642_eq
end InitE.FrontendStages.Word

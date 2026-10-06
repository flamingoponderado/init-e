import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data793
import InitE.WordStages.Source857
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate777
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate793_eq : InitE.WordFrontendComputation.compileEntry Loop.output793 =
    InitE.WordStages.source857 := by
  kernel_rfl
#print axioms translate793_eq
end InitE.FrontendStages.Word

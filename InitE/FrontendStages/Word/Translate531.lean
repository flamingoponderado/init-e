import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data531
import InitE.WordStages.Source595
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate515
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate531_eq : InitE.WordFrontendComputation.compileEntry Loop.output531 =
    InitE.WordStages.source595 := by
  kernel_rfl
#print axioms translate531_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data700
import InitE.WordStages.Source764
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate684
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate700_eq : InitE.WordFrontendComputation.compileEntry Loop.output700 =
    InitE.WordStages.source764 := by
  kernel_rfl
#print axioms translate700_eq
end InitE.FrontendStages.Word

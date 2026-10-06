import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data97
import InitE.WordStages.Source161
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate81
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate97_eq : InitE.WordFrontendComputation.compileEntry Loop.output97 =
    InitE.WordStages.source161 := by
  kernel_rfl
#print axioms translate97_eq
end InitE.FrontendStages.Word

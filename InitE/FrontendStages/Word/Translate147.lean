import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data147
import InitE.WordStages.Source211
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate131
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate147_eq : InitE.WordFrontendComputation.compileEntry Loop.output147 =
    InitE.WordStages.source211 := by
  kernel_rfl
#print axioms translate147_eq
end InitE.FrontendStages.Word

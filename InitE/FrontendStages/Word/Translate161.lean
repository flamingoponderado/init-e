import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data161
import InitE.WordStages.Source225
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate145
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate161_eq : InitE.WordFrontendComputation.compileEntry Loop.output161 =
    InitE.WordStages.source225 := by
  kernel_rfl
#print axioms translate161_eq
end InitE.FrontendStages.Word

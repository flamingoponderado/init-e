import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data165
import InitE.WordStages.Source229
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate149
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate165_eq : InitE.WordFrontendComputation.compileEntry Loop.output165 =
    InitE.WordStages.source229 := by
  kernel_rfl
#print axioms translate165_eq
end InitE.FrontendStages.Word

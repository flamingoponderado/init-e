import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data211
import InitE.WordStages.Source275
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate195
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate211_eq : InitE.WordFrontendComputation.compileEntry Loop.output211 =
    InitE.WordStages.source275 := by
  kernel_rfl
#print axioms translate211_eq
end InitE.FrontendStages.Word

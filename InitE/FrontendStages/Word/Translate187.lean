import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data187
import InitE.WordStages.Source251
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate171
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate187_eq : InitE.WordFrontendComputation.compileEntry Loop.output187 =
    InitE.WordStages.source251 := by
  kernel_rfl
#print axioms translate187_eq
end InitE.FrontendStages.Word

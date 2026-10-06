import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data63
import InitE.WordStages.Source127
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate47
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate63_eq : InitE.WordFrontendComputation.compileEntry Loop.output63 =
    InitE.WordStages.source127 := by
  kernel_rfl
#print axioms translate63_eq
end InitE.FrontendStages.Word

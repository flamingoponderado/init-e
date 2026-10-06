import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data622
import InitE.WordStages.Source686
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate606
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate622_eq : InitE.WordFrontendComputation.compileEntry Loop.output622 =
    InitE.WordStages.source686 := by
  kernel_rfl
#print axioms translate622_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data20
import InitE.WordStages.Source84
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate4
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate20_eq : InitE.WordFrontendComputation.compileEntry Loop.output20 =
    InitE.WordStages.source84 := by
  kernel_rfl
#print axioms translate20_eq
end InitE.FrontendStages.Word

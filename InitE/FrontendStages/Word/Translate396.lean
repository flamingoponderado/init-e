import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data396
import InitE.WordStages.Source460
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate380
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate396_eq : InitE.WordFrontendComputation.compileEntry Loop.output396 =
    InitE.WordStages.source460 := by
  kernel_rfl
#print axioms translate396_eq
end InitE.FrontendStages.Word

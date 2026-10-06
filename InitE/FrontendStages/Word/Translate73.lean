import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data73
import InitE.WordStages.Source137
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate57
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate73_eq : InitE.WordFrontendComputation.compileEntry Loop.output73 =
    InitE.WordStages.source137 := by
  kernel_rfl
#print axioms translate73_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data28
import InitE.WordStages.Source92
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate12
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate28_eq : InitE.WordFrontendComputation.compileEntry Loop.output28 =
    InitE.WordStages.source92 := by
  kernel_rfl
#print axioms translate28_eq
end InitE.FrontendStages.Word

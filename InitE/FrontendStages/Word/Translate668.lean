import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data668
import InitE.WordStages.Source732
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate652
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate668_eq : InitE.WordFrontendComputation.compileEntry Loop.output668 =
    InitE.WordStages.source732 := by
  kernel_rfl
#print axioms translate668_eq
end InitE.FrontendStages.Word

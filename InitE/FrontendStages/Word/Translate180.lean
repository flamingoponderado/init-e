import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data180
import InitE.WordStages.Source244
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate164
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate180_eq : InitE.WordFrontendComputation.compileEntry Loop.output180 =
    InitE.WordStages.source244 := by
  kernel_rfl
#print axioms translate180_eq
end InitE.FrontendStages.Word

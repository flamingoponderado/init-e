import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data751
import InitE.WordStages.Source815
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate735
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate751_eq : InitE.WordFrontendComputation.compileEntry Loop.output751 =
    InitE.WordStages.source815 := by
  kernel_rfl
#print axioms translate751_eq
end InitE.FrontendStages.Word

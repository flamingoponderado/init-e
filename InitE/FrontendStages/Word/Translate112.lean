import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data112
import InitE.WordStages.Source176
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate96
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate112_eq : InitE.WordFrontendComputation.compileEntry Loop.output112 =
    InitE.WordStages.source176 := by
  kernel_rfl
#print axioms translate112_eq
end InitE.FrontendStages.Word

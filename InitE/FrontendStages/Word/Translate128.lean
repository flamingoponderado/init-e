import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data128
import InitE.WordStages.Source192
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate112
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate128_eq : InitE.WordFrontendComputation.compileEntry Loop.output128 =
    InitE.WordStages.source192 := by
  kernel_rfl
#print axioms translate128_eq
end InitE.FrontendStages.Word

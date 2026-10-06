import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data160
import InitE.WordStages.Source224
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate144
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate160_eq : InitE.WordFrontendComputation.compileEntry Loop.output160 =
    InitE.WordStages.source224 := by
  kernel_rfl
#print axioms translate160_eq
end InitE.FrontendStages.Word

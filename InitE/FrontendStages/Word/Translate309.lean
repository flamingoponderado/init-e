import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data309
import InitE.WordStages.Source373
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate293
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate309_eq : InitE.WordFrontendComputation.compileEntry Loop.output309 =
    InitE.WordStages.source373 := by
  kernel_rfl
#print axioms translate309_eq
end InitE.FrontendStages.Word

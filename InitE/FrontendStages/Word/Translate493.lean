import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data493
import InitE.WordStages.Source557
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate477
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate493_eq : InitE.WordFrontendComputation.compileEntry Loop.output493 =
    InitE.WordStages.source557 := by
  kernel_rfl
#print axioms translate493_eq
end InitE.FrontendStages.Word

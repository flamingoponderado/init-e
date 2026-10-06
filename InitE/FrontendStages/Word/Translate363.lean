import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data363
import InitE.WordStages.Source427
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate347
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate363_eq : InitE.WordFrontendComputation.compileEntry Loop.output363 =
    InitE.WordStages.source427 := by
  kernel_rfl
#print axioms translate363_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data434
import InitE.WordStages.Source498
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate418
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate434_eq : InitE.WordFrontendComputation.compileEntry Loop.output434 =
    InitE.WordStages.source498 := by
  kernel_rfl
#print axioms translate434_eq
end InitE.FrontendStages.Word

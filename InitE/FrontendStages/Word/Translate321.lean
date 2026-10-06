import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data321
import InitE.WordStages.Source385
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate305
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate321_eq : InitE.WordFrontendComputation.compileEntry Loop.output321 =
    InitE.WordStages.source385 := by
  kernel_rfl
#print axioms translate321_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data457
import InitE.WordStages.Source521
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate441
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate457_eq : InitE.WordFrontendComputation.compileEntry Loop.output457 =
    InitE.WordStages.source521 := by
  kernel_rfl
#print axioms translate457_eq
end InitE.FrontendStages.Word

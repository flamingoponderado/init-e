import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data443
import InitE.WordStages.Source507
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate427
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate443_eq : InitE.WordFrontendComputation.compileEntry Loop.output443 =
    InitE.WordStages.source507 := by
  kernel_rfl
#print axioms translate443_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data414
import InitE.WordStages.Source478
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate398
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate414_eq : InitE.WordFrontendComputation.compileEntry Loop.output414 =
    InitE.WordStages.source478 := by
  kernel_rfl
#print axioms translate414_eq
end InitE.FrontendStages.Word

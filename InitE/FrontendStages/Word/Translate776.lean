import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data776
import InitE.WordStages.Source840
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate760
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate776_eq : InitE.WordFrontendComputation.compileEntry Loop.output776 =
    InitE.WordStages.source840 := by
  kernel_rfl
#print axioms translate776_eq
end InitE.FrontendStages.Word

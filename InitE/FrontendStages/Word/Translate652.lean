import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data652
import InitE.WordStages.Source716
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate636
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate652_eq : InitE.WordFrontendComputation.compileEntry Loop.output652 =
    InitE.WordStages.source716 := by
  kernel_rfl
#print axioms translate652_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data769
import InitE.WordStages.Source833
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate753
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate769_eq : InitE.WordFrontendComputation.compileEntry Loop.output769 =
    InitE.WordStages.source833 := by
  kernel_rfl
#print axioms translate769_eq
end InitE.FrontendStages.Word

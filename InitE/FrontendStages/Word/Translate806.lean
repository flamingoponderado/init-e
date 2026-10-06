import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data806
import InitE.WordStages.Source870
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate790
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate806_eq : InitE.WordFrontendComputation.compileEntry Loop.output806 =
    InitE.WordStages.source870 := by
  kernel_rfl
#print axioms translate806_eq
end InitE.FrontendStages.Word

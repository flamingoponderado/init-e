import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data78
import InitE.WordStages.Source142
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate62
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate78_eq : InitE.WordFrontendComputation.compileEntry Loop.output78 =
    InitE.WordStages.source142 := by
  kernel_rfl
#print axioms translate78_eq
end InitE.FrontendStages.Word

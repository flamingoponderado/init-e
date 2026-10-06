import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data763
import InitE.WordStages.Source827
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate747
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate763_eq : InitE.WordFrontendComputation.compileEntry Loop.output763 =
    InitE.WordStages.source827 := by
  kernel_rfl
#print axioms translate763_eq
end InitE.FrontendStages.Word

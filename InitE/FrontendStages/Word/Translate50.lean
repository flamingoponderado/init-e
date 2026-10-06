import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data50
import InitE.WordStages.Source114
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate34
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate50_eq : InitE.WordFrontendComputation.compileEntry Loop.output50 =
    InitE.WordStages.source114 := by
  kernel_rfl
#print axioms translate50_eq
end InitE.FrontendStages.Word

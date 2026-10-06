import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data736
import InitE.WordStages.Source800
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate720
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate736_eq : InitE.WordFrontendComputation.compileEntry Loop.output736 =
    InitE.WordStages.source800 := by
  kernel_rfl
#print axioms translate736_eq
end InitE.FrontendStages.Word

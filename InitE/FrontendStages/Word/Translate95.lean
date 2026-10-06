import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data95
import InitE.WordStages.Source159
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate79
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate95_eq : InitE.WordFrontendComputation.compileEntry Loop.output95 =
    InitE.WordStages.source159 := by
  kernel_rfl
#print axioms translate95_eq
end InitE.FrontendStages.Word

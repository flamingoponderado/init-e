import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data33
import InitE.WordStages.Source97
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate17
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate33_eq : InitE.WordFrontendComputation.compileEntry Loop.output33 =
    InitE.WordStages.source97 := by
  kernel_rfl
#print axioms translate33_eq
end InitE.FrontendStages.Word

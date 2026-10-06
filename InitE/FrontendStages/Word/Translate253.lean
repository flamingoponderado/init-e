import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data253
import InitE.WordStages.Source317
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate237
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate253_eq : InitE.WordFrontendComputation.compileEntry Loop.output253 =
    InitE.WordStages.source317 := by
  kernel_rfl
#print axioms translate253_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data446
import InitE.WordStages.Source510
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate430
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate446_eq : InitE.WordFrontendComputation.compileEntry Loop.output446 =
    InitE.WordStages.source510 := by
  kernel_rfl
#print axioms translate446_eq
end InitE.FrontendStages.Word

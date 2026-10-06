import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data425
import InitE.WordStages.Source489
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate409
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate425_eq : InitE.WordFrontendComputation.compileEntry Loop.output425 =
    InitE.WordStages.source489 := by
  kernel_rfl
#print axioms translate425_eq
end InitE.FrontendStages.Word

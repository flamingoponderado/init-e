import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data189
import InitE.WordStages.Source253
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate173
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate189_eq : InitE.WordFrontendComputation.compileEntry Loop.output189 =
    InitE.WordStages.source253 := by
  kernel_rfl
#print axioms translate189_eq
end InitE.FrontendStages.Word

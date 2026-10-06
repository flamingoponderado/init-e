import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data194
import InitE.WordStages.Source258
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate178
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate194_eq : InitE.WordFrontendComputation.compileEntry Loop.output194 =
    InitE.WordStages.source258 := by
  kernel_rfl
#print axioms translate194_eq
end InitE.FrontendStages.Word

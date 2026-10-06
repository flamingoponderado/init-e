import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data134
import InitE.WordStages.Source198
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate118
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate134_eq : InitE.WordFrontendComputation.compileEntry Loop.output134 =
    InitE.WordStages.source198 := by
  kernel_rfl
#print axioms translate134_eq
end InitE.FrontendStages.Word

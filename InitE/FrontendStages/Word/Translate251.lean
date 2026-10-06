import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data251
import InitE.WordStages.Source315
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate235
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate251_eq : InitE.WordFrontendComputation.compileEntry Loop.output251 =
    InitE.WordStages.source315 := by
  kernel_rfl
#print axioms translate251_eq
end InitE.FrontendStages.Word

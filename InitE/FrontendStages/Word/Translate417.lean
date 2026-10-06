import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data417
import InitE.WordStages.Source481
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate401
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate417_eq : InitE.WordFrontendComputation.compileEntry Loop.output417 =
    InitE.WordStages.source481 := by
  kernel_rfl
#print axioms translate417_eq
end InitE.FrontendStages.Word

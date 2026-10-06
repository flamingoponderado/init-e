import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data294
import InitE.WordStages.Source358
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate278
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate294_eq : InitE.WordFrontendComputation.compileEntry Loop.output294 =
    InitE.WordStages.source358 := by
  kernel_rfl
#print axioms translate294_eq
end InitE.FrontendStages.Word

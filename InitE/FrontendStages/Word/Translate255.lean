import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data255
import InitE.WordStages.Source319
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate239
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate255_eq : InitE.WordFrontendComputation.compileEntry Loop.output255 =
    InitE.WordStages.source319 := by
  kernel_rfl
#print axioms translate255_eq
end InitE.FrontendStages.Word

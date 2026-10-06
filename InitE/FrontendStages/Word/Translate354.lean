import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data354
import InitE.WordStages.Source418
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate338
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate354_eq : InitE.WordFrontendComputation.compileEntry Loop.output354 =
    InitE.WordStages.source418 := by
  kernel_rfl
#print axioms translate354_eq
end InitE.FrontendStages.Word

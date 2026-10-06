import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data228
import InitE.WordStages.Source292
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate212
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate228_eq : InitE.WordFrontendComputation.compileEntry Loop.output228 =
    InitE.WordStages.source292 := by
  kernel_rfl
#print axioms translate228_eq
end InitE.FrontendStages.Word

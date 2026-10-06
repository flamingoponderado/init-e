import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data55
import InitE.WordStages.Source119
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate39
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate55_eq : InitE.WordFrontendComputation.compileEntry Loop.output55 =
    InitE.WordStages.source119 := by
  kernel_rfl
#print axioms translate55_eq
end InitE.FrontendStages.Word

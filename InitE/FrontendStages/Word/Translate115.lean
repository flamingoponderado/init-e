import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data115
import InitE.WordStages.Source179
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate99
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate115_eq : InitE.WordFrontendComputation.compileEntry Loop.output115 =
    InitE.WordStages.source179 := by
  kernel_rfl
#print axioms translate115_eq
end InitE.FrontendStages.Word

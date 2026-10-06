import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data148
import InitE.WordStages.Source212
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate132
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate148_eq : InitE.WordFrontendComputation.compileEntry Loop.output148 =
    InitE.WordStages.source212 := by
  kernel_rfl
#print axioms translate148_eq
end InitE.FrontendStages.Word

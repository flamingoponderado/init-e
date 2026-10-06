import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data132
import InitE.WordStages.Source196
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate116
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate132_eq : InitE.WordFrontendComputation.compileEntry Loop.output132 =
    InitE.WordStages.source196 := by
  kernel_rfl
#print axioms translate132_eq
end InitE.FrontendStages.Word

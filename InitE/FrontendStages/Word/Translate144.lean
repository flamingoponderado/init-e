import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data144
import InitE.WordStages.Source208
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate128
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate144_eq : InitE.WordFrontendComputation.compileEntry Loop.output144 =
    InitE.WordStages.source208 := by
  kernel_rfl
#print axioms translate144_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data171
import InitE.WordStages.Source235
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate155
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate171_eq : InitE.WordFrontendComputation.compileEntry Loop.output171 =
    InitE.WordStages.source235 := by
  kernel_rfl
#print axioms translate171_eq
end InitE.FrontendStages.Word

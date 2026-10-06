import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data227
import InitE.WordStages.Source291
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate211
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate227_eq : InitE.WordFrontendComputation.compileEntry Loop.output227 =
    InitE.WordStages.source291 := by
  kernel_rfl
#print axioms translate227_eq
end InitE.FrontendStages.Word

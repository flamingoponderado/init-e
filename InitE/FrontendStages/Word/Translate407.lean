import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data407
import InitE.WordStages.Source471
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate391
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate407_eq : InitE.WordFrontendComputation.compileEntry Loop.output407 =
    InitE.WordStages.source471 := by
  kernel_rfl
#print axioms translate407_eq
end InitE.FrontendStages.Word

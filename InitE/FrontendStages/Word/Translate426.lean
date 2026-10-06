import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data426
import InitE.WordStages.Source490
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate410
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate426_eq : InitE.WordFrontendComputation.compileEntry Loop.output426 =
    InitE.WordStages.source490 := by
  kernel_rfl
#print axioms translate426_eq
end InitE.FrontendStages.Word

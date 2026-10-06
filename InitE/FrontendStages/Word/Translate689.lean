import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data689
import InitE.WordStages.Source753
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate673
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate689_eq : InitE.WordFrontendComputation.compileEntry Loop.output689 =
    InitE.WordStages.source753 := by
  kernel_rfl
#print axioms translate689_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data386
import InitE.WordStages.Source450
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate370
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate386_eq : InitE.WordFrontendComputation.compileEntry Loop.output386 =
    InitE.WordStages.source450 := by
  kernel_rfl
#print axioms translate386_eq
end InitE.FrontendStages.Word

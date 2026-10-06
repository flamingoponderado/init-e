import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data473
import InitE.WordStages.Source537
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate457
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate473_eq : InitE.WordFrontendComputation.compileEntry Loop.output473 =
    InitE.WordStages.source537 := by
  kernel_rfl
#print axioms translate473_eq
end InitE.FrontendStages.Word

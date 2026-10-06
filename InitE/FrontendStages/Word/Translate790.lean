import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data790
import InitE.WordStages.Source854
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate774
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate790_eq : InitE.WordFrontendComputation.compileEntry Loop.output790 =
    InitE.WordStages.source854 := by
  kernel_rfl
#print axioms translate790_eq
end InitE.FrontendStages.Word

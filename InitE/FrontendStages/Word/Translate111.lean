import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data111
import InitE.WordStages.Source175
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate95
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate111_eq : InitE.WordFrontendComputation.compileEntry Loop.output111 =
    InitE.WordStages.source175 := by
  kernel_rfl
#print axioms translate111_eq
end InitE.FrontendStages.Word

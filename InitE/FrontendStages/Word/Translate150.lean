import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data150
import InitE.WordStages.Source214
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate134
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate150_eq : InitE.WordFrontendComputation.compileEntry Loop.output150 =
    InitE.WordStages.source214 := by
  kernel_rfl
#print axioms translate150_eq
end InitE.FrontendStages.Word

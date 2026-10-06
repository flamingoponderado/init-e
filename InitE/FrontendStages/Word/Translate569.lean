import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data569
import InitE.WordStages.Source633
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate553
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate569_eq : InitE.WordFrontendComputation.compileEntry Loop.output569 =
    InitE.WordStages.source633 := by
  kernel_rfl
#print axioms translate569_eq
end InitE.FrontendStages.Word

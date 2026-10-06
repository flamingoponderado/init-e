import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data765
import InitE.WordStages.Source829
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate749
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate765_eq : InitE.WordFrontendComputation.compileEntry Loop.output765 =
    InitE.WordStages.source829 := by
  kernel_rfl
#print axioms translate765_eq
end InitE.FrontendStages.Word

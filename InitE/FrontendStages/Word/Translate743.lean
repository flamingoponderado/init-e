import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data743
import InitE.WordStages.Source807
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate727
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate743_eq : InitE.WordFrontendComputation.compileEntry Loop.output743 =
    InitE.WordStages.source807 := by
  kernel_rfl
#print axioms translate743_eq
end InitE.FrontendStages.Word

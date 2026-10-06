import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data777
import InitE.WordStages.Source841
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate761
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate777_eq : InitE.WordFrontendComputation.compileEntry Loop.output777 =
    InitE.WordStages.source841 := by
  kernel_rfl
#print axioms translate777_eq
end InitE.FrontendStages.Word

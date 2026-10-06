import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data650
import InitE.WordStages.Source714
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate634
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate650_eq : InitE.WordFrontendComputation.compileEntry Loop.output650 =
    InitE.WordStages.source714 := by
  kernel_rfl
#print axioms translate650_eq
end InitE.FrontendStages.Word

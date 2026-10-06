import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data785
import InitE.WordStages.Source849
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate769
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate785_eq : InitE.WordFrontendComputation.compileEntry Loop.output785 =
    InitE.WordStages.source849 := by
  kernel_rfl
#print axioms translate785_eq
end InitE.FrontendStages.Word

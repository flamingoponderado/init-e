import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data714
import InitE.WordStages.Source778
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate698
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate714_eq : InitE.WordFrontendComputation.compileEntry Loop.output714 =
    InitE.WordStages.source778 := by
  kernel_rfl
#print axioms translate714_eq
end InitE.FrontendStages.Word

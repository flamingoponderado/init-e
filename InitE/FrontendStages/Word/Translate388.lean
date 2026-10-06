import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data388
import InitE.WordStages.Source452
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate372
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate388_eq : InitE.WordFrontendComputation.compileEntry Loop.output388 =
    InitE.WordStages.source452 := by
  kernel_rfl
#print axioms translate388_eq
end InitE.FrontendStages.Word

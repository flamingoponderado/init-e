import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data463
import InitE.WordStages.Source527
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate447
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate463_eq : InitE.WordFrontendComputation.compileEntry Loop.output463 =
    InitE.WordStages.source527 := by
  kernel_rfl
#print axioms translate463_eq
end InitE.FrontendStages.Word

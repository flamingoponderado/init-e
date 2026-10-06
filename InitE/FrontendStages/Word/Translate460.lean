import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data460
import InitE.WordStages.Source524
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate444
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate460_eq : InitE.WordFrontendComputation.compileEntry Loop.output460 =
    InitE.WordStages.source524 := by
  kernel_rfl
#print axioms translate460_eq
end InitE.FrontendStages.Word

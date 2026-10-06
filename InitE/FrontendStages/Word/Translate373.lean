import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data373
import InitE.WordStages.Source437
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate357
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate373_eq : InitE.WordFrontendComputation.compileEntry Loop.output373 =
    InitE.WordStages.source437 := by
  kernel_rfl
#print axioms translate373_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data421
import InitE.WordStages.Source485
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate405
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate421_eq : InitE.WordFrontendComputation.compileEntry Loop.output421 =
    InitE.WordStages.source485 := by
  kernel_rfl
#print axioms translate421_eq
end InitE.FrontendStages.Word

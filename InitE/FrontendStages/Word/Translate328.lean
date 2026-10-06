import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data328
import InitE.WordStages.Source392
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate312
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate328_eq : InitE.WordFrontendComputation.compileEntry Loop.output328 =
    InitE.WordStages.source392 := by
  kernel_rfl
#print axioms translate328_eq
end InitE.FrontendStages.Word

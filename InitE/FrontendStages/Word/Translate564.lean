import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data564
import InitE.WordStages.Source628
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate548
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate564_eq : InitE.WordFrontendComputation.compileEntry Loop.output564 =
    InitE.WordStages.source628 := by
  kernel_rfl
#print axioms translate564_eq
end InitE.FrontendStages.Word

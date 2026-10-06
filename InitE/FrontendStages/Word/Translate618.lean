import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data618
import InitE.WordStages.Source682
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate602
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate618_eq : InitE.WordFrontendComputation.compileEntry Loop.output618 =
    InitE.WordStages.source682 := by
  kernel_rfl
#print axioms translate618_eq
end InitE.FrontendStages.Word

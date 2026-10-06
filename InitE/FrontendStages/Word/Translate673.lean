import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data673
import InitE.WordStages.Source737
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate657
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate673_eq : InitE.WordFrontendComputation.compileEntry Loop.output673 =
    InitE.WordStages.source737 := by
  kernel_rfl
#print axioms translate673_eq
end InitE.FrontendStages.Word

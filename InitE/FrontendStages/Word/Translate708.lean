import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data708
import InitE.WordStages.Source772
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate692
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate708_eq : InitE.WordFrontendComputation.compileEntry Loop.output708 =
    InitE.WordStages.source772 := by
  kernel_rfl
#print axioms translate708_eq
end InitE.FrontendStages.Word

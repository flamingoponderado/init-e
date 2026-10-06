import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data755
import InitE.WordStages.Source819
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate739
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate755_eq : InitE.WordFrontendComputation.compileEntry Loop.output755 =
    InitE.WordStages.source819 := by
  kernel_rfl
#print axioms translate755_eq
end InitE.FrontendStages.Word

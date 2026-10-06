import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data767
import InitE.WordStages.Source831
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate751
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate767_eq : InitE.WordFrontendComputation.compileEntry Loop.output767 =
    InitE.WordStages.source831 := by
  kernel_rfl
#print axioms translate767_eq
end InitE.FrontendStages.Word

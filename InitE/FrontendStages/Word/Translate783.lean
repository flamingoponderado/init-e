import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data783
import InitE.WordStages.Source847
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate767
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate783_eq : InitE.WordFrontendComputation.compileEntry Loop.output783 =
    InitE.WordStages.source847 := by
  kernel_rfl
#print axioms translate783_eq
end InitE.FrontendStages.Word

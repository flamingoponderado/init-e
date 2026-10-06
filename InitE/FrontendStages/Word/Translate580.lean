import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data580
import InitE.WordStages.Source644
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate564
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate580_eq : InitE.WordFrontendComputation.compileEntry Loop.output580 =
    InitE.WordStages.source644 := by
  kernel_rfl
#print axioms translate580_eq
end InitE.FrontendStages.Word

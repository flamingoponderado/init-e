import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data214
import InitE.WordStages.Source278
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate198
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate214_eq : InitE.WordFrontendComputation.compileEntry Loop.output214 =
    InitE.WordStages.source278 := by
  kernel_rfl
#print axioms translate214_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data307
import InitE.WordStages.Source371
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate291
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate307_eq : InitE.WordFrontendComputation.compileEntry Loop.output307 =
    InitE.WordStages.source371 := by
  kernel_rfl
#print axioms translate307_eq
end InitE.FrontendStages.Word

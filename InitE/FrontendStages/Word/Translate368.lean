import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data368
import InitE.WordStages.Source432
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate352
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate368_eq : InitE.WordFrontendComputation.compileEntry Loop.output368 =
    InitE.WordStages.source432 := by
  kernel_rfl
#print axioms translate368_eq
end InitE.FrontendStages.Word

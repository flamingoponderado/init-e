import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data249
import InitE.WordStages.Source313
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate233
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate249_eq : InitE.WordFrontendComputation.compileEntry Loop.output249 =
    InitE.WordStages.source313 := by
  kernel_rfl
#print axioms translate249_eq
end InitE.FrontendStages.Word

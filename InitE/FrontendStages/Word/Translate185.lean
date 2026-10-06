import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data185
import InitE.WordStages.Source249
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate169
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate185_eq : InitE.WordFrontendComputation.compileEntry Loop.output185 =
    InitE.WordStages.source249 := by
  kernel_rfl
#print axioms translate185_eq
end InitE.FrontendStages.Word

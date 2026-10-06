import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data711
import InitE.WordStages.Source775
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate695
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate711_eq : InitE.WordFrontendComputation.compileEntry Loop.output711 =
    InitE.WordStages.source775 := by
  kernel_rfl
#print axioms translate711_eq
end InitE.FrontendStages.Word

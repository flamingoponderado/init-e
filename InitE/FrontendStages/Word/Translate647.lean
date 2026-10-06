import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data647
import InitE.WordStages.Source711
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate631
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate647_eq : InitE.WordFrontendComputation.compileEntry Loop.output647 =
    InitE.WordStages.source711 := by
  kernel_rfl
#print axioms translate647_eq
end InitE.FrontendStages.Word

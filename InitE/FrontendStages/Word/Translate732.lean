import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data732
import InitE.WordStages.Source796
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate716
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate732_eq : InitE.WordFrontendComputation.compileEntry Loop.output732 =
    InitE.WordStages.source796 := by
  kernel_rfl
#print axioms translate732_eq
end InitE.FrontendStages.Word

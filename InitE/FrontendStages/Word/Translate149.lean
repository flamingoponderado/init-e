import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data149
import InitE.WordStages.Source213
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate133
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate149_eq : InitE.WordFrontendComputation.compileEntry Loop.output149 =
    InitE.WordStages.source213 := by
  kernel_rfl
#print axioms translate149_eq
end InitE.FrontendStages.Word

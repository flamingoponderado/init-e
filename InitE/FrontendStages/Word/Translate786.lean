import InitE.FrontendStages.Loop.Data786
import InitE.WordStages.Source850
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate770
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate786_eq : InitE.WordFrontendComputation.compileEntry Loop.output786 =
    InitE.WordStages.source850 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate786_eq
end InitE.FrontendStages.Word

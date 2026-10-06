import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data786
import InitE.WordStages.Source850
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate770
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate786_eq : InitE.WordFrontendComputation.compileEntry Loop.output786 =
    InitE.WordStages.source850 := by
  kernel_rfl
#print axioms translate786_eq
end InitE.FrontendStages.Word

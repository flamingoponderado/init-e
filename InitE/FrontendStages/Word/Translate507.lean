import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data507
import InitE.WordStages.Source571
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate491
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate507_eq : InitE.WordFrontendComputation.compileEntry Loop.output507 =
    InitE.WordStages.source571 := by
  kernel_rfl
#print axioms translate507_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data391
import InitE.WordStages.Source455
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate375
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate391_eq : InitE.WordFrontendComputation.compileEntry Loop.output391 =
    InitE.WordStages.source455 := by
  kernel_rfl
#print axioms translate391_eq
end InitE.FrontendStages.Word

import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data358
import InitE.WordStages.Source422
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate342
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate358_eq : InitE.WordFrontendComputation.compileEntry Loop.output358 =
    InitE.WordStages.source422 := by
  kernel_rfl
#print axioms translate358_eq
end InitE.FrontendStages.Word

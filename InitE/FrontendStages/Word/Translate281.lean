import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data281
import InitE.WordStages.Source345
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate265
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate281_eq : InitE.WordFrontendComputation.compileEntry Loop.output281 =
    InitE.WordStages.source345 := by
  kernel_rfl
#print axioms translate281_eq
end InitE.FrontendStages.Word

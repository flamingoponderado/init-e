import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data40
import InitE.WordStages.Source104
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate24
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate40_eq : InitE.WordFrontendComputation.compileEntry Loop.output40 =
    InitE.WordStages.source104 := by
  kernel_rfl
#print axioms translate40_eq
end InitE.FrontendStages.Word

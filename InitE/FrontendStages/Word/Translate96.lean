import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data96
import InitE.WordStages.Source160
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate80
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate96_eq : InitE.WordFrontendComputation.compileEntry Loop.output96 =
    InitE.WordStages.source160 := by
  kernel_rfl
#print axioms translate96_eq
end InitE.FrontendStages.Word

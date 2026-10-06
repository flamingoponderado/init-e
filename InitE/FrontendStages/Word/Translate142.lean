import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data142
import InitE.WordStages.Source206
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate126
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate142_eq : InitE.WordFrontendComputation.compileEntry Loop.output142 =
    InitE.WordStages.source206 := by
  kernel_rfl
#print axioms translate142_eq
end InitE.FrontendStages.Word

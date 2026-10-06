import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data248
import InitE.WordStages.Source312
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate232
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate248_eq : InitE.WordFrontendComputation.compileEntry Loop.output248 =
    InitE.WordStages.source312 := by
  kernel_rfl
#print axioms translate248_eq
end InitE.FrontendStages.Word

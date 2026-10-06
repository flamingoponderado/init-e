import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data273
import InitE.WordStages.Source337
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate257
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate273_eq : InitE.WordFrontendComputation.compileEntry Loop.output273 =
    InitE.WordStages.source337 := by
  kernel_rfl
#print axioms translate273_eq
end InitE.FrontendStages.Word

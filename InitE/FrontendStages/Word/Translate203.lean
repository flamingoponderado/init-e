import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data203
import InitE.WordStages.Source267
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate187
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate203_eq : InitE.WordFrontendComputation.compileEntry Loop.output203 =
    InitE.WordStages.source267 := by
  kernel_rfl
#print axioms translate203_eq
end InitE.FrontendStages.Word

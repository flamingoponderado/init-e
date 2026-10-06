import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data178
import InitE.WordStages.Source242
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate162
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate178_eq : InitE.WordFrontendComputation.compileEntry Loop.output178 =
    InitE.WordStages.source242 := by
  kernel_rfl
#print axioms translate178_eq
end InitE.FrontendStages.Word

import InitE.BackendStages.Padded285
import InitE.BackendStages.BytesData285
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes285_eq : (Padded285.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes285 := by
  with_unfolding_all rfl
#print axioms sectionBytes285_eq
end InitE.BackendStages

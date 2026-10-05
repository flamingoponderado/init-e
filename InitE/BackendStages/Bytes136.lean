import InitE.BackendStages.Padded136
import InitE.BackendStages.BytesData136
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes136_eq : (Padded136.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes136 := by
  with_unfolding_all rfl
#print axioms sectionBytes136_eq
end InitE.BackendStages

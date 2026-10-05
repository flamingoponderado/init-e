import InitE.BackendStages.Padded180
import InitE.BackendStages.BytesData180
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes180_eq : (Padded180.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes180 := by
  with_unfolding_all rfl
#print axioms sectionBytes180_eq
end InitE.BackendStages

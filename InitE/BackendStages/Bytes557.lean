import InitE.BackendStages.Padded557
import InitE.BackendStages.BytesData557
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes557_eq : (Padded557.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes557 := by
  with_unfolding_all rfl
#print axioms sectionBytes557_eq
end InitE.BackendStages

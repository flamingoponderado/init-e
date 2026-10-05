import InitE.BackendStages.Padded403
import InitE.BackendStages.BytesData403
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes403_eq : (Padded403.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes403 := by
  with_unfolding_all rfl
#print axioms sectionBytes403_eq
end InitE.BackendStages

import InitE.BackendStages.Padded305
import InitE.BackendStages.BytesData305
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes305_eq : (Padded305.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes305 := by
  with_unfolding_all rfl
#print axioms sectionBytes305_eq
end InitE.BackendStages

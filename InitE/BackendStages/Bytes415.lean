import InitE.BackendStages.Padded415
import InitE.BackendStages.BytesData415
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes415_eq : (Padded415.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes415 := by
  with_unfolding_all rfl
#print axioms sectionBytes415_eq
end InitE.BackendStages

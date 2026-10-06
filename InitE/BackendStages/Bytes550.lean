import InitE.BackendStages.Padded550
import InitE.BackendStages.BytesData550
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes550_eq : (Padded550.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes550 := by
  with_unfolding_all rfl
#print axioms sectionBytes550_eq
end InitE.BackendStages

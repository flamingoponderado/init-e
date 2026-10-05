import InitE.BackendStages.Padded483
import InitE.BackendStages.BytesData483
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes483_eq : (Padded483.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes483 := by
  with_unfolding_all rfl
#print axioms sectionBytes483_eq
end InitE.BackendStages

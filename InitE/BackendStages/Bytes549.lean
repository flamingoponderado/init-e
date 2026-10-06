import InitE.BackendStages.Padded549
import InitE.BackendStages.BytesData549
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes549_eq : (Padded549.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes549 := by
  with_unfolding_all rfl
#print axioms sectionBytes549_eq
end InitE.BackendStages

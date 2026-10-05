import InitE.BackendStages.Padded801
import InitE.BackendStages.BytesData801
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes801_eq : (Padded801.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes801 := by
  with_unfolding_all rfl
#print axioms sectionBytes801_eq
end InitE.BackendStages

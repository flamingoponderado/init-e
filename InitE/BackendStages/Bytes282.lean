import InitE.BackendStages.Padded282
import InitE.BackendStages.BytesData282
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes282_eq : (Padded282.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes282 := by
  with_unfolding_all rfl
#print axioms sectionBytes282_eq
end InitE.BackendStages

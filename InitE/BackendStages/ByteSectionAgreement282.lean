import InitE.BackendStages.BytesData282
import InitE.BackendStages.BytePiecesData282
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section282_eq : ByteData.bytes282 = [piece282_0].flatten := by
  rw [piece282_0_eq]
  rfl
#print axioms section282_eq
end InitE.BackendStages.BytePieces

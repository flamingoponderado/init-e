import InitE.BackendStages.BytesData501
import InitE.BackendStages.BytePiecesData501
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section501_eq : ByteData.bytes501 = [piece501_0].flatten := by
  rw [piece501_0_eq]
  rfl
#print axioms section501_eq
end InitE.BackendStages.BytePieces

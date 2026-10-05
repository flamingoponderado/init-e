import InitE.BackendStages.BytesData503
import InitE.BackendStages.BytePiecesData503
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section503_eq : ByteData.bytes503 = [piece503_0, piece503_1].flatten := by
  rw [piece503_0_eq, piece503_1_eq]
  rfl
#print axioms section503_eq
end InitE.BackendStages.BytePieces

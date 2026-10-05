import InitE.BackendStages.BytesData840
import InitE.BackendStages.BytePiecesData840
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section840_eq : ByteData.bytes840 = [piece840_0].flatten := by
  rw [piece840_0_eq]
  rfl
#print axioms section840_eq
end InitE.BackendStages.BytePieces

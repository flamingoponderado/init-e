import InitE.BackendStages.BytesData181
import InitE.BackendStages.BytePiecesData181
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section181_eq : ByteData.bytes181 = [piece181_0].flatten := by
  rw [piece181_0_eq]
  rfl
#print axioms section181_eq
end InitE.BackendStages.BytePieces

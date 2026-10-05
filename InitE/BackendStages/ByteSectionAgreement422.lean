import InitE.BackendStages.BytesData422
import InitE.BackendStages.BytePiecesData422
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section422_eq : ByteData.bytes422 = [piece422_0, piece422_1].flatten := by
  rw [piece422_0_eq, piece422_1_eq]
  rfl
#print axioms section422_eq
end InitE.BackendStages.BytePieces

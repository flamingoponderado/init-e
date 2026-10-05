import InitE.BackendStages.BytesData490
import InitE.BackendStages.BytePiecesData490
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section490_eq : ByteData.bytes490 = [piece490_0].flatten := by
  rw [piece490_0_eq]
  rfl
#print axioms section490_eq
end InitE.BackendStages.BytePieces

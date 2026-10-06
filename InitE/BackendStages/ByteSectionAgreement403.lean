import InitE.BackendStages.BytesData403
import InitE.BackendStages.BytePiecesData403
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section403_eq : ByteData.bytes403 = [piece403_0, piece403_1].flatten := by
  rw [piece403_0_eq, piece403_1_eq]
  rfl
#print axioms section403_eq
end InitE.BackendStages.BytePieces

import InitE.BackendStages.BytesData317
import InitE.BackendStages.BytePiecesData317
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section317_eq : ByteData.bytes317 = [piece317_0, piece317_1].flatten := by
  rw [piece317_0_eq, piece317_1_eq]
  rfl
#print axioms section317_eq
end InitE.BackendStages.BytePieces

import InitE.BackendStages.BytesData255
import InitE.BackendStages.BytePiecesData255
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section255_eq : ByteData.bytes255 = [piece255_0, piece255_1].flatten := by
  rw [piece255_0_eq, piece255_1_eq]
  rfl
#print axioms section255_eq
end InitE.BackendStages.BytePieces

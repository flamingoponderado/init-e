import InitE.BackendStages.BytesData666
import InitE.BackendStages.BytePiecesData666
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section666_eq : ByteData.bytes666 = [piece666_0, piece666_1].flatten := by
  rw [piece666_0_eq, piece666_1_eq]
  rfl
#print axioms section666_eq
end InitE.BackendStages.BytePieces

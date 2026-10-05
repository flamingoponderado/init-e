import InitE.BackendStages.BytesData885
import InitE.BackendStages.BytePiecesData885
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section885_eq : ByteData.bytes885 = [piece885_0].flatten := by
  rw [piece885_0_eq]
  rfl
#print axioms section885_eq
end InitE.BackendStages.BytePieces

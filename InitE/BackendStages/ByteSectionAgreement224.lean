import InitE.BackendStages.BytesData224
import InitE.BackendStages.BytePiecesData224
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section224_eq : ByteData.bytes224 = [piece224_0].flatten := by
  rw [piece224_0_eq]
  rfl
#print axioms section224_eq
end InitE.BackendStages.BytePieces

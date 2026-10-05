import InitE.BackendStages.BytesData401
import InitE.BackendStages.BytePiecesData401
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section401_eq : ByteData.bytes401 = [piece401_0].flatten := by
  rw [piece401_0_eq]
  rfl
#print axioms section401_eq
end InitE.BackendStages.BytePieces

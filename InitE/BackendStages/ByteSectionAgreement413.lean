import InitE.BackendStages.BytesData413
import InitE.BackendStages.BytePiecesData413
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section413_eq : ByteData.bytes413 = [piece413_0].flatten := by
  rw [piece413_0_eq]
  rfl
#print axioms section413_eq
end InitE.BackendStages.BytePieces

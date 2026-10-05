import InitE.BackendStages.BytesData192
import InitE.BackendStages.BytePiecesData192
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section192_eq : ByteData.bytes192 = [piece192_0].flatten := by
  rw [piece192_0_eq]
  rfl
#print axioms section192_eq
end InitE.BackendStages.BytePieces

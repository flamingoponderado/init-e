import InitE.BackendStages.BytesData156
import InitE.BackendStages.BytePiecesData156
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section156_eq : ByteData.bytes156 = [piece156_0].flatten := by
  rw [piece156_0_eq]
  rfl
#print axioms section156_eq
end InitE.BackendStages.BytePieces

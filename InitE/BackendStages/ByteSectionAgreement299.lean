import InitE.BackendStages.BytesData299
import InitE.BackendStages.BytePiecesData299
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section299_eq : ByteData.bytes299 = [piece299_0].flatten := by
  rw [piece299_0_eq]
  rfl
#print axioms section299_eq
end InitE.BackendStages.BytePieces

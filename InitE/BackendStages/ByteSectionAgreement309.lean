import InitE.BackendStages.BytesData309
import InitE.BackendStages.BytePiecesData309
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section309_eq : ByteData.bytes309 = [piece309_0].flatten := by
  rw [piece309_0_eq]
  rfl
#print axioms section309_eq
end InitE.BackendStages.BytePieces

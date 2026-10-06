import InitE.BackendStages.BytesData341
import InitE.BackendStages.BytePiecesData341
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section341_eq : ByteData.bytes341 = [piece341_0].flatten := by
  rw [piece341_0_eq]
  rfl
#print axioms section341_eq
end InitE.BackendStages.BytePieces

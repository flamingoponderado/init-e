import InitE.BackendStages.BytesData371
import InitE.BackendStages.BytePiecesData371
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section371_eq : ByteData.bytes371 = [piece371_0].flatten := by
  rw [piece371_0_eq]
  rfl
#print axioms section371_eq
end InitE.BackendStages.BytePieces

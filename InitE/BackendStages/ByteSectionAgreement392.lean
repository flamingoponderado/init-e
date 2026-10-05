import InitE.BackendStages.BytesData392
import InitE.BackendStages.BytePiecesData392
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section392_eq : ByteData.bytes392 = [piece392_0].flatten := by
  rw [piece392_0_eq]
  rfl
#print axioms section392_eq
end InitE.BackendStages.BytePieces

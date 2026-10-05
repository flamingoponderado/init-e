import InitE.BackendStages.BytesData481
import InitE.BackendStages.BytePiecesData481
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section481_eq : ByteData.bytes481 = [piece481_0].flatten := by
  rw [piece481_0_eq]
  rfl
#print axioms section481_eq
end InitE.BackendStages.BytePieces

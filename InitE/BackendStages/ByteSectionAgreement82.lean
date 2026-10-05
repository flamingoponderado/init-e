import InitE.BackendStages.BytesData82
import InitE.BackendStages.BytePiecesData82
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section82_eq : ByteData.bytes82 = [piece82_0].flatten := by
  rw [piece82_0_eq]
  rfl
#print axioms section82_eq
end InitE.BackendStages.BytePieces

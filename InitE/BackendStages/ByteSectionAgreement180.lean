import InitE.BackendStages.BytesData180
import InitE.BackendStages.BytePiecesData180
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section180_eq : ByteData.bytes180 = [piece180_0].flatten := by
  rw [piece180_0_eq]
  rfl
#print axioms section180_eq
end InitE.BackendStages.BytePieces

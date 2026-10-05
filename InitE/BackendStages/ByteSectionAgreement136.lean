import InitE.BackendStages.BytesData136
import InitE.BackendStages.BytePiecesData136
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section136_eq : ByteData.bytes136 = [piece136_0].flatten := by
  rw [piece136_0_eq]
  rfl
#print axioms section136_eq
end InitE.BackendStages.BytePieces

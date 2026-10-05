import InitE.BackendStages.BytesData474
import InitE.BackendStages.BytePiecesData474
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section474_eq : ByteData.bytes474 = [piece474_0, piece474_1].flatten := by
  rw [piece474_0_eq, piece474_1_eq]
  rfl
#print axioms section474_eq
end InitE.BackendStages.BytePieces

import InitE.BackendStages.BytesData430
import InitE.BackendStages.BytePiecesData430
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section430_eq : ByteData.bytes430 = [piece430_0].flatten := by
  rw [piece430_0_eq]
  rfl
#print axioms section430_eq
end InitE.BackendStages.BytePieces

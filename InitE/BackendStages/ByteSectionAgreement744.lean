import InitE.BackendStages.BytesData744
import InitE.BackendStages.BytePiecesData744
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section744_eq : ByteData.bytes744 = [piece744_0].flatten := by
  rw [piece744_0_eq]
  rfl
#print axioms section744_eq
end InitE.BackendStages.BytePieces

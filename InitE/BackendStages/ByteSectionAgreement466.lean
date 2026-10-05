import InitE.BackendStages.BytesData466
import InitE.BackendStages.BytePiecesData466
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section466_eq : ByteData.bytes466 = [piece466_0].flatten := by
  rw [piece466_0_eq]
  rfl
#print axioms section466_eq
end InitE.BackendStages.BytePieces

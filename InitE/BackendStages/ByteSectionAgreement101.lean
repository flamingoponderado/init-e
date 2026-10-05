import InitE.BackendStages.BytesData101
import InitE.BackendStages.BytePiecesData101
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section101_eq : ByteData.bytes101 = [piece101_0].flatten := by
  rw [piece101_0_eq]
  rfl
#print axioms section101_eq
end InitE.BackendStages.BytePieces

import InitE.BackendStages.BytesData155
import InitE.BackendStages.BytePiecesData155
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section155_eq : ByteData.bytes155 = [piece155_0, piece155_1].flatten := by
  rw [piece155_0_eq, piece155_1_eq]
  rfl
#print axioms section155_eq
end InitE.BackendStages.BytePieces

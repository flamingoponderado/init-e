import InitE.BackendStages.BytesData569
import InitE.BackendStages.BytePiecesData569
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section569_eq : ByteData.bytes569 = [piece569_0, piece569_1].flatten := by
  rw [piece569_0_eq, piece569_1_eq]
  rfl
#print axioms section569_eq
end InitE.BackendStages.BytePieces

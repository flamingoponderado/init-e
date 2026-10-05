import InitE.BackendStages.BytesData519
import InitE.BackendStages.BytePiecesData519
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section519_eq : ByteData.bytes519 = [piece519_0, piece519_1].flatten := by
  rw [piece519_0_eq, piece519_1_eq]
  rfl
#print axioms section519_eq
end InitE.BackendStages.BytePieces

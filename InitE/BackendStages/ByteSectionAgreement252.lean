import InitE.BackendStages.BytesData252
import InitE.BackendStages.BytePiecesData252
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section252_eq : ByteData.bytes252 = [piece252_0].flatten := by
  rw [piece252_0_eq]
  rfl
#print axioms section252_eq
end InitE.BackendStages.BytePieces

import InitE.BackendStages.BytesData499
import InitE.BackendStages.BytePiecesData499
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section499_eq : ByteData.bytes499 = [piece499_0].flatten := by
  rw [piece499_0_eq]
  rfl
#print axioms section499_eq
end InitE.BackendStages.BytePieces

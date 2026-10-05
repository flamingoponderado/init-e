import InitE.BackendStages.BytesData429
import InitE.BackendStages.BytePiecesData429
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section429_eq : ByteData.bytes429 = [piece429_0, piece429_1].flatten := by
  rw [piece429_0_eq, piece429_1_eq]
  rfl
#print axioms section429_eq
end InitE.BackendStages.BytePieces

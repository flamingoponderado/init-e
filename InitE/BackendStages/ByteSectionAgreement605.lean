import InitE.BackendStages.BytesData605
import InitE.BackendStages.BytePiecesData605
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section605_eq : ByteData.bytes605 = [piece605_0, piece605_1].flatten := by
  rw [piece605_0_eq, piece605_1_eq]
  rfl
#print axioms section605_eq
end InitE.BackendStages.BytePieces

import InitE.BackendStages.BytesData76
import InitE.BackendStages.BytePiecesData76
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section76_eq : ByteData.bytes76 = [piece76_0].flatten := by
  rw [piece76_0_eq]
  rfl
#print axioms section76_eq
end InitE.BackendStages.BytePieces

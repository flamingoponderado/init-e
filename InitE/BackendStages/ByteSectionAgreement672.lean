import InitE.BackendStages.BytesData672
import InitE.BackendStages.BytePiecesData672
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section672_eq : ByteData.bytes672 = [piece672_0].flatten := by
  rw [piece672_0_eq]
  rfl
#print axioms section672_eq
end InitE.BackendStages.BytePieces

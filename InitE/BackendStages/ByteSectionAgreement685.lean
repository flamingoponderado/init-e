import InitE.BackendStages.BytesData685
import InitE.BackendStages.BytePiecesData685
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section685_eq : ByteData.bytes685 = [piece685_0].flatten := by
  rw [piece685_0_eq]
  rfl
#print axioms section685_eq
end InitE.BackendStages.BytePieces

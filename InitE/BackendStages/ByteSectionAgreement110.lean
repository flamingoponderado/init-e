import InitE.BackendStages.BytesData110
import InitE.BackendStages.BytePiecesData110
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section110_eq : ByteData.bytes110 = [piece110_0].flatten := by
  rw [piece110_0_eq]
  rfl
#print axioms section110_eq
end InitE.BackendStages.BytePieces

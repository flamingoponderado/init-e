import InitE.BackendStages.BytesData102
import InitE.BackendStages.BytePiecesData102
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section102_eq : ByteData.bytes102 = [piece102_0].flatten := by
  rw [piece102_0_eq]
  rfl
#print axioms section102_eq
end InitE.BackendStages.BytePieces

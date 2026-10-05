import InitE.BackendStages.BytesData681
import InitE.BackendStages.BytePiecesData681
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section681_eq : ByteData.bytes681 = [piece681_0].flatten := by
  rw [piece681_0_eq]
  rfl
#print axioms section681_eq
end InitE.BackendStages.BytePieces

import InitE.BackendStages.BytesData170
import InitE.BackendStages.BytePiecesData170
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section170_eq : ByteData.bytes170 = [piece170_0].flatten := by
  rw [piece170_0_eq]
  rfl
#print axioms section170_eq
end InitE.BackendStages.BytePieces

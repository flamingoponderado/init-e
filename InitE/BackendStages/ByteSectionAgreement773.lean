import InitE.BackendStages.BytesData773
import InitE.BackendStages.BytePiecesData773
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section773_eq : ByteData.bytes773 = [piece773_0].flatten := by
  rw [piece773_0_eq]
  rfl
#print axioms section773_eq
end InitE.BackendStages.BytePieces

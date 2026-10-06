import InitE.BackendStages.BytesData266
import InitE.BackendStages.BytePiecesData266
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section266_eq : ByteData.bytes266 = [piece266_0, piece266_1].flatten := by
  rw [piece266_0_eq, piece266_1_eq]
  rfl
#print axioms section266_eq
end InitE.BackendStages.BytePieces

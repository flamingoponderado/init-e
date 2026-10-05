import InitE.BackendStages.BytesData164
import InitE.BackendStages.BytePiecesData164
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section164_eq : ByteData.bytes164 = [piece164_0].flatten := by
  rw [piece164_0_eq]
  rfl
#print axioms section164_eq
end InitE.BackendStages.BytePieces

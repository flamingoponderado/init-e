import InitE.BackendStages.BytesData865
import InitE.BackendStages.BytePiecesData865
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section865_eq : ByteData.bytes865 = [piece865_0].flatten := by
  rw [piece865_0_eq]
  rfl
#print axioms section865_eq
end InitE.BackendStages.BytePieces

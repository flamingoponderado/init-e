import InitE.BackendStages.BytesData199
import InitE.BackendStages.BytePiecesData199
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section199_eq : ByteData.bytes199 = [piece199_0, piece199_1].flatten := by
  rw [piece199_0_eq, piece199_1_eq]
  rfl
#print axioms section199_eq
end InitE.BackendStages.BytePieces

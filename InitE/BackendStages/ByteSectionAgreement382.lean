import InitE.BackendStages.BytesData382
import InitE.BackendStages.BytePiecesData382
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section382_eq : ByteData.bytes382 = [piece382_0].flatten := by
  rw [piece382_0_eq]
  rfl
#print axioms section382_eq
end InitE.BackendStages.BytePieces

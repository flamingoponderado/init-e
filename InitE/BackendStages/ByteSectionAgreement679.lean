import InitE.BackendStages.BytesData679
import InitE.BackendStages.BytePiecesData679
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section679_eq : ByteData.bytes679 = [piece679_0].flatten := by
  rw [piece679_0_eq]
  rfl
#print axioms section679_eq
end InitE.BackendStages.BytePieces

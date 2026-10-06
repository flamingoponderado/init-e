import InitE.BackendStages.BytesData640
import InitE.BackendStages.BytePiecesData640
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section640_eq : ByteData.bytes640 = [piece640_0].flatten := by
  rw [piece640_0_eq]
  rfl
#print axioms section640_eq
end InitE.BackendStages.BytePieces

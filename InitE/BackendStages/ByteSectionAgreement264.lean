import InitE.BackendStages.BytesData264
import InitE.BackendStages.BytePiecesData264
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section264_eq : ByteData.bytes264 = [piece264_0].flatten := by
  rw [piece264_0_eq]
  rfl
#print axioms section264_eq
end InitE.BackendStages.BytePieces

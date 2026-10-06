import InitE.BackendStages.BytesData135
import InitE.BackendStages.BytePiecesData135
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section135_eq : ByteData.bytes135 = [piece135_0].flatten := by
  rw [piece135_0_eq]
  rfl
#print axioms section135_eq
end InitE.BackendStages.BytePieces

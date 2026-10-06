import InitE.BackendStages.BytesData223
import InitE.BackendStages.BytePiecesData223
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section223_eq : ByteData.bytes223 = [piece223_0].flatten := by
  rw [piece223_0_eq]
  rfl
#print axioms section223_eq
end InitE.BackendStages.BytePieces

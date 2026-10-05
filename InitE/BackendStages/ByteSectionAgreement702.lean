import InitE.BackendStages.BytesData702
import InitE.BackendStages.BytePiecesData702
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section702_eq : ByteData.bytes702 = [piece702_0, piece702_1].flatten := by
  rw [piece702_0_eq, piece702_1_eq]
  rfl
#print axioms section702_eq
end InitE.BackendStages.BytePieces

import InitE.BackendStages.BytesData703
import InitE.BackendStages.BytePiecesData703
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section703_eq : ByteData.bytes703 = [piece703_0, piece703_1].flatten := by
  rw [piece703_0_eq, piece703_1_eq]
  rfl
#print axioms section703_eq
end InitE.BackendStages.BytePieces

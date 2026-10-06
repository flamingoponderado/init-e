import InitE.BackendStages.BytesData140
import InitE.BackendStages.BytePiecesData140
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section140_eq : ByteData.bytes140 = [piece140_0, piece140_1].flatten := by
  rw [piece140_0_eq, piece140_1_eq]
  rfl
#print axioms section140_eq
end InitE.BackendStages.BytePieces

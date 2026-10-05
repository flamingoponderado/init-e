import InitE.BackendStages.BytesData412
import InitE.BackendStages.BytePiecesData412
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section412_eq : ByteData.bytes412 = [piece412_0, piece412_1].flatten := by
  rw [piece412_0_eq, piece412_1_eq]
  rfl
#print axioms section412_eq
end InitE.BackendStages.BytePieces

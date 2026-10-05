import InitE.BackendStages.BytesData132
import InitE.BackendStages.BytePiecesData132
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section132_eq : ByteData.bytes132 = [piece132_0].flatten := by
  rw [piece132_0_eq]
  rfl
#print axioms section132_eq
end InitE.BackendStages.BytePieces

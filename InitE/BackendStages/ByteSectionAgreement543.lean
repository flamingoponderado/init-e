import InitE.BackendStages.BytesData543
import InitE.BackendStages.BytePiecesData543
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section543_eq : ByteData.bytes543 = [piece543_0].flatten := by
  rw [piece543_0_eq]
  rfl
#print axioms section543_eq
end InitE.BackendStages.BytePieces

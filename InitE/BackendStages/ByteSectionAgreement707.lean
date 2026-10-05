import InitE.BackendStages.BytesData707
import InitE.BackendStages.BytePiecesData707
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section707_eq : ByteData.bytes707 = [piece707_0].flatten := by
  rw [piece707_0_eq]
  rfl
#print axioms section707_eq
end InitE.BackendStages.BytePieces

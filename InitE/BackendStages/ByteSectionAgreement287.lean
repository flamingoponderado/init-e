import InitE.BackendStages.BytesData287
import InitE.BackendStages.BytePiecesData287
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section287_eq : ByteData.bytes287 = [piece287_0, piece287_1].flatten := by
  rw [piece287_0_eq, piece287_1_eq]
  rfl
#print axioms section287_eq
end InitE.BackendStages.BytePieces

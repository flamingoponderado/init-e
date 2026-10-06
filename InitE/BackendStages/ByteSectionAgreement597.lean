import InitE.BackendStages.BytesData597
import InitE.BackendStages.BytePiecesData597
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section597_eq : ByteData.bytes597 = [piece597_0, piece597_1, piece597_2, piece597_3].flatten := by
  rw [piece597_0_eq, piece597_1_eq, piece597_2_eq, piece597_3_eq]
  rfl
#print axioms section597_eq
end InitE.BackendStages.BytePieces

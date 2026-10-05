import InitE.BackendStages.BytesData598
import InitE.BackendStages.BytePiecesData598
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section598_eq : ByteData.bytes598 = [piece598_0, piece598_1].flatten := by
  rw [piece598_0_eq, piece598_1_eq]
  rfl
#print axioms section598_eq
end InitE.BackendStages.BytePieces

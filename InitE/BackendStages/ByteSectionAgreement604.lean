import InitE.BackendStages.BytesData604
import InitE.BackendStages.BytePiecesData604
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section604_eq : ByteData.bytes604 = [piece604_0].flatten := by
  rw [piece604_0_eq]
  rfl
#print axioms section604_eq
end InitE.BackendStages.BytePieces

import InitE.BackendStages.BytesData526
import InitE.BackendStages.BytePiecesData526
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section526_eq : ByteData.bytes526 = [piece526_0].flatten := by
  rw [piece526_0_eq]
  rfl
#print axioms section526_eq
end InitE.BackendStages.BytePieces

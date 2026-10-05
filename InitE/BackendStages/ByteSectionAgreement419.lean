import InitE.BackendStages.BytesData419
import InitE.BackendStages.BytePiecesData419
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section419_eq : ByteData.bytes419 = [piece419_0].flatten := by
  rw [piece419_0_eq]
  rfl
#print axioms section419_eq
end InitE.BackendStages.BytePieces

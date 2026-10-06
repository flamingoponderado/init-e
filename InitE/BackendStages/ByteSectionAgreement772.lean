import InitE.BackendStages.BytesData772
import InitE.BackendStages.BytePiecesData772
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section772_eq : ByteData.bytes772 = [piece772_0].flatten := by
  rw [piece772_0_eq]
  rfl
#print axioms section772_eq
end InitE.BackendStages.BytePieces

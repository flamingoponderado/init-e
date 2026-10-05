import InitE.BackendStages.BytesData456
import InitE.BackendStages.BytePiecesData456
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section456_eq : ByteData.bytes456 = [piece456_0, piece456_1].flatten := by
  rw [piece456_0_eq, piece456_1_eq]
  rfl
#print axioms section456_eq
end InitE.BackendStages.BytePieces

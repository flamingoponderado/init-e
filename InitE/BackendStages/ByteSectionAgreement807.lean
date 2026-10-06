import InitE.BackendStages.BytesData807
import InitE.BackendStages.BytePiecesData807
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section807_eq : ByteData.bytes807 = [piece807_0, piece807_1].flatten := by
  rw [piece807_0_eq, piece807_1_eq]
  rfl
#print axioms section807_eq
end InitE.BackendStages.BytePieces

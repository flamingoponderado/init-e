import InitE.BackendStages.BytesData504
import InitE.BackendStages.BytePiecesData504
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section504_eq : ByteData.bytes504 = [piece504_0].flatten := by
  rw [piece504_0_eq]
  rfl
#print axioms section504_eq
end InitE.BackendStages.BytePieces

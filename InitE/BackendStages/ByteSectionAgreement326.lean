import InitE.BackendStages.BytesData326
import InitE.BackendStages.BytePiecesData326
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section326_eq : ByteData.bytes326 = [piece326_0, piece326_1].flatten := by
  rw [piece326_0_eq, piece326_1_eq]
  rfl
#print axioms section326_eq
end InitE.BackendStages.BytePieces
